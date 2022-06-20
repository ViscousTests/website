# Vim Tricks


## Search/Replace

See http://vimregex.com/#substitute for details.

### Convert protos to bzl dictionaries

Replace `text: text2` with `"text": text2,`:
```
:%s/\(\S.*[^"]\): \(.*\)$/"\1": \2,/g
```

Replace floating points number with quoted variants:
```
:%s/[^"]\(\d\+\)\.\(\d\+\)/"\1\.\2"/g
```











Categories: [Lifestyle Optimizations]({{< relref "/" >}}?Lifestyle-Optimizations=true)