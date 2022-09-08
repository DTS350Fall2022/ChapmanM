---
title: "Task4"
author: "matthewchapman"
date: "2022-09-08"
output: 
  html_document:
    keep_md: TRUE
---

Convert iris data to a tibble called iris_data

```r
library("tibble")
library("dplyr")
```

```
## 
## Attaching package: 'dplyr'
```

```
## The following objects are masked from 'package:stats':
## 
##     filter, lag
```

```
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
```

```r
iris_data <- as_data_frame(iris) 
```

```
## Warning: `as_data_frame()` was deprecated in tibble 2.0.0.
## Please use `as_tibble()` instead.
## The signature and semantics have changed, see `?as_tibble`.
## This warning is displayed once every 8 hours.
## Call `lifecycle::last_lifecycle_warnings()` to see where this warning was generated.
```

```r
iris_data
```

```
## # A tibble: 150 × 5
##    Sepal.Length Sepal.Width Petal.Length Petal.Width Species
##           <dbl>       <dbl>        <dbl>       <dbl> <fct>  
##  1          5.1         3.5          1.4         0.2 setosa 
##  2          4.9         3            1.4         0.2 setosa 
##  3          4.7         3.2          1.3         0.2 setosa 
##  4          4.6         3.1          1.5         0.2 setosa 
##  5          5           3.6          1.4         0.2 setosa 
##  6          5.4         3.9          1.7         0.4 setosa 
##  7          4.6         3.4          1.4         0.3 setosa 
##  8          5           3.4          1.5         0.2 setosa 
##  9          4.4         2.9          1.4         0.2 setosa 
## 10          4.9         3.1          1.5         0.1 setosa 
## # … with 140 more rows
```


Arrange the iris data by Sepal.Length and display the first ten rows.

```r
arrange(iris_data, Sepal.Length)
```

```
## # A tibble: 150 × 5
##    Sepal.Length Sepal.Width Petal.Length Petal.Width Species
##           <dbl>       <dbl>        <dbl>       <dbl> <fct>  
##  1          4.3         3            1.1         0.1 setosa 
##  2          4.4         2.9          1.4         0.2 setosa 
##  3          4.4         3            1.3         0.2 setosa 
##  4          4.4         3.2          1.3         0.2 setosa 
##  5          4.5         2.3          1.3         0.3 setosa 
##  6          4.6         3.1          1.5         0.2 setosa 
##  7          4.6         3.4          1.4         0.3 setosa 
##  8          4.6         3.6          1           0.2 setosa 
##  9          4.6         3.2          1.4         0.2 setosa 
## 10          4.7         3.2          1.3         0.2 setosa 
## # … with 140 more rows
```


Select the Species and Petal.Width columns and put them into a new data set called testdat.

```r
testdat <- select(iris, Species, Petal.Width)
testdat
```

