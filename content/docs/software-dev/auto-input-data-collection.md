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










Categories: [Software Dev]({{< relref "/" >}}?Software-Dev=true)

Backlinks: 