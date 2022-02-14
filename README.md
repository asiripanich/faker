
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
#> # A tibble: 150 × 5
#>    Sepal.Length Sepal.Width Petal.Length Petal.Width Species
#>           <dbl>       <dbl>        <dbl>       <dbl> <fct>  
#>  1          5.1        3.84         5.22       1.12  setosa 
#>  2          4.9        4.17         3.15       0.238 setosa 
#>  3          4.7        3.37         2.21       1.28  setosa 
#>  4          4.6        2.50         4.96       0.352 setosa 
#>  5          5          2.40         1.21       0.853 setosa 
#>  6          5.4        4.34         5.44       2.46  setosa 
#>  7          4.6        4.22         2.00       0.869 setosa 
#>  8          5          3.47         4.12       1.06  setosa 
#>  9          4.4        3.17         6.80       2.21  setosa 
#> 10          4.9        2.62         3.07       0.229 setosa 
#> # … with 140 more rows
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

n_rows <- 100

fake_persons <- fake_this(vista_data$persons[seq_len(n_rows), ]) |>
  fake_preserve(persid, hhid) |>
  fake_generate()

waldo::compare(
  vista_data$persons[seq_len(10), ],
  fake_persons$dataset[seq_len(10), ]
)
#> old vs new
#>               person  numstops monthofbirth yearofbirth       age    sex   relationship         persinc               carlicence mbikelicence otherlicence    nolicence fulltimework parttimework casualwork anywork           studying        activities            mainact          worktype                 emptype                                anzsco1                                              anzsco2                                    anzsic1                                          anzsic2
#> - old[1, ]  1.000000  2.000000        April    1962.000 50.000000   Male           Self $1000-1249 p.w.             Full Licence            N            N Some Licence            Y            N          N       Y           No Study No other activity     Full-time Work       Fixed Hours           Paid Employee Community and Personal Service Workers                                  Hospitality Workers        Administrative and Support Services                          Administrative Services
#> - old[2, ]  2.000000  5.000000      January    1969.000 43.000000 Female         Spouse     $1-199 p.w.             Full Licence            N            N Some Licence            N            N          N       N           No Study     Keeping House      Keeping House Not in Work Force       Not in Work Force                      Not in Work Force                                    Not in Work Force                          Not in Work Force                                Not In Work Force
#> - old[3, ]  3.000000  2.000000         July    2000.000 11.000000 Female          Child     Zero Income           No Car Licence            N            N   No Licence            N            N          N       N            Primary No other activity     Primary School Not in Work Force       Not in Work Force                      Not in Work Force                                    Not in Work Force                          Not in Work Force                                Not In Work Force
#> - old[4, ]  4.000000  2.000000       August    2005.000  6.000000 Female          Child     Zero Income           No Car Licence            N            N   No Licence            N            N          N       N            Primary No other activity     Primary School Not in Work Force       Not in Work Force                      Not in Work Force                                    Not in Work Force                          Not in Work Force                                Not In Work Force
#> - old[5, ]  1.000000  0.000000      January    1955.000 57.000000 Female         Spouse     $1-199 p.w.             Full Licence            N            N Some Licence            N            N          N       N           No Study           Retired            Retired Not in Work Force       Not in Work Force                      Not in Work Force                                    Not in Work Force                          Not in Work Force                                Not In Work Force
#> - old[6, ]  2.000000  5.000000         July    1955.000 56.000000   Male         Spouse   $300-399 p.w.             Full Licence            N            N Some Licence            N            N          N       N           No Study        Unemployed         Unemployed Not in Work Force       Not in Work Force                      Not in Work Force                                    Not in Work Force                          Not in Work Force                                Not In Work Force
#> - old[7, ]  3.000000  6.000000         June    1983.000 28.000000   Male          Child   $800-999 p.w.             Full Licence            N            N Some Licence            Y            N          N       Y           No Study No other activity     Full-time Work       Fixed Hours           Paid Employee         Technicians and Trades Workers                          Construction Trades Workers          Agriculture, Forestry and Fishing                                      Agriculture
#> - old[8, ]  4.000000  3.000000     February    1991.000 21.000000 Female          Child   $300-399 p.w. Red Probationary Licence            N            N Some Licence            N            N          N       N Full-time TAFE/Uni No other activity Full-time TAFE/Uni Not in Work Force       Not in Work Force                      Not in Work Force                                    Not in Work Force                          Not in Work Force                                Not In Work Force
#> - old[9, ]  1.000000  2.000000         July    1964.000 47.000000   Male           Self   $400-599 p.w.             Full Licence            N            N Some Licence            Y            N          N       Y           No Study No other activity     Full-time Work       Fixed Hours           Paid Employee         Technicians and Trades Workers                 TECHNICIANS AND TRADES WORKERS (NEC)                               Construction                            Building Construction
#> - old[10, ] 2.000000  4.000000         June    1965.000 46.000000 Female         Spouse   $400-599 p.w.             Full Licence            N            N Some Licence            N            Y          N       Y           No Study No other activity     Part-time Work       Fixed Hours           Paid Employee    Clerical and Administrative Workers                     Inquiry Clerks and Receptionists          Health Care and Social Assistance           Medical and Other Health Care Services
#> + new[1, ]  1.867230  4.061713    September    1976.128 35.651476   Male         Spouse     $2000+ p.w. Red Probationary Licence            Y            N   No Licence            Y            N          Y       N          Secondary        Unemployed        Casual Work    Work from Home       Not in Work Force                              Labourers                                  Hospitality Workers                              Manufacturing                          Administrative Services
#> + new[2, ]  4.406132 10.511343      January    1981.961 87.217349   Male         Spouse Negative Income           No Car Licence            Y            Y   No Licence            N            N          N       Y          Secondary Not Yet at School      Keeping House    Flexible Hours           Paid Employee    Clerical and Administrative Workers                MACHINERY OPERATORS AND DRIVERS (NEC)                               Retail Trade           Medical and Other Health Care Services
#> + new[3, ]  4.773898  6.734319     December    1953.362 76.427453 Female Other relative   $600-799 p.w.          Learners Permit            N            N Some Licence            N            N          N       Y           No Study Not Yet at School     Full-time Work Not in Work Force Work in Family Business                              Labourers                                   PROFESSIONAL (NEC)                     Education and Training                          Administrative Services
#> + new[4, ]  1.367150  9.895859        March    2005.072 84.090424 Female         Spouse $1500-1999 p.w.           No Car Licence            N            N   No Licence            N            N          N       N Full-time TAFE/Uni No other activity            Retired    Flexible Hours           Paid Employee         Technicians and Trades Workers                                  Specialist Managers                               Construction                     Education and Training (NEC)
#> + new[5, ]  4.339236  8.308964     February    1960.871 34.347028   Male          Child $1250-1499 p.w. Red Probationary Licence            N            Y   No Licence            Y            Y          N       N Full-time TAFE/Uni Not Yet at School Full-time TAFE/Uni   Rostered Shifts       Not in Work Force                              Labourers                          Construction Trades Workers          Health Care and Social Assistance                       Food and Beverage Services
#> + new[6, ]  3.246082  1.045340     December    1935.417  6.092125 Female           Self     $2000+ p.w.             Full Licence            N            N Some Licence            N            N          Y       N          Secondary Not Yet at School  Not Yet at School    Work from Home       Not in Work Force         Technicians and Trades Workers Business, Human Resource and Marketing Professionals                              Manufacturing Postal and Courier Pick-up and Delivery Services
#> + new[7, ]  1.046264  9.831873       August    2005.381 57.016056 Female          Child $1000-1249 p.w.           No Car Licence            N            N Some Licence            N            N          Y       N            Primary             Other            Retired Not in Work Force           Self-Employed        Machinery Operators and Drivers            Automotive and Engineering Trades Workers                              Manufacturing                               Tertiary Education
#> + new[8, ]  2.266760  6.936275      October    2010.673 67.742261 Female         Spouse     Zero Income          Learners Permit            N            N Some Licence            Y            N          N       Y Full-time TAFE/Uni No other activity            Retired Not in Work Force           Self-Employed        Machinery Operators and Drivers                          Food Preparation Assistants   Information Media and Telecommunications                            Building Construction
#> + new[9, ]  3.214490  6.381118     December    1979.240 68.235602 Female          Child   $400-599 p.w.           No Car Licence            Y            Y   No Licence            Y            N          Y       N           No Study     Keeping House        Casual Work   Rostered Shifts           Self-Employed         Technicians and Trades Workers             CLERICAL AND ADMINISTRATIVE WORKERS(NEC)                          Not in Work Force                      Other Store-Based Retailing
#> + new[10, ] 3.726736  3.794470        April    2008.322 47.937255 Female         Spouse   $400-599 p.w.             Full Licence            Y            Y Some Licence            N            N          Y       N            Primary           Retired     Primary School Not in Work Force       Not in Work Force                          Sales Workers                  Sports and Personal Service Workers Electricity, Gas, Water and Waste Services                       Food Product Manufacturing
#> + NA                startplace additionaltravel cycledexercise nocycled disabledtrans taxitrans wheelchairtrans accesstrans wdperswgt weperswgt
#> + NA            Survey address                N              N        Y             N         N               N           N  84.77000        NA
#> + NA            Survey address                N              N        Y             N         N               N           N  92.98000        NA
#> + NA            Survey address                N              N        Y             N         N               N           N 100.23000        NA
#> + NA            Survey address                N              N        Y             N         N               N           N  99.02000        NA
#> + NA            Survey address              N/A              N        Y             N         N               N           N  82.61000        NA
#> + NA            Survey address                N              N        Y             N         N               N           N  85.31000        NA
#> + NA            Survey address                N              N        Y             N         N               N           N 134.39000        NA
#> + NA            Survey address                N              N        Y             N         N               N           N 130.14000        NA
#> + NA            Survey address                N              N        Y             N         N               N           N  97.50000        NA
#> + NA            Survey address                N              N        Y             N         N               N           N  94.41000        NA
#> + NA            Survey address                N              N        N             N       N/A             N/A         N/A  86.88947  434.5598
#> + NA                      Work              N/A              N        N           N/A       N/A               Y           N 129.81710  241.5609
#> + NA                      Work                N              N        Y             Y       N/A               Y         N/A 128.04302  368.3501
#> + NA                      Work              N/A              Y        Y             N       N/A             N/A         N/A 126.93791  452.6990
#> + NA Under 5 - No Travel Diary                N              Y        N             Y       N/A               N           N  87.05203  271.6284
#> + NA                      Work                Y              N        N             N         N               Y           N  95.82519  463.7940
#> + NA Under 5 - No Travel Diary                Y              Y        Y             Y       N/A               Y           N 100.20877  419.9886
#> + NA                      Work              N/A              N        N             N         N               N           N 128.54969  414.4366
#> + NA Under 5 - No Travel Diary                Y              N        Y             N         N               N           N  98.88849  454.1978
#> + NA            Survey address                Y              Y        Y             N       N/A               N         N/A  75.63135  278.1884
#> 
#> `old$person`: 1.0 2.0 3.0 4.0 1.0 2.0 3.0 4.0 1.0 2.0
#> `new$person`: 1.9 4.4 4.8 1.4 4.3 3.2 1.0 2.3 3.2 3.7
#> 
#> `old$numstops`: 2.0  5.0 2.0 2.0 0.0 5.0 6.0 3.0 2.0 4.0
#> `new$numstops`: 4.1 10.5 6.7 9.9 8.3 1.0 9.8 6.9 6.4 3.8
#> 
#> `old$monthofbirth`: "April"     "January" "July"     "August" "January"  "July"     "June"   "February" "July"     "June" 
#> `new$monthofbirth`: "September" "January" "December" "March"  "February" "December" "August" "October"  "December" "April"
#> 
#> `old$yearofbirth`: 1962.00 1969.00 2000.00 2005.00 1955.00 1955.00 1983.00 1991.00 1964.00 1965.00
#> `new$yearofbirth`: 1976.13 1981.96 1953.36 2005.07 1960.87 1935.42 2005.38 2010.67 1979.24 2008.32
#> 
#> `old$age`: 50 43 11  6 57 56 28 21 47 46
#> `new$age`: 36 87 76 84 34  6 57 68 68 48
#> 
#> `old$sex`: "Male" "Female" "Female" "Female" "Female" "Male"   "Male"   "Female" "Male"   "Female"
#> `new$sex`: "Male" "Male"   "Female" "Female" "Male"   "Female" "Female" "Female" "Female" "Female"
#> 
#> `old$relationship`: "Self"   "Spouse" "Child"          "Child"  "Spouse" "Spouse" "Child" "Child"  "Self"  "Spouse"
#> `new$relationship`: "Spouse" "Spouse" "Other relative" "Spouse" "Child"  "Self"   "Child" "Spouse" "Child" "Spouse"
#> 
#> `old$persinc`: "$1000-1249 p.w." "$1-199 p.w."     "Zero Income"   "Zero Income"     "$1-199 p.w."     "$300-399 p.w." "$800-999 p.w."   "$300-399 p.w." "$400-599 p.w." "$400-599 p.w."
#> `new$persinc`: "$2000+ p.w."     "Negative Income" "$600-799 p.w." "$1500-1999 p.w." "$1250-1499 p.w." "$2000+ p.w."   "$1000-1249 p.w." "Zero Income"   "$400-599 p.w." "$400-599 p.w."
#> 
#> `old$carlicence`: "Full Licence"             "Full Licence"   "No Car Licence"  "No Car Licence" "Full Licence"             "Full Licence" "Full Licence"   "Red Probationary Licence" "Full Licence"   "Full Licence"
#> `new$carlicence`: "Red Probationary Licence" "No Car Licence" "Learners Permit" "No Car Licence" "Red Probationary Licence" "Full Licence" "No Car Licence" "Learners Permit"          "No Car Licence" "Full Licence"
#> 
#> And 27 more differences ...
```