```
##        Species Petal.Width
## 1       setosa         0.2
## 2       setosa         0.2
## 3       setosa         0.2
## 4       setosa         0.2
## 5       setosa         0.2
## 6       setosa         0.4
## 7       setosa         0.3
## 8       setosa         0.2
## 9       setosa         0.2
## 10      setosa         0.1
## 11      setosa         0.2
## 12      setosa         0.2
## 13      setosa         0.1
## 14      setosa         0.1
## 15      setosa         0.2
## 16      setosa         0.4
## 17      setosa         0.4
## 18      setosa         0.3
## 19      setosa         0.3
## 20      setosa         0.3
## 21      setosa         0.2
## 22      setosa         0.4
## 23      setosa         0.2
## 24      setosa         0.5
## 25      setosa         0.2
## 26      setosa         0.2
## 27      setosa         0.4
## 28      setosa         0.2
## 29      setosa         0.2
## 30      setosa         0.2
## 31      setosa         0.2
## 32      setosa         0.4
## 33      setosa         0.1
## 34      setosa         0.2
## 35      setosa         0.2
## 36      setosa         0.2
## 37      setosa         0.2
## 38      setosa         0.1
## 39      setosa         0.2
## 40      setosa         0.2
## 41      setosa         0.3
## 42      setosa         0.3
## 43      setosa         0.2
## 44      setosa         0.6
## 45      setosa         0.4
## 46      setosa         0.3
## 47      setosa         0.2
## 48      setosa         0.2
## 49      setosa         0.2
## 50      setosa         0.2
## 51  versicolor         1.4
## 52  versicolor         1.5
## 53  versicolor         1.5
## 54  versicolor         1.3
## 55  versicolor         1.5
## 56  versicolor         1.3
## 57  versicolor         1.6
## 58  versicolor         1.0
## 59  versicolor         1.3
## 60  versicolor         1.4
## 61  versicolor         1.0
## 62  versicolor         1.5
## 63  versicolor         1.0
## 64  versicolor         1.4
## 65  versicolor         1.3
## 66  versicolor         1.4
## 67  versicolor         1.5
## 68  versicolor         1.0
## 69  versicolor         1.5
## 70  versicolor         1.1
## 71  versicolor         1.8
## 72  versicolor         1.3
## 73  versicolor         1.5
## 74  versicolor         1.2
## 75  versicolor         1.3
## 76  versicolor         1.4
## 77  versicolor         1.4
## 78  versicolor         1.7
## 79  versicolor         1.5
## 80  versicolor         1.0
## 81  versicolor         1.1
## 82  versicolor         1.0
## 83  versicolor         1.2
## 84  versicolor         1.6
## 85  versicolor         1.5
## 86  versicolor         1.6
## 87  versicolor         1.5
## 88  versicolor         1.3
## 89  versicolor         1.3
## 90  versicolor         1.3
## 91  versicolor         1.2
## 92  versicolor         1.4
## 93  versicolor         1.2
## 94  versicolor         1.0
## 95  versicolor         1.3
## 96  versicolor         1.2
## 97  versicolor         1.3
## 98  versicolor         1.3
## 99  versicolor         1.1
## 100 versicolor         1.3
## 101  virginica         2.5
## 102  virginica         1.9
## 103  virginica         2.1
## 104  virginica         1.8
## 105  virginica         2.2
## 106  virginica         2.1
## 107  virginica         1.7
## 108  virginica         1.8
## 109  virginica         1.8
## 110  virginica         2.5
## 111  virginica         2.0
## 112  virginica         1.9
## 113  virginica         2.1
## 114  virginica         2.0
## 115  virginica         2.4
## 116  virginica         2.3
## 117  virginica         1.8
## 118  virginica         2.2
## 119  virginica         2.3
## 120  virginica         1.5
## 121  virginica         2.3
## 122  virginica         2.0
## 123  virginica         2.0
## 124  virginica         1.8
## 125  virginica         2.1
## 126  virginica         1.8
## 127  virginica         1.8
## 128  virginica         1.8
## 129  virginica         2.1
## 130  virginica         1.6
## 131  virginica         1.9
## 132  virginica         2.0
## 133  virginica         2.2
## 134  virginica         1.5
## 135  virginica         1.4
## 136  virginica         2.3
## 137  virginica         2.4
## 138  virginica         1.8
## 139  virginica         1.8
## 140  virginica         2.1
## 141  virginica         2.4
## 142  virginica         2.3
## 143  virginica         1.9
## 144  virginica         2.3
## 145  virginica         2.5
## 146  virginica         2.3
## 147  virginica         1.9
## 148  virginica         2.0
## 149  virginica         2.3
## 150  virginica         1.8
```


Create a new table called species_mean that has the mean for each variable for each Species.

```r
species_mean <- group_by(iris, Species)
species_mean <- summarise(species_mean, Petal.Length = mean(Petal.Length, na.rm = TRUE), Petal.Width = mean(Petal.Width, na.rm = TRUE), Sepal.Length = mean(Sepal.Length, na.rm = TRUE), Sepal.Width = mean(Sepal.Width, na.rm = TRUE))
species_mean
```

