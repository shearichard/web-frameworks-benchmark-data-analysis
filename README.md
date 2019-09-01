# Web Frameworks Benchmark Data Analysis

There's some really interesting web server benchmark data in the ['web-frameworks'](https://github.com/the-benchmarker/web-frameworks) repository but it's all in two big tables. This project is an attempt to produce some better looking visualisations of the data by applying R to the situation.

## Notes

### strsplit
The strsplit does return a list. But, the list is only a single element list.

To access, say, the second string of a single element list do this :

```
strsplit(x,"a")[[1]][2]
```

An alternative to this is to use:

```
lst<-unlist(strsplit(a1,'a'))
```

More information about this in this [stackoverflow question](https://stackoverflow.com/questions/27597984/working-out-the-output-of-strsplit-in-r).
