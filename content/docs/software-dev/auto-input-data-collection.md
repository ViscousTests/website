# Auto Input Data Collection

Frequently when I am debugging code, I will make some changes to a single
function, then re-run tests that call my function as well as many others above
it in the stack. If there are few large tests, they make take a long time doing
lots of computations that I don't care about in the process of testing my
function.

One solution to this is to write unit tests that test every function. This is
usually a big waste of time (or at least easily perceived as such), since most
functions will probably never be broken, especially if they are kept small. 

Another solution is to use a debugger, and stop execution of your program at
the function in question and use the context from the debugger to fix the
problem. The few times when I have used a debugger, I've been bothered by the
fact that in order to test new changes to my function, I need to re-run
everything all over again. Effectively, I haven't seen much difference for
myself between a debugger and use using log/print statements.

It would be really neat if I could run my program with a special flag that
collects all inputs passed to all functions and stores them somewhere
automatically. Then, when testing my function I could run ONLY my function in
isolation with the collected inputs, without having to construct them myself
(e.g. in a unit test). 

This system could also try to generate unit tests with this data, but that
might get messy. Probably the best way to do this is have this system assist
unit test generation by starting you out with example data that can be tuned.

I imagine interacting with this stored data in an editor. With your cursor in a
function, you would hit a hotkey and the function would be run with the last
input (or N inputs) that it saw during its last execution, showing you the
return value and any print/log statement outputs.

Probably this is much easier to implement (or much more likely to already
exist) in an interpreted language like Python or Javascript.

This could also make reading code much easier, as example data would be just a
hotkey away.

This is similar to using a REPL in Clojure with generative test case-ing via
spec, but crucially captures data that causes errors in a real run of the
program (unlike Clojure with a REPL and random data).

<details>
<summary>
Conversation sparked by this:
</summary>