```
## # A tibble: 3 × 5
##   Species    Petal.Length Petal.Width Sepal.Length Sepal.Width
##   <fct>             <dbl>       <dbl>        <dbl>       <dbl>
## 1 setosa             1.46       0.246         5.01        3.43
## 2 versicolor         4.26       1.33          5.94        2.77
## 3 virginica          5.55       2.03          6.59        2.97
```


Create a data frame called iris_min with only the observations with at least 3 for Sepal.Width and not 2.5 for Petal.Width.

```r
iris_min <- filter(iris_data, Sepal.Width >= 3, Petal.Width != 2.5)
iris_min
```

```
## # A tibble: 90 × 5
##    Sepal.Length Sepal.Width Petal.Length Petal.Width Species
##           <dbl>       <dbl>        <dbl>       <dbl> <fct>  
##  1          5.1         3.5          1.4         0.2 setosa 
##  2          4.9         3            1.4         0.2 setosa 
##  3          4.7         3.2          1.3         0.2 setosa 
##  4          4.6         3.1          1.5         0.2 setosa 
##  5          5           3.6          1.4         0.2 setosa 
##  6          5.4         3.9          1.7         0.4 setosa 
##  7          4.6         3.4          1.4         0.3 setosa 
##  8          5           3.4          1.5         0.2 setosa 
##  9          4.9         3.1          1.5         0.1 setosa 
## 10          5.4         3.7          1.5         0.2 setosa 
## # … with 80 more rows
```


Create a data frame called iris_size with a column Sepal.Size

```r
iris_size <- 
  mutate(iris_data, Sepal.Size= case_when(
    Sepal.Length < 5 ~ "small",
    Sepal.Length >= 5 & Sepal.Length <6.5 ~ "medium",
    Sepal.Length >= 6.5 ~ "large"
  )
  )
iris_size
```

```
## # A tibble: 150 × 6
##    Sepal.Length Sepal.Width Petal.Length Petal.Width Species Sepal.Size
##           <dbl>       <dbl>        <dbl>       <dbl> <fct>   <chr>     
##  1          5.1         3.5          1.4         0.2 setosa  medium    
##  2          4.9         3            1.4         0.2 setosa  small     
##  3          4.7         3.2          1.3         0.2 setosa  small     
##  4          4.6         3.1          1.5         0.2 setosa  small     
##  5          5           3.6          1.4         0.2 setosa  medium    
##  6          5.4         3.9          1.7         0.4 setosa  medium    
##  7          4.6         3.4          1.4         0.3 setosa  small     
##  8          5           3.4          1.5         0.2 setosa  medium    
##  9          4.4         2.9          1.4         0.2 setosa  small     
## 10          4.9         3.1          1.5         0.1 setosa  small     
## # … with 140 more rows
```


Create a data frame called iris_rank which ranks all of the data by Petal.Length, where a ranking of 1 is the largest Petal.Length and order by ranking.

```r
iris_rank <-
  arrange(iris, Petal.Length)
  mutate(iris_rank, ranking = min_rank(desc(Petal.Length)))
```

