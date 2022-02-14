
<!-- README.md is generated from README.Rmd. Please edit that file -->

# faker

<!-- badges: start -->
<!-- badges: end -->

The goal of faker is to help in generating a fake dataset from a real
dataset.

## Installation

You can install the development version of faker like so:

``` r
remotes::install_github("asiripanich/faker") 
```

## Example

``` r
dataset <- iris
names(dataset)
#> [1] "Sepal.Length" "Sepal.Width"  "Petal.Length" "Petal.Width"  "Species"

fake_this(dataset) |>
  fake_preserve(Sepal.Length, Species) |>
  fake_generate()
#> $dataset
#>     Sepal.Length Sepal.Width Petal.Length Petal.Width    Species
#> 1            5.1    4.097486     3.330506   0.6696441     setosa
#> 2            4.9    2.182242     1.529195   0.9729658     setosa
#> 3            4.7    2.271225     2.483287   1.8862288     setosa
#> 4            4.6    2.744678     3.787872   1.2528271     setosa
#> 5            5.0    3.150127     5.421341   2.1100698     setosa
#> 6            5.4    4.005986     1.407530   1.8924454     setosa
#> 7            4.6    2.577099     3.480866   2.4960100     setosa
#> 8            5.0    2.201378     5.385216   1.2140237     setosa
#> 9            4.4    3.326018     6.107680   1.3196259     setosa
#> 10           4.9    3.742646     2.088664   0.7588454     setosa
#> 11           5.4    2.259330     5.962089   0.2070408     setosa
#> 12           4.8    4.008191     4.573370   2.3014423     setosa
#> 13           4.8    3.721011     3.180275   1.2055406     setosa
#> 14           4.3    4.267431     2.439615   0.1395134     setosa
#> 15           5.8    3.861561     5.845423   0.5909491     setosa
#> 16           5.7    3.776115     6.870606   1.6413587     setosa
#> 17           5.4    3.703484     3.129478   0.1667593     setosa
#> 18           5.1    2.317182     4.557805   0.8152303     setosa
#> 19           5.7    3.669501     2.812215   1.8542039     setosa
#> 20           5.1    2.397404     4.638686   0.9634395     setosa
#> 21           5.4    3.995065     4.900309   1.0603688     setosa
#> 22           5.1    3.464065     4.284109   1.7304281     setosa
#> 23           4.6    2.033053     5.632682   2.0569890     setosa
#> 24           5.1    3.783492     3.701146   1.4603778     setosa
#> 25           4.8    2.736820     4.458829   1.3910004     setosa
#> 26           5.0    4.286977     3.314660   2.3406527     setosa
#> 27           5.0    4.221643     6.023241   0.6038918     setosa
#> 28           5.2    3.313423     5.434681   0.6147782     setosa
#> 29           5.2    2.418368     5.292991   0.2105538     setosa
#> 30           4.7    3.898656     2.620092   0.5831098     setosa
#> 31           4.8    3.028413     2.751066   0.4060103     setosa
#> 32           5.4    4.074928     1.060254   0.4858171     setosa
#> 33           5.2    2.028673     4.644942   1.1551119     setosa
#> 34           5.5    3.981681     2.017682   0.2327326     setosa
#> 35           4.9    3.640886     5.850339   0.8044509     setosa
#> 36           5.0    3.654125     2.179210   0.9271875     setosa
#> 37           5.5    3.034090     1.862869   2.0026422     setosa
#> 38           4.9    3.513439     2.177923   1.6334765     setosa
#> 39           4.4    2.729126     3.955860   1.7777701     setosa
#> 40           5.1    2.203192     1.369763   0.8735780     setosa
#> 41           5.0    3.687888     1.133067   1.0445674     setosa
#> 42           4.5    2.853816     6.578317   0.6189654     setosa
#> 43           4.4    2.741138     2.308058   0.3530563     setosa
#> 44           5.0    4.395368     6.635310   1.0668556     setosa
#> 45           5.1    3.478431     1.147668   0.5482634     setosa
#> 46           4.8    3.135193     2.705074   1.6670846     setosa
#> 47           5.1    3.069834     6.318628   2.2773403     setosa
#> 48           4.6    2.606268     2.017844   0.1451542     setosa
#> 49           5.3    2.542219     2.398325   0.9405148     setosa
#> 50           5.0    2.471745     5.038206   1.6869301     setosa
#> 51           7.0    3.066221     5.162552   1.4803906 versicolor
#> 52           6.4    3.145709     4.936147   0.5472175 versicolor
#> 53           6.9    3.135153     1.028578   2.4785961 versicolor
#> 54           5.5    3.901379     6.027772   1.3220700 versicolor
#> 55           6.5    2.810048     1.572567   1.1811004 versicolor
#> 56           5.7    2.662351     5.378790   2.0400979 versicolor
#> 57           6.3    3.922384     3.610170   0.4414303 versicolor
#> 58           4.9    2.380352     5.987748   0.3403124 versicolor
#> 59           6.6    3.550749     1.538347   0.9250863 versicolor
#> 60           5.2    2.165908     5.602101   0.3414120 versicolor
#> 61           5.0    2.394606     5.811741   1.8920551 versicolor
#> 62           5.9    3.329036     6.872333   1.7659561 versicolor
#> 63           6.0    4.072954     6.245891   1.8502891 versicolor
#> 64           6.1    2.467613     1.199281   1.3073232 versicolor
#> 65           5.6    2.658222     2.535377   2.0610915 versicolor
#> 66           6.7    3.823981     6.474442   0.3876202 versicolor
#> 67           5.6    4.268722     2.364410   2.4113122 versicolor
#> 68           5.8    3.683233     4.004713   1.4277761 versicolor
#> 69           6.2    2.158681     2.125528   0.5728859 versicolor
#> 70           5.6    3.200582     1.949499   2.1270794 versicolor
#> 71           5.9    4.343267     1.227919   2.2638181 versicolor
#> 72           6.1    4.275563     6.714158   0.7826027 versicolor
#> 73           6.3    2.971520     4.999989   1.6365516 versicolor
#> 74           6.1    3.227685     4.026284   2.0474950 versicolor
#> 75           6.4    3.069075     1.886609   0.8998954 versicolor
#> 76           6.6    2.333557     4.785145   1.9487929 versicolor
#> 77           6.8    4.319933     5.586305   0.5217664 versicolor
#> 78           6.7    3.184202     4.701382   2.3246403 versicolor
#> 79           6.0    3.371110     3.163097   0.8683662 versicolor
#> 80           5.7    2.040542     2.328953   2.1392794 versicolor
#> 81           5.5    3.254805     4.193637   1.9778402 versicolor
#> 82           5.5    3.362306     6.540950   1.8670295 versicolor
#> 83           5.8    3.140874     3.414125   2.2776101 versicolor
#> 84           6.0    4.305219     6.138852   2.0626588 versicolor
#> 85           5.4    3.548624     2.407042   1.7049701 versicolor
#> 86           6.0    2.930394     1.168715   0.3579337 versicolor
#> 87           6.7    2.064650     4.595110   0.8469558 versicolor
#> 88           6.3    3.797374     6.359003   1.9827628 versicolor
#> 89           5.6    4.219525     5.274128   0.5309649 versicolor
#> 90           5.5    2.949276     6.310410   0.5540123 versicolor
#> 91           5.5    2.898161     5.623497   0.4319337 versicolor
#> 92           6.1    3.412323     5.399051   2.3158342 versicolor
#> 93           5.8    3.119074     4.374808   1.3133796 versicolor
#> 94           5.0    2.102335     2.973938   0.2960622 versicolor
#> 95           5.6    3.319978     2.711310   2.0512297 versicolor
#> 96           5.7    2.194888     6.438526   1.0701754 versicolor
#> 97           5.7    3.355224     1.502197   0.5974183 versicolor
#> 98           6.2    2.074410     6.136729   0.7362110 versicolor
#> 99           5.1    2.730902     1.148099   2.2774759 versicolor
#> 100          5.7    2.885312     4.953619   0.2841190 versicolor
#> 101          6.3    2.475500     1.512534   0.7242943  virginica
#> 102          5.8    2.009570     3.627061   0.7272215  virginica
#> 103          7.1    4.286082     1.676708   2.2743434  virginica
#> 104          6.3    4.079326     6.007860   0.3749600  virginica
#> 105          6.5    3.703230     1.419578   0.4255462  virginica
#> 106          7.6    3.817438     6.807493   1.4417988  virginica
#> 107          4.9    2.031523     1.552051   1.6749173  virginica
#> 108          7.3    3.048525     4.587307   0.8360824  virginica
#> 109          6.7    2.500936     3.682129   1.0110899  virginica
#> 110          7.2    3.514511     5.345221   1.8472522  virginica
#> 111          6.5    4.109854     1.257648   2.3342964  virginica
#> 112          6.4    4.246546     6.057665   0.5572247  virginica
#> 113          6.8    2.823253     1.162244   1.8579734  virginica
#> 114          5.7    3.232824     3.043927   2.2118093  virginica
#> 115          5.8    2.479518     6.868789   2.0362431  virginica
#> 116          6.4    2.451077     4.646249   2.4354630  virginica
#> 117          6.5    2.486805     2.930556   1.1263835  virginica
#> 118          7.7    3.903963     6.377684   0.2338835  virginica
#> 119          7.7    3.252415     4.894145   0.1095711  virginica
#> 120          6.0    3.841711     2.677588   1.6856299  virginica
#> 121          6.9    2.709400     3.784707   1.3672526  virginica
#> 122          5.6    3.774993     6.156484   0.2077507  virginica
#> 123          7.7    2.079056     1.971002   1.1908791  virginica
#> 124          6.3    2.189778     3.753362   1.9625646  virginica
#> 125          6.7    2.809979     5.497496   1.8559987  virginica
#> 126          7.2    2.738354     1.596882   0.9782692  virginica
#> 127          6.2    3.447318     4.438543   0.3568841  virginica
#> 128          6.1    3.081251     3.642204   1.9054755  virginica
#> 129          6.4    2.433677     5.330531   1.4073674  virginica
#> 130          7.2    2.370973     6.737033   1.8258027  virginica
#> 131          7.4    3.518181     3.900937   2.2891325  virginica
#> 132          7.9    3.361755     4.417350   2.0973293  virginica
#> 133          6.4    4.217433     2.117290   0.6568296  virginica
#> 134          6.3    4.071391     4.481033   0.2887034  virginica
#> 135          6.1    2.928863     6.774524   1.0867822  virginica
#> 136          7.7    2.143336     4.510221   1.9747293  virginica
#> 137          6.3    3.835271     3.413224   2.1513853  virginica
#> 138          6.4    2.754267     1.792680   1.4475837  virginica
#> 139          6.0    3.711482     4.394673   1.5809037  virginica
#> 140          6.9    3.970123     3.577007   2.4122530  virginica
#> 141          6.7    3.314915     3.634935   1.0548491  virginica
#> 142          6.9    2.230425     1.771215   1.3994044  virginica
#> 143          5.8    2.387987     3.892948   0.2399013  virginica
#> 144          6.8    3.861411     3.013880   1.3878444  virginica
#> 145          6.7    4.034778     4.129148   0.7091008  virginica
#> 146          6.7    4.128848     3.860605   0.7441933  virginica
#> 147          6.3    2.081328     4.331975   2.4842318  virginica
#> 148          6.5    3.247803     6.154032   1.6354632  virginica
#> 149          6.2    2.410757     2.807122   0.3169195  virginica
#> 150          5.9    2.570583     3.524182   2.2077751  virginica
#> 
#> $info
#> # A tibble: 5 × 3
#>   name         preserve dist        
#>   <chr>        <lgl>    <named list>
#> 1 Sepal.Length TRUE     <table [6]> 
#> 2 Sepal.Width  FALSE    <table [6]> 
#> 3 Petal.Length FALSE    <table [6]> 
#> 4 Petal.Width  FALSE    <table [6]> 
#> 5 Species      TRUE     <table [3]> 
#> 
#> attr(,"class")
#> [1] "fake"
```

