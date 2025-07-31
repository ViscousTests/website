# Mixing Milk Tea

Given a glass of tea and a glass of (almond) milk, each 9/10ths full, how many
times would you need to mix the glasses for each to contain a 50% mixture of tea
and milk?

This python code:

```
max_size = 10
a_volume, a_tea_fraction = 9, 1.0
b_volume, b_tea_fraction = 9, 0.0
mixes = 0
while a_tea_fraction > 0.51:
 mixes += 1
 print(mixes, a_tea_fraction, b_tea_fraction)
 if a_volume != max_size:
   # Mix B into A
   amount_transferred = max_size - a_volume
   a_tea_fraction = (a_volume * a_tea_fraction
                     + amount_transferred * b_tea_fraction) / max_size
   a_volume = max_size
   b_volume -= amount_transferred
 else:
   # Mix A into B
   amount_transferred = max_size - b_volume
   b_tea_fraction = (b_volume * b_tea_fraction
                     + amount_transferred * a_tea_fraction) / max_size
   b_volume = max_size
   a_volume -= amount_transferred
```

says this:

```
1 1.0 0.0
2 0.9 0.0
3 0.9 0.18
4 0.756 0.18
5 0.756 0.2952
6 0.66384 0.2952
7 0.66384 0.36892800000000003
8 0.6048576 0.36892800000000003
9 0.6048576 0.41611392
10 0.5671088639999999 0.41611392
11 0.5671088639999999 0.4463129088000001
12 0.54294967296 0.4463129088000001
13 0.54294967296 0.465640261632
14 0.5274877906944 0.465640261632
15 0.5274877906944 0.47800976744448
16 0.517592186044416 0.47800976744448
17 0.517592186044416 0.4859262511644672
18 0.5112589990684262 0.4859262511644672
19 0.5112589990684262 0.49099280074525903
```

Getting to complete 50-50 would take a very long time, but getting close takes
about 16 mixes.

## Follow up questions

If I only wanted to mix N times, how much milk tea can I make with two glasses
of fixed size?

Categories:
[Thought Experiments]({{< relref "/" >}}?Thought-Experiments=true)