```
##     Sepal.Length Sepal.Width Petal.Length Petal.Width    Species ranking
## 1            4.6         3.6          1.0         0.2     setosa     150
## 2            4.3         3.0          1.1         0.1     setosa     149
## 3            5.8         4.0          1.2         0.2     setosa     147
## 4            5.0         3.2          1.2         0.2     setosa     147
## 5            4.7         3.2          1.3         0.2     setosa     140
## 6            5.4         3.9          1.3         0.4     setosa     140
## 7            5.5         3.5          1.3         0.2     setosa     140
## 8            4.4         3.0          1.3         0.2     setosa     140
## 9            5.0         3.5          1.3         0.3     setosa     140
## 10           4.5         2.3          1.3         0.3     setosa     140
## 11           4.4         3.2          1.3         0.2     setosa     140
## 12           5.1         3.5          1.4         0.2     setosa     127
## 13           4.9         3.0          1.4         0.2     setosa     127
## 14           5.0         3.6          1.4         0.2     setosa     127
## 15           4.6         3.4          1.4         0.3     setosa     127
## 16           4.4         2.9          1.4         0.2     setosa     127
## 17           4.8         3.0          1.4         0.1     setosa     127
## 18           5.1         3.5          1.4         0.3     setosa     127
## 19           5.2         3.4          1.4         0.2     setosa     127
## 20           5.5         4.2          1.4         0.2     setosa     127
## 21           4.9         3.6          1.4         0.1     setosa     127
## 22           4.8         3.0          1.4         0.3     setosa     127
## 23           4.6         3.2          1.4         0.2     setosa     127
## 24           5.0         3.3          1.4         0.2     setosa     127
## 25           4.6         3.1          1.5         0.2     setosa     114
## 26           5.0         3.4          1.5         0.2     setosa     114
## 27           4.9         3.1          1.5         0.1     setosa     114
## 28           5.4         3.7          1.5         0.2     setosa     114
## 29           5.7         4.4          1.5         0.4     setosa     114
## 30           5.1         3.8          1.5         0.3     setosa     114
## 31           5.1         3.7          1.5         0.4     setosa     114
## 32           5.2         3.5          1.5         0.2     setosa     114
## 33           5.4         3.4          1.5         0.4     setosa     114
## 34           5.2         4.1          1.5         0.1     setosa     114
## 35           4.9         3.1          1.5         0.2     setosa     114
## 36           5.1         3.4          1.5         0.2     setosa     114
## 37           5.3         3.7          1.5         0.2     setosa     114
## 38           4.8         3.4          1.6         0.2     setosa     107
## 39           5.0         3.0          1.6         0.2     setosa     107
## 40           5.0         3.4          1.6         0.4     setosa     107
## 41           4.7         3.2          1.6         0.2     setosa     107
## 42           4.8         3.1          1.6         0.2     setosa     107
## 43           5.0         3.5          1.6         0.6     setosa     107
## 44           5.1         3.8          1.6         0.2     setosa     107
## 45           5.4         3.9          1.7         0.4     setosa     103
## 46           5.7         3.8          1.7         0.3     setosa     103
## 47           5.4         3.4          1.7         0.2     setosa     103
## 48           5.1         3.3          1.7         0.5     setosa     103
## 49           4.8         3.4          1.9         0.2     setosa     101
## 50           5.1         3.8          1.9         0.4     setosa     101
## 51           5.1         2.5          3.0         1.1 versicolor     100
## 52           4.9         2.4          3.3         1.0 versicolor      98
## 53           5.0         2.3          3.3         1.0 versicolor      98
## 54           5.0         2.0          3.5         1.0 versicolor      96
## 55           5.7         2.6          3.5         1.0 versicolor      96
## 56           5.6         2.9          3.6         1.3 versicolor      95
## 57           5.5         2.4          3.7         1.0 versicolor      94
## 58           5.5         2.4          3.8         1.1 versicolor      93
## 59           5.2         2.7          3.9         1.4 versicolor      90
## 60           5.6         2.5          3.9         1.1 versicolor      90
## 61           5.8         2.7          3.9         1.2 versicolor      90
## 62           5.5         2.3          4.0         1.3 versicolor      85
## 63           6.0         2.2          4.0         1.0 versicolor      85
## 64           6.1         2.8          4.0         1.3 versicolor      85
## 65           5.5         2.5          4.0         1.3 versicolor      85
## 66           5.8         2.6          4.0         1.2 versicolor      85
## 67           5.8         2.7          4.1         1.0 versicolor      82
## 68           5.6         3.0          4.1         1.3 versicolor      82
## 69           5.7         2.8          4.1         1.3 versicolor      82
## 70           5.9         3.0          4.2         1.5 versicolor      78
## 71           5.6         2.7          4.2         1.3 versicolor      78
## 72           5.7         3.0          4.2         1.2 versicolor      78
## 73           5.7         2.9          4.2         1.3 versicolor      78
## 74           6.4         2.9          4.3         1.3 versicolor      76
## 75           6.2         2.9          4.3         1.3 versicolor      76
## 76           6.7         3.1          4.4         1.4 versicolor      72
## 77           6.6         3.0          4.4         1.4 versicolor      72
## 78           6.3         2.3          4.4         1.3 versicolor      72
## 79           5.5         2.6          4.4         1.2 versicolor      72
## 80           6.4         3.2          4.5         1.5 versicolor      64
## 81           5.7         2.8          4.5         1.3 versicolor      64
## 82           5.6         3.0          4.5         1.5 versicolor      64
## 83           6.2         2.2          4.5         1.5 versicolor      64
## 84           6.0         2.9          4.5         1.5 versicolor      64
## 85           5.4         3.0          4.5         1.5 versicolor      64
## 86           6.0         3.4          4.5         1.6 versicolor      64
## 87           4.9         2.5          4.5         1.7  virginica      64
## 88           6.5         2.8          4.6         1.5 versicolor      61
## 89           6.6         2.9          4.6         1.3 versicolor      61
## 90           6.1         3.0          4.6         1.4 versicolor      61
## 91           7.0         3.2          4.7         1.4 versicolor      56
## 92           6.3         3.3          4.7         1.6 versicolor      56
## 93           6.1         2.9          4.7         1.4 versicolor      56
## 94           6.1         2.8          4.7         1.2 versicolor      56
## 95           6.7         3.1          4.7         1.5 versicolor      56
## 96           5.9         3.2          4.8         1.8 versicolor      52
## 97           6.8         2.8          4.8         1.4 versicolor      52
## 98           6.2         2.8          4.8         1.8  virginica      52
## 99           6.0         3.0          4.8         1.8  virginica      52
## 100          6.9         3.1          4.9         1.5 versicolor      47
## 101          6.3         2.5          4.9         1.5 versicolor      47
## 102          5.6         2.8          4.9         2.0  virginica      47
## 103          6.3         2.7          4.9         1.8  virginica      47
## 104          6.1         3.0          4.9         1.8  virginica      47
## 105          6.7         3.0          5.0         1.7 versicolor      43
## 106          5.7         2.5          5.0         2.0  virginica      43
## 107          6.0         2.2          5.0         1.5  virginica      43
## 108          6.3         2.5          5.0         1.9  virginica      43
## 109          6.0         2.7          5.1         1.6 versicolor      35
## 110          5.8         2.7          5.1         1.9  virginica      35
## 111          6.5         3.2          5.1         2.0  virginica      35
## 112          5.8         2.8          5.1         2.4  virginica      35
## 113          6.3         2.8          5.1         1.5  virginica      35
## 114          6.9         3.1          5.1         2.3  virginica      35
## 115          5.8         2.7          5.1         1.9  virginica      35
## 116          5.9         3.0          5.1         1.8  virginica      35
## 117          6.7         3.0          5.2         2.3  virginica      33
## 118          6.5         3.0          5.2         2.0  virginica      33
## 119          6.4         2.7          5.3         1.9  virginica      31
## 120          6.4         3.2          5.3         2.3  virginica      31
## 121          6.9         3.1          5.4         2.1  virginica      29
## 122          6.2         3.4          5.4         2.3  virginica      29
## 123          6.8         3.0          5.5         2.1  virginica      26
## 124          6.5         3.0          5.5         1.8  virginica      26
## 125          6.4         3.1          5.5         1.8  virginica      26
## 126          6.3         2.9          5.6         1.8  virginica      20
## 127          6.4         2.8          5.6         2.1  virginica      20
## 128          6.4         2.8          5.6         2.2  virginica      20
## 129          6.1         2.6          5.6         1.4  virginica      20
## 130          6.3         3.4          5.6         2.4  virginica      20
## 131          6.7         3.1          5.6         2.4  virginica      20
## 132          6.9         3.2          5.7         2.3  virginica      17
## 133          6.7         3.3          5.7         2.1  virginica      17
## 134          6.7         3.3          5.7         2.5  virginica      17
## 135          6.5         3.0          5.8         2.2  virginica      14
## 136          6.7         2.5          5.8         1.8  virginica      14
## 137          7.2         3.0          5.8         1.6  virginica      14
## 138          7.1         3.0          5.9         2.1  virginica      12
## 139          6.8         3.2          5.9         2.3  virginica      12
## 140          6.3         3.3          6.0         2.5  virginica      10
## 141          7.2         3.2          6.0         1.8  virginica      10
## 142          7.2         3.6          6.1         2.5  virginica       7
## 143          7.4         2.8          6.1         1.9  virginica       7
## 144          7.7         3.0          6.1         2.3  virginica       7
## 145          7.3         2.9          6.3         1.8  virginica       6
## 146          7.9         3.8          6.4         2.0  virginica       5
## 147          7.6         3.0          6.6         2.1  virginica       4
## 148          7.7         3.8          6.7         2.2  virginica       2
## 149          7.7         2.8          6.7         2.0  virginica       2
## 150          7.7         2.6          6.9         2.3  virginica       1
```