```
Tanner Young, Jan 19, 2022, 3:52 PM
> One solution to this is to write unit tests that test every function.
This is usually a big waste of time (or at least easily perceived as such),
since most functions will probably never be broken, especially if they are kept
small.

Spicy take on that one.

I think the problem you are running against is that you want to define your
code, then write your tests to verify it doesn't change (correctness regression
checking).
I'd assert this is the wrong way to approach testing behavior.
You should consider reading on
https://en.wikipedia.org/wiki/Behavior-driven_development (a off-shoot of TDD)
in which you write tests of API behavior before writing the code itself.
If you can change your code without failing your tests, then by definition it is
correct.

Kovas Palunas, Jan 19, 2022, 4:09 PM
i know 😛 I didn't feel like being more nuanced as I was getting this off my head. 

You're right that some form of TDD would solve this problem.
But if you are not doing TDD this would be nice.
I feel like the pros and cons of TDD are a big rabbit hole that might be fun to
discuss more (perhaps in the programming discussion group?).
I guess I'll just say that I have done a LOT more non-TDD programming than TDD
programming, but maybe that's just me

Tim Ford, Jan 19, 2022, 4:11 PM
I think Tanner's response only begs the question of which API you're testing.
At which level.
Are you doing BDD on the interfaces between large subsystems?
Only on your public API  (what which point your space of possible inputs/ouputs
is ~infinite)?
If you squint right, a unit test on a function is BDD applied to the interface
of that specific function.

Kovas Palunas, Jan 19, 2022, 4:11 PM, Edited
Also to clarify, if you are doing some kind of test driven development where you
have only high level public interface tests written first (maybe this is BDD?)
you would still be writing nested functions without tests

Andrew Stewart, Jan 19, 2022, 4:11 PM
I wouldn't say I do much BDD / TDD, but a lack of unit tests is a major code smell

+1 to what Tim said, depends a lot on which layer you're testing or not testing

Kovas Palunas, Jan 19, 2022, 4:12 PM
the inspiration for my idea was to smooth the code writing/reading process, NOT
to replace unit tests

just to be clear

Tim Ford, Jan 19, 2022, 4:13 PM
To Kovas's initial question...
I've thought about this very thing too Kovas.
I think you could implement such a thing very similarly to how we do image diff
testing with SCUBA.
Specifically, the tooling helps A LOT in the ergonomics of accepting desired
changes that might effect lots of "goldens", showing diffs between "goldens" and
variants, etc.

Kovas Palunas, Jan 19, 2022, 4:14 PM
isn't SCUBA just helping interpret test results at a very high level tho?
what if it takes 20+ seconds for your scuba test to run?

(i haven't used SCUBA, so maybe it's faster)

Tanner Young, Jan 19, 2022, 4:16 PM
I suppose my assertion is that if you have code which isn't tested then there is
literally no definition of correct except for the behavior as written, which
becomes also correct when changed in arbitrary ways.

If you are debugging something you are trying to figure out why it is not
correct, but you should have an assertion that it is indeed not correct before
you attempt to "fix" the code

Tim Ford, Jan 19, 2022, 4:16 PM
Actually my idea is different from yours.
Youre talking about saving off the inputs.
I was talking about saving off the outputs.

Take all the tests we do which EXPECT protos to have certain fields.
I've wondered...
what if we just dumped all the wanted protos to text format in a file...
and then saved that file as a golden, and used diff tools to see the difference?
The benefit is you avoid having to have written all those test cases.

Then add proto-level annotations in order to automatically ignore fields that
can change (e.g. timestamps)

Sorry to take it off track 😀

Tanner Young, Jan 19, 2022, 4:18 PM
Practically speaking though, I think you could look up auto-generated
parameterized unit tests to match the idea you've had

Tim Ford, Jan 19, 2022, 4:20 PM
yeah

Andrew Stewart, Jan 19, 2022, 4:21 PM
It's not a mechanism for capturing inputs, but stuff like
google3/testing/production_stub/public/testvalue.h does allow tests to inject
values in tests that might otherwise be difficult

Tanner Young, Jan 19, 2022, 4:22 PM
At my old company we would use a system of input generators which were called
"Arbitrary[x]" which would generate an arbitrary instance of X.
This is similar to proto generators I suppose, but slightly more nuanced in that
you could define what an arbitrary instance looks like and relationships between
data on it.
Then when you tested the interface, you would construct said arbitrary instance
of your inputs with constraints on specific things you cared about, and very
ergonomically write unit tests in a BDD fashion (with associated language)

See https://www.scalatest.org/user_guide/generator_driven_property_checks if you
are interested; I very much like that style of testing

and https://www.scala-exercises.org/scalacheck/arbitrary

Kovas Palunas, Jan 19, 2022, 4:26 PM
Here's a more concrete example of how I think this would be useful:

You're debugging a flaky error in a program that normally takes a while to run.  You could: 
(1) Run the program with a debugger/print statements multiple times to try to
triangulate what function is causing the error so you can reproduce the issue in
a unit test, then fix the function.
(2) With this idea, you run the program once, then run individual functions with
the saved input data until you find the problem, write your test, and fix it.

In case (2) there is less waiting and more interactive development

Tim Ford, Jan 19, 2022, 4:26 PM
@Tanner Young Would that be similar to adding lots of assert statements that
check that certain relationships between your data hold, and then feeding in
arbitrary data?

Tanner Young, Jan 19, 2022, 4:27 PM
@Tim Ford  in implementation no; it does not generate random data and then
verify assertions on it.
You instead write your own generator using more basic building blocks (like
other generators).

> You're debugging a flaky error in a program that normally takes a while to run.  You could: 

Just use the original flake error, no?

Kovas Palunas, Jan 19, 2022, 4:29 PM
but what if you're not sure which function is causing the error?

Tanner Young, Jan 19, 2022, 4:29 PM
I guess it depends, I was only thinking about test execution order as a source
of flake (which can be reproduced), doesn't work for thread locking errors

Tim Ford, Jan 19, 2022, 4:29 PM
@Kovas Palunas I guess I see what you're saying...
in practice, in such scenarios, I think I usually find a place where a test
should be but isn't.
or where a test is wrong or incomplete

Kovas Palunas, Jan 19, 2022, 4:29 PM
i agree, but finding the root cause has to be done before you can write the missing test

Tanner Young, Jan 19, 2022, 4:29 PM
This is especially difficult for classes of parallel execution errors..

Kovas Palunas, Jan 19, 2022, 4:29 PM
yep that's true

Tim Ford, Jan 19, 2022, 4:39 PM
yeah...
if you could replay all sources of input to the program (not individual
functions), then you could attach a debugger, set whatever breakpoints you might
want, and then replay.
In a past game development job we did something like that.
But with parallelism issues, the kernel's scheduling decisions are inputs, and
you have subtle timing issues too...
so yeah, it could not handle that kind of thing

I think that class of issue is better handled with something like TSan or Rust

static or dynamic data race detection/prevention

Tanner Young, Jan 19, 2022, 4:39 PM
> I think that class of issue is better handled with something like TSan or Rust

Now we're talking...

Andrew Stewart, Jan 19, 2022, 4:59 PM
Not explicitly related to the topic, but http://go/atomic-danger talks about some things that are difficult to test

David Poliakoff, Jan 20, 2022, 7:42 AM
Another use case for this was at my last job, we often couldn't share entire
sensitive codes or inputs externally, but could share security-reviewed
snippets.
So we would often write code that would wrap functions, typically at a library
boundary, and record inputs.
Then we would be able to relaunch functions with those given inputs.

 It turned out to be pretty expensive to do in practice.
 Personally I'm of an "if you can test it, do test it" mentality.
 There were also efforts in resilience, though, which could detect whether the
 same execution of a kernel/function could produce substantively different
 outputs, if you're looking for nondeterminism.
```
</details>

Categories: [Software Dev]({{< relref "/" >}}?Software-Dev=true)