``` r
library(vista)
vista_data <- get_vista18()
#> Rows: 25670 Columns: 32
#> ── Column specification ─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr (11): HHID, SurveyPeriod, TRAVDOW, TRAVMONTH, DayType, DWELLTYPE, OWNDWELL, HHINC, HOMELGA, HomeSubRegion, HomeRegion
#> dbl (21): HHSIZE, VISITORS, AVEAGE, YOUNGEST, OLDEST, YEARSLIVED, MONTHSLIVED, ADULTBIKES, KIDSBIKES, TOTALBIKES, CARS, FOURWDS, UTES, VANS, TRUCKS, MBIKES, OTHERVEHS, TOTALVEHS, WDHHWGT, WEHHWGT, HOMEPC
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> Rows: 174270 Columns: 59
#> ── Column specification ─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr (45): TRIPID, PERSID, HHID, DEPHOUR, DEPTIME, DURATION, ORIGLGA, ORIGPLACE1, ORIGPLACE2, ORIGPURP1, ORIGPURP2, DESTLGA, DESTPLACE1, DESTPLACE2, DESTPURP1, DESTPURP2, TRIPPURP, LINKMODE, MODE1, MODE2, MODE3, MODE4, MODE5, MODE6, MODE7, MODE8, MODE9, DIST_GRP...
#> dbl (13): STOPS, TRIPNO, STARTHOUR, STARTIME, ARRHOUR, ARRTIME, CUMDIST, TRAVTIME, TRIPTIME, WAITIME, DIST1, TIME1, WDTRIPWGT
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> Rows: 204224 Columns: 37
#> ── Column specification ─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr (28): STOPID, PERSID, HHID, DURATION, DEPHOUR, DEPTIME, ORIGLGA, ORIGPLACE1, ORIGPLACE2, ORIGPURP1, ORIGPURP2, DESTLGA, DESTPLACE1, DESTPLACE2, DESTPURP1, DESTPURP2, FULLMODE, MAINMODE, Mode_grp4, PERSON1, PERSON2, PERSON3, PERSON4, PERSON5, PERSON6, PERSON...
#> dbl  (8): STOPNO, STARTHOUR, STARTIME, ARRHOUR, ARRTIME, TRAVTIME, VISTADIST, WDSTOPWGT
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> Rows: 5865 Columns: 57
#> ── Column specification ─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr (42): JTEID, PERSID, HHID, DIST_GRP, TIME_GRP, ORIGLGA, DESTLGA, DESTPLACE2, JTEMODE, MODE1, MODE2, MODE3, MODE4, MODE5, MODE6, DIST2, DIST3, DIST4, DIST5, DIST6, TIME2, TIME3, TIME4, TIME5, TIME6, DUR2, DUR3, DUR4, DUR5, DUR6, PLACE1, PLACE2, PLACE3, PLACE...
#> dbl (14): STARTHOUR, STARTIME, ARRHOUR, ARRTIME, DEPHOUR, DEPTIME, JTETravelTime, JTE_AT, JTEDIST, JTEElapsedTime, DIST1, TIME1, DUR1, WEJTEWGT
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> Rows: 15617 Columns: 76
#> ── Column specification ─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr (62): JTWID, PERSID, HHID, DEPHOUR, DEPTIME, DIST_GRP, TIME_GRP, ORIGLGA, DESTLGA, JTWMODE, MODE1, MODE2, MODE3, MODE4, MODE5, MODE6, MODE7, MODE8, MODE9, DIST2, DIST3, DIST4, DIST5, DIST6, DIST7, DIST8, DIST9, TIME2, TIME3, TIME4, TIME5, TIME6, TIME7, TIME...
#> dbl (13): STARTHOUR, STARTIME, STARTIME_min, ARRHOUR, ARRTIME, ARRTIME_min, JTWTravelTime, JTW_AT, JTW_ElapsedTime, JTWDIST, DIST1, TIME1, WDJTWWGT
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.

fake_persons <- fake_this(vista_data$persons[1:10]) |>
  fake_preserve(persid, hhid) |>
  fake_generate()

waldo::compare(
  vista_data$persons[1:10, ],
  fake_persons$dataset[1:10, ]
)
#> `old` is length 40
#> `new` is length 10
#> 
#> `names(old)[8:40]`: "sex" "relationship" "persinc" "carlicence" "mbikelicence" "otherlicence" "nolicence" "fulltimework" "parttimework" "casualwork" and 23 more...
#> `names(new)[8:10]`: "sex" "relationship" "persinc"                                                                                                   ...           
#> 
#> `old$person`: 1.0 2.0 3.0 4.0 1.0 2.0 3.0 4.0 1.0 2.0
#> `new$person`: 2.5 7.4 6.0 1.1 4.5 3.0 3.3 3.3 1.9 3.5
#> 
#> `old$numstops`: 2.0  5.0  2.0  2.0  0.0  5.0  6.0 3.0  2.0  4.0
#> `new$numstops`: 0.2 15.5 13.8 14.2 19.2 19.2 26.0 3.6 10.1 24.7
#> 
#> `old$monthofbirth`: "April" "January" "July" "August" "January"   "July"    "June"  "February" "July"    "June"    
#> `new$monthofbirth`: "April" "October" "0"    "0"      "September" "October" "April" "June"     "October" "November"
#> 
#> `old$yearofbirth`: 1962 1969 2000 2005 1955 1955 1983 1991 1964 1965
#> `new$yearofbirth`: 1974 1984 1947 1927 2000 2004 1975 1922 1977 1925
#> 
#> `old$age`: 50 43 11  6 57 56 28 21 47 46
#> `new$age`: 33 37 48 68 69  9 65 61 97 43
#> 
#> `old$sex`: "Male" "Female" "Female" "Female" "Female" "Male" "Male"   "Female" "Male"   "Female"
#> `new$sex`: "Male" "Female" "Female" "Male"   "Female" "Male" "Female" "Female" "Female" "Male"  
#> 
#> `old$relationship`: "Self"   "Spouse"    "Child"  "Child"     "Spouse"  "Spouse" "Child"      "Child"     "Self"    "Spouse" 
#> `new$relationship`: "Spouse" "Unrelated" "Spouse" "Unrelated" "Sibling" "Other"  "Grandchild" "Unrelated" "Sibling" "Sibling"
#> 
#> `old$persinc`: "$1000-1249 p.w." "$1-199 p.w."   "Zero Income" "Zero Income" "$1-199 p.w."   "$300-399 p.w." "$800-999 p.w."   "$300-399 p.w." "$400-599 p.w." "$400-599 p.w."  
#> `new$persinc`: "$800-999 p.w."   "$400-599 p.w." "$1-199 p.w." "Zero Income" "$400-599 p.w." "$600-799 p.w." "$1000-1249 p.w." "$200-299 p.w." "$600-799 p.w." "$1250-1499 p.w."
#> 
#> And 30 more differences ...
```