```r
iris_rank
```

```
##     Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
## 1            4.6         3.6          1.0         0.2     setosa
## 2            4.3         3.0          1.1         0.1     setosa
## 3            5.8         4.0          1.2         0.2     setosa
## 4            5.0         3.2          1.2         0.2     setosa
## 5            4.7         3.2          1.3         0.2     setosa
## 6            5.4         3.9          1.3         0.4     setosa
## 7            5.5         3.5          1.3         0.2     setosa
## 8            4.4         3.0          1.3         0.2     setosa
## 9            5.0         3.5          1.3         0.3     setosa
## 10           4.5         2.3          1.3         0.3     setosa
## 11           4.4         3.2          1.3         0.2     setosa
## 12           5.1         3.5          1.4         0.2     setosa
## 13           4.9         3.0          1.4         0.2     setosa
## 14           5.0         3.6          1.4         0.2     setosa
## 15           4.6         3.4          1.4         0.3     setosa
## 16           4.4         2.9          1.4         0.2     setosa
## 17           4.8         3.0          1.4         0.1     setosa
## 18           5.1         3.5          1.4         0.3     setosa
## 19           5.2         3.4          1.4         0.2     setosa
## 20           5.5         4.2          1.4         0.2     setosa
## 21           4.9         3.6          1.4         0.1     setosa
## 22           4.8         3.0          1.4         0.3     setosa
## 23           4.6         3.2          1.4         0.2     setosa
## 24           5.0         3.3          1.4         0.2     setosa
## 25           4.6         3.1          1.5         0.2     setosa
## 26           5.0         3.4          1.5         0.2     setosa
## 27           4.9         3.1          1.5         0.1     setosa
## 28           5.4         3.7          1.5         0.2     setosa
## 29           5.7         4.4          1.5         0.4     setosa
## 30           5.1         3.8          1.5         0.3     setosa
## 31           5.1         3.7          1.5         0.4     setosa
## 32           5.2         3.5          1.5         0.2     setosa
## 33           5.4         3.4          1.5         0.4     setosa
## 34           5.2         4.1          1.5         0.1     setosa
## 35           4.9         3.1          1.5         0.2     setosa
## 36           5.1         3.4          1.5         0.2     setosa
## 37           5.3         3.7          1.5         0.2     setosa
## 38           4.8         3.4          1.6         0.2     setosa
## 39           5.0         3.0          1.6         0.2     setosa
## 40           5.0         3.4          1.6         0.4     setosa
## 41           4.7         3.2          1.6         0.2     setosa
## 42           4.8         3.1          1.6         0.2     setosa
## 43           5.0         3.5          1.6         0.6     setosa
## 44           5.1         3.8          1.6         0.2     setosa
## 45           5.4         3.9          1.7         0.4     setosa
## 46           5.7         3.8          1.7         0.3     setosa
## 47           5.4         3.4          1.7         0.2     setosa
## 48           5.1         3.3          1.7         0.5     setosa
## 49           4.8         3.4          1.9         0.2     setosa
## 50           5.1         3.8          1.9         0.4     setosa
## 51           5.1         2.5          3.0         1.1 versicolor
## 52           4.9         2.4          3.3         1.0 versicolor
## 53           5.0         2.3          3.3         1.0 versicolor
## 54           5.0         2.0          3.5         1.0 versicolor
## 55           5.7         2.6          3.5         1.0 versicolor
## 56           5.6         2.9          3.6         1.3 versicolor
## 57           5.5         2.4          3.7         1.0 versicolor
## 58           5.5         2.4          3.8         1.1 versicolor
## 59           5.2         2.7          3.9         1.4 versicolor
## 60           5.6         2.5          3.9         1.1 versicolor
## 61           5.8         2.7          3.9         1.2 versicolor
## 62           5.5         2.3          4.0         1.3 versicolor
## 63           6.0         2.2          4.0         1.0 versicolor
## 64           6.1         2.8          4.0         1.3 versicolor
## 65           5.5         2.5          4.0         1.3 versicolor
## 66           5.8         2.6          4.0         1.2 versicolor
## 67           5.8         2.7          4.1         1.0 versicolor
## 68           5.6         3.0          4.1         1.3 versicolor
## 69           5.7         2.8          4.1         1.3 versicolor
## 70           5.9         3.0          4.2         1.5 versicolor
## 71           5.6         2.7          4.2         1.3 versicolor
## 72           5.7         3.0          4.2         1.2 versicolor
## 73           5.7         2.9          4.2         1.3 versicolor
## 74           6.4         2.9          4.3         1.3 versicolor
## 75           6.2         2.9          4.3         1.3 versicolor
## 76           6.7         3.1          4.4         1.4 versicolor
## 77           6.6         3.0          4.4         1.4 versicolor
## 78           6.3         2.3          4.4         1.3 versicolor
## 79           5.5         2.6          4.4         1.2 versicolor
## 80           6.4         3.2          4.5         1.5 versicolor
## 81           5.7         2.8          4.5         1.3 versicolor
## 82           5.6         3.0          4.5         1.5 versicolor
## 83           6.2         2.2          4.5         1.5 versicolor
## 84           6.0         2.9          4.5         1.5 versicolor
## 85           5.4         3.0          4.5         1.5 versicolor
## 86           6.0         3.4          4.5         1.6 versicolor
## 87           4.9         2.5          4.5         1.7  virginica
## 88           6.5         2.8          4.6         1.5 versicolor
## 89           6.6         2.9          4.6         1.3 versicolor
## 90           6.1         3.0          4.6         1.4 versicolor
## 91           7.0         3.2          4.7         1.4 versicolor
## 92           6.3         3.3          4.7         1.6 versicolor
## 93           6.1         2.9          4.7         1.4 versicolor
## 94           6.1         2.8          4.7         1.2 versicolor
## 95           6.7         3.1          4.7         1.5 versicolor
## 96           5.9         3.2          4.8         1.8 versicolor
## 97           6.8         2.8          4.8         1.4 versicolor
## 98           6.2         2.8          4.8         1.8  virginica
## 99           6.0         3.0          4.8         1.8  virginica
## 100          6.9         3.1          4.9         1.5 versicolor
## 101          6.3         2.5          4.9         1.5 versicolor
## 102          5.6         2.8          4.9         2.0  virginica
## 103          6.3         2.7          4.9         1.8  virginica
## 104          6.1         3.0          4.9         1.8  virginica
## 105          6.7         3.0          5.0         1.7 versicolor
## 106          5.7         2.5          5.0         2.0  virginica
## 107          6.0         2.2          5.0         1.5  virginica
## 108          6.3         2.5          5.0         1.9  virginica
## 109          6.0         2.7          5.1         1.6 versicolor
## 110          5.8         2.7          5.1         1.9  virginica
## 111          6.5         3.2          5.1         2.0  virginica
## 112          5.8         2.8          5.1         2.4  virginica
## 113          6.3         2.8          5.1         1.5  virginica
## 114          6.9         3.1          5.1         2.3  virginica
## 115          5.8         2.7          5.1         1.9  virginica
## 116          5.9         3.0          5.1         1.8  virginica
## 117          6.7         3.0          5.2         2.3  virginica
## 118          6.5         3.0          5.2         2.0  virginica
## 119          6.4         2.7          5.3         1.9  virginica
## 120          6.4         3.2          5.3         2.3  virginica
## 121          6.9         3.1          5.4         2.1  virginica
## 122          6.2         3.4          5.4         2.3  virginica
## 123          6.8         3.0          5.5         2.1  virginica
## 124          6.5         3.0          5.5         1.8  virginica
## 125          6.4         3.1          5.5         1.8  virginica
## 126          6.3         2.9          5.6         1.8  virginica
## 127          6.4         2.8          5.6         2.1  virginica
## 128          6.4         2.8          5.6         2.2  virginica
## 129          6.1         2.6          5.6         1.4  virginica
## 130          6.3         3.4          5.6         2.4  virginica
## 131          6.7         3.1          5.6         2.4  virginica
## 132          6.9         3.2          5.7         2.3  virginica
## 133          6.7         3.3          5.7         2.1  virginica
## 134          6.7         3.3          5.7         2.5  virginica
## 135          6.5         3.0          5.8         2.2  virginica
## 136          6.7         2.5          5.8         1.8  virginica
## 137          7.2         3.0          5.8         1.6  virginica
## 138          7.1         3.0          5.9         2.1  virginica
## 139          6.8         3.2          5.9         2.3  virginica
## 140          6.3         3.3          6.0         2.5  virginica
## 141          7.2         3.2          6.0         1.8  virginica
## 142          7.2         3.6          6.1         2.5  virginica
## 143          7.4         2.8          6.1         1.9  virginica
## 144          7.7         3.0          6.1         2.3  virginica
## 145          7.3         2.9          6.3         1.8  virginica
## 146          7.9         3.8          6.4         2.0  virginica
## 147          7.6         3.0          6.6         2.1  virginica
## 148          7.7         3.8          6.7         2.2  virginica
## 149          7.7         2.8          6.7         2.0  virginica
## 150          7.7         2.6          6.9         2.3  virginica
```


Read about the ?summarize_all() function and get a new table with the means and standard deviations for each species.

```r
iris3 <- iris %>%
  group_by(Species) %>%
  summarise_all(list(mean, sd))
iris3
```

```
## # A tibble: 3 × 9
##   Species    Sepal.Len…¹ Sepal…² Petal…³ Petal…⁴ Sepal…⁵ Sepal…⁶ Petal…⁷ Petal…⁸
##   <fct>            <dbl>   <dbl>   <dbl>   <dbl>   <dbl>   <dbl>   <dbl>   <dbl>
## 1 setosa            5.01    3.43    1.46   0.246   0.352   0.379   0.174   0.105
## 2 versicolor        5.94    2.77    4.26   1.33    0.516   0.314   0.470   0.198
## 3 virginica         6.59    2.97    5.55   2.03    0.636   0.322   0.552   0.275
## # … with abbreviated variable names ¹​Sepal.Length_fn1, ²​Sepal.Width_fn1,
## #   ³​Petal.Length_fn1, ⁴​Petal.Width_fn1, ⁵​Sepal.Length_fn2, ⁶​Sepal.Width_fn2,
## #   ⁷​Petal.Length_fn2, ⁸​Petal.Width_fn2
```


Questions:
1. What part of the country has the cheapest cost of living and has the most major cities within 200 miles?
2. Where is the best place to live working in tech?
3. Is there going to be another bad COVID outbreak?
4. Are major corporations loss prevention systems worth it?
