
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
#> 1            5.1    2.463810     3.364469   1.8083822     setosa
#> 2            4.9    2.126761     3.089621   1.1200929     setosa
#> 3            4.7    3.061467     2.158000   2.4303173     setosa
#> 4            4.6    3.534875     2.952089   1.8856135     setosa
#> 5            5.0    3.892336     6.289876   1.6340912     setosa
#> 6            5.4    4.172848     4.039436   0.4910606     setosa
#> 7            4.6    2.275100     4.385109   0.9553123     setosa
#> 8            5.0    4.380701     4.605626   1.3031661     setosa
#> 9            4.4    2.092856     4.747918   1.1228274     setosa
#> 10           4.9    2.177380     3.884703   0.5816475     setosa
#> 11           5.4    3.326295     3.464753   0.1022342     setosa
#> 12           4.8    3.740266     1.854381   0.3982673     setosa
#> 13           4.8    3.878590     6.335492   1.0223877     setosa
#> 14           4.3    3.885670     6.219652   0.4826850     setosa
#> 15           5.8    2.810814     2.242342   0.3404509     setosa
#> 16           5.7    3.040078     5.372339   2.1850061     setosa
#> 17           5.4    2.499063     3.347708   1.2095130     setosa
#> 18           5.1    3.377039     6.277336   1.5638515     setosa
#> 19           5.7    3.897305     4.773799   0.9163350     setosa
#> 20           5.1    2.335475     1.806663   0.8383057     setosa
#> 21           5.4    2.084936     4.704883   2.4033804     setosa
#> 22           5.1    2.437959     5.453939   1.6760755     setosa
#> 23           4.6    3.585714     1.865589   0.3619511     setosa
#> 24           5.1    2.648731     6.252105   2.4955761     setosa
#> 25           4.8    2.210858     1.719689   2.1366491     setosa
#> 26           5.0    3.721953     5.363695   2.0027681     setosa
#> 27           5.0    3.408799     5.546479   1.8507315     setosa
#> 28           5.2    2.077705     6.163742   1.2203113     setosa
#> 29           5.2    2.067777     2.612103   0.1635838     setosa
#> 30           4.7    4.242999     4.549633   1.8929095     setosa
#> 31           4.8    2.512291     4.219751   1.6021330     setosa
#> 32           5.4    3.095465     6.719905   0.3464480     setosa
#> 33           5.2    3.536298     3.254128   1.5177973     setosa
#> 34           5.5    3.287863     1.271257   0.5380795     setosa
#> 35           4.9    4.069510     5.476965   1.6005209     setosa
#> 36           5.0    2.981567     6.037945   0.5472822     setosa
#> 37           5.5    2.290471     5.720493   0.8259052     setosa
#> 38           4.9    3.836275     5.339317   2.3189490     setosa
#> 39           4.4    3.598031     5.066072   0.9597571     setosa
#> 40           5.1    4.020898     4.735306   1.2772976     setosa
#> 41           5.0    2.662709     6.062540   0.8590580     setosa
#> 42           4.5    3.633211     6.121717   1.2498076     setosa
#> 43           4.4    2.268135     3.976003   1.1814697     setosa
#> 44           5.0    2.311773     4.071587   1.5097463     setosa
#> 45           5.1    3.101610     6.414188   0.8380254     setosa
#> 46           4.8    4.139028     3.459873   0.4810057     setosa
#> 47           5.1    3.060595     4.036834   1.3830693     setosa
#> 48           4.6    3.474727     2.854082   2.1556658     setosa
#> 49           5.3    2.796185     1.860310   0.5019217     setosa
#> 50           5.0    3.035884     4.634828   1.7363078     setosa
#> 51           7.0    3.249397     6.734043   2.0465575 versicolor
#> 52           6.4    3.587713     2.509027   1.4879097 versicolor
#> 53           6.9    3.991490     1.950529   0.3306611 versicolor
#> 54           5.5    3.063819     4.497346   1.6286304 versicolor
#> 55           6.5    3.613646     2.493929   2.1854386 versicolor
#> 56           5.7    2.596728     1.573986   1.9117011 versicolor
#> 57           6.3    2.374804     1.992736   0.8379280 versicolor
#> 58           4.9    4.072223     5.661072   1.1600779 versicolor
#> 59           6.6    2.237463     2.388915   1.7716646 versicolor
#> 60           5.2    2.164524     5.254984   1.7716003 versicolor
#> 61           5.0    2.170022     5.053935   0.9202709 versicolor
#> 62           5.9    4.136790     1.916934   2.3014756 versicolor
#> 63           6.0    4.272671     1.894695   2.2299982 versicolor
#> 64           6.1    2.275532     5.899733   1.5617653 versicolor
#> 65           5.6    4.300575     4.583848   1.9661499 versicolor
#> 66           6.7    3.978065     5.450184   0.1217998 versicolor
#> 67           5.6    3.921948     4.889486   1.0881049 versicolor
#> 68           5.8    3.792397     1.540267   1.9618261 versicolor
#> 69           6.2    4.359093     4.503975   1.2825933 versicolor
#> 70           5.6    3.486397     6.699799   1.3964757 versicolor
#> 71           5.9    2.115748     6.577324   1.9948607 versicolor
#> 72           6.1    2.314141     5.984039   0.1489078 versicolor
#> 73           6.3    4.225974     5.110221   1.1563167 versicolor
#> 74           6.1    3.020883     4.461398   0.2732258 versicolor
#> 75           6.4    3.094989     2.826189   2.2581195 versicolor
#> 76           6.6    4.172993     3.438166   0.3488927 versicolor
#> 77           6.8    4.208144     6.073039   1.4559559 versicolor
#> 78           6.7    3.497873     3.909184   1.9552019 versicolor
#> 79           6.0    4.077884     4.445320   1.8568452 versicolor
#> 80           5.7    3.417869     1.517326   1.4978620 versicolor
#> 81           5.5    4.326106     4.293036   0.9364946 versicolor
#> 82           5.5    2.815222     2.703974   1.4114436 versicolor
#> 83           5.8    2.552559     6.391706   0.8800990 versicolor
#> 84           6.0    2.488015     2.479940   1.6943215 versicolor
#> 85           5.4    3.177192     2.533493   0.6814240 versicolor
#> 86           6.0    3.940315     2.702390   2.0146830 versicolor
#> 87           6.7    2.225938     3.568648   1.6839886 versicolor
#> 88           6.3    4.085011     4.744313   1.6566594 versicolor
#> 89           5.6    3.055756     6.088738   0.3669600 versicolor
#> 90           5.5    2.324834     2.305914   1.8751879 versicolor
#> 91           5.5    3.863788     4.690690   0.1831414 versicolor
#> 92           6.1    2.477132     1.662703   1.5982184 versicolor
#> 93           5.8    3.462803     2.097545   0.5508025 versicolor
#> 94           5.0    4.138453     5.859053   0.6858549 versicolor
#> 95           5.6    2.558409     4.364940   2.2058611 versicolor
#> 96           5.7    3.356911     3.781422   1.7812510 versicolor
#> 97           5.7    3.101407     5.130488   0.9602607 versicolor
#> 98           6.2    2.163215     3.731972   1.1487154 versicolor
#> 99           5.1    3.685101     2.986342   0.4068785 versicolor
#> 100          5.7    3.466094     2.123481   2.1601475 versicolor
#> 101          6.3    2.185311     6.087604   0.5841860  virginica
#> 102          5.8    3.227138     6.563166   0.5593225  virginica
#> 103          7.1    3.831027     3.715148   2.2882488  virginica
#> 104          6.3    2.893641     3.408688   1.8620398  virginica
#> 105          6.5    3.553162     3.158674   0.4141593  virginica
#> 106          7.6    3.278663     6.379538   1.8621398  virginica
#> 107          4.9    2.345453     2.748023   1.5846870  virginica
#> 108          7.3    2.494294     4.079224   0.2528868  virginica
#> 109          6.7    2.783113     2.416077   0.4213538  virginica
#> 110          7.2    2.306885     5.318763   0.8668486  virginica
#> 111          6.5    2.427534     5.046933   0.4620641  virginica
#> 112          6.4    4.359317     5.769431   2.1906705  virginica
#> 113          6.8    2.144565     5.658490   1.6302363  virginica
#> 114          5.7    3.396136     3.335983   0.7337734  virginica
#> 115          5.8    3.523534     6.454418   0.5380411  virginica
#> 116          6.4    3.186082     6.806650   1.3628395  virginica
#> 117          6.5    3.054655     1.387094   0.7010749  virginica
#> 118          7.7    2.650987     1.907837   1.4175728  virginica
#> 119          7.7    2.387399     3.548423   2.2628473  virginica
#> 120          6.0    4.338025     2.292112   2.2171973  virginica
#> 121          6.9    2.238652     2.598859   1.7360671  virginica
#> 122          5.6    3.098009     6.580021   0.6865738  virginica
#> 123          7.7    4.374122     2.065476   2.3346318  virginica
#> 124          6.3    2.268877     2.634829   1.7028200  virginica
#> 125          6.7    4.331604     5.314915   2.0107518  virginica
#> 126          7.2    4.079317     2.464109   1.6495504  virginica
#> 127          6.2    2.662890     4.985297   2.4428860  virginica
#> 128          6.1    4.006539     1.477972   0.8066987  virginica
#> 129          6.4    3.240486     3.773864   0.6414427  virginica
#> 130          7.2    3.970336     4.631778   1.4748749  virginica
#> 131          7.4    2.007440     3.482905   0.8856700  virginica
#> 132          7.9    2.874937     5.850109   0.1086960  virginica
#> 133          6.4    3.970289     3.346919   0.3174149  virginica
#> 134          6.3    4.286070     2.905639   0.3262360  virginica
#> 135          6.1    2.835720     5.767273   2.1627198  virginica
#> 136          7.7    3.823649     4.625797   1.9950444  virginica
#> 137          6.3    2.723051     5.019356   2.2808305  virginica
#> 138          6.4    2.188321     2.217967   1.7172324  virginica
#> 139          6.0    3.615074     3.009906   2.1800713  virginica
#> 140          6.9    2.578083     3.711061   0.5999795  virginica
#> 141          6.7    3.158685     4.134906   1.0246809  virginica
#> 142          6.9    3.464600     4.725013   2.2084258  virginica
#> 143          5.8    4.160384     2.658240   0.2673665  virginica
#> 144          6.8    3.710553     1.788452   2.0551243  virginica
#> 145          6.7    3.314054     2.479870   1.6459845  virginica
#> 146          6.7    2.754040     1.054330   1.9484285  virginica
#> 147          6.3    2.617271     1.983145   1.0488087  virginica
#> 148          6.5    3.134709     3.873157   0.5462248  virginica
#> 149          6.2    3.972285     1.656428   1.6657764  virginica
#> 150          5.9    2.822477     2.194707   2.3579679  virginica
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
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D46648 / R46648C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D46669 / R46669C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D46710 / R46710C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D46734 / R46734C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D46865 / R46865C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D46900 / R46900C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D46901 / R46901C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D46936 / R46936C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D46941 / R46941C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D46967 / R46967C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47024 / R47024C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47035 / R47035C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47085 / R47085C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47086 / R47086C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47118 / R47118C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47127 / R47127C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47130 / R47130C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47135 / R47135C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47142 / R47142C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47180 / R47180C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47183 / R47183C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47261 / R47261C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47293 / R47293C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47301 / R47301C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47328 / R47328C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47346 / R47346C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47362 / R47362C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47378 / R47378C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47398 / R47398C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47399 / R47399C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47404 / R47404C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47438 / R47438C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47519 / R47519C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47541 / R47541C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47681 / R47681C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47693 / R47693C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47735 / R47735C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47798 / R47798C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47829 / R47829C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47875 / R47875C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47876 / R47876C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47892 / R47892C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47893 / R47893C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47901 / R47901C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47936 / R47936C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D47947 / R47947C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48015 / R48015C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48025 / R48025C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48027 / R48027C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48028 / R48028C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48088 / R48088C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48090 / R48090C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48216 / R48216C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48275 / R48275C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48276 / R48276C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48294 / R48294C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48295 / R48295C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48296 / R48296C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48340 / R48340C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48387 / R48387C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48418 / R48418C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48419 / R48419C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48445 / R48445C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48451 / R48451C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48541 / R48541C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48580 / R48580C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48611 / R48611C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48660 / R48660C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48665 / R48665C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48698 / R48698C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48721 / R48721C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48727 / R48727C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48730 / R48730C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48731 / R48731C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48742 / R48742C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48808 / R48808C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48839 / R48839C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48883 / R48883C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48884 / R48884C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48885 / R48885C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48900 / R48900C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48932 / R48932C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48933 / R48933C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D48944 / R48944C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49110 / R49110C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49234 / R49234C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49246 / R49246C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49247 / R49247C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49331 / R49331C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49347 / R49347C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49376 / R49376C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49377 / R49377C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49396 / R49396C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49410 / R49410C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49436 / R49436C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49447 / R49447C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49449 / R49449C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49452 / R49452C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49453 / R49453C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49471 / R49471C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49585 / R49585C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49586 / R49586C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49594 / R49594C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49616 / R49616C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49617 / R49617C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49628 / R49628C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49636 / R49636C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49637 / R49637C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49645 / R49645C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49663 / R49663C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49668 / R49668C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49729 / R49729C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49768 / R49768C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49775 / R49775C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49776 / R49776C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49777 / R49777C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49802 / R49802C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49825 / R49825C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49870 / R49870C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D49943 / R49943C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50039 / R50039C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50063 / R50063C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50118 / R50118C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50135 / R50135C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50158 / R50158C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50160 / R50160C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50179 / R50179C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50339 / R50339C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50386 / R50386C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50411 / R50411C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50421 / R50421C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50425 / R50425C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50471 / R50471C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50484 / R50484C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50511 / R50511C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50523 / R50523C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50636 / R50636C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50648 / R50648C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50652 / R50652C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50675 / R50675C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50747 / R50747C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50761 / R50761C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50802 / R50802C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50828 / R50828C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50829 / R50829C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50929 / R50929C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50995 / R50995C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D50996 / R50996C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51037 / R51037C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51038 / R51038C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51056 / R51056C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51081 / R51081C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51082 / R51082C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51151 / R51151C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51175 / R51175C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51197 / R51197C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51228 / R51228C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51238 / R51238C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51271 / R51271C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51274 / R51274C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51345 / R51345C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51359 / R51359C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51373 / R51373C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51439 / R51439C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51533 / R51533C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51581 / R51581C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51701 / R51701C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51731 / R51731C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51732 / R51732C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51743 / R51743C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51764 / R51764C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51766 / R51766C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51836 / R51836C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51837 / R51837C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51873 / R51873C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51879 / R51879C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D51960 / R51960C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52005 / R52005C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52022 / R52022C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52025 / R52025C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52191 / R52191C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52194 / R52194C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52202 / R52202C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52220 / R52220C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52256 / R52256C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52258 / R52258C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52269 / R52269C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52303 / R52303C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52308 / R52308C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52336 / R52336C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52337 / R52337C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52338 / R52338C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52384 / R52384C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52406 / R52406C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52412 / R52412C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52419 / R52419C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52471 / R52471C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52476 / R52476C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52505 / R52505C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52536 / R52536C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52537 / R52537C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52575 / R52575C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52588 / R52588C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52589 / R52589C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52620 / R52620C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52621 / R52621C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52631 / R52631C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52708 / R52708C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52750 / R52750C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52787 / R52787C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52791 / R52791C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52796 / R52796C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52810 / R52810C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52842 / R52842C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52863 / R52863C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52864 / R52864C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52877 / R52877C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52900 / R52900C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D52960 / R52960C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53106 / R53106C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53154 / R53154C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53164 / R53164C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53337 / R53337C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53341 / R53341C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53420 / R53420C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53469 / R53469C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53480 / R53480C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53495 / R53495C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53519 / R53519C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53613 / R53613C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53623 / R53623C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53634 / R53634C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53661 / R53661C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53662 / R53662C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53711 / R53711C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53712 / R53712C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53769 / R53769C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53850 / R53850C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53853 / R53853C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53863 / R53863C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53873 / R53873C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53874 / R53874C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53894 / R53894C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53931 / R53931C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D53970 / R53970C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54139 / R54139C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54140 / R54140C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54174 / R54174C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54184 / R54184C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54335 / R54335C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54339 / R54339C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54340 / R54340C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54352 / R54352C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54357 / R54357C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54385 / R54385C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54520 / R54520C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54598 / R54598C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54680 / R54680C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54716 / R54716C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54720 / R54720C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54721 / R54721C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54762 / R54762C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54849 / R54849C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54890 / R54890C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54909 / R54909C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54928 / R54928C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54944 / R54944C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54968 / R54968C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54969 / R54969C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D54998 / R54998C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55010 / R55010C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55019 / R55019C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55024 / R55024C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55053 / R55053C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55054 / R55054C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55082 / R55082C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55089 / R55089C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55093 / R55093C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55170 / R55170C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55171 / R55171C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55193 / R55193C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55194 / R55194C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55241 / R55241C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55298 / R55298C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55393 / R55393C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55402 / R55402C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55422 / R55422C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55423 / R55423C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55474 / R55474C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55533 / R55533C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55543 / R55543C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55567 / R55567C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55609 / R55609C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55614 / R55614C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55615 / R55615C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55687 / R55687C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55707 / R55707C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55721 / R55721C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55733 / R55733C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55771 / R55771C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55772 / R55772C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55801 / R55801C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55871 / R55871C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D55960 / R55960C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56010 / R56010C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56023 / R56023C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56024 / R56024C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56042 / R56042C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56095 / R56095C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56096 / R56096C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56108 / R56108C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56179 / R56179C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56180 / R56180C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56192 / R56192C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56193 / R56193C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56239 / R56239C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56269 / R56269C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56337 / R56337C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56343 / R56343C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56359 / R56359C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56395 / R56395C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56434 / R56434C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56435 / R56435C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56436 / R56436C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56449 / R56449C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56450 / R56450C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56451 / R56451C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56456 / R56456C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56499 / R56499C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56519 / R56519C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56526 / R56526C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56561 / R56561C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56562 / R56562C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56624 / R56624C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56633 / R56633C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56666 / R56666C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56673 / R56673C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56674 / R56674C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56706 / R56706C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56707 / R56707C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56739 / R56739C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56762 / R56762C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56764 / R56764C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56834 / R56834C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56835 / R56835C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56839 / R56839C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56840 / R56840C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56852 / R56852C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56868 / R56868C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56877 / R56877C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56890 / R56890C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56985 / R56985C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D56995 / R56995C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57025 / R57025C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57039 / R57039C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57117 / R57117C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57136 / R57136C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57202 / R57202C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57206 / R57206C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57211 / R57211C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57271 / R57271C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57383 / R57383C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57384 / R57384C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57385 / R57385C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57456 / R57456C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57498 / R57498C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57525 / R57525C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57539 / R57539C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57540 / R57540C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57545 / R57545C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57546 / R57546C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57549 / R57549C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57550 / R57550C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57730 / R57730C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57781 / R57781C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57807 / R57807C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57828 / R57828C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57840 / R57840C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57893 / R57893C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57959 / R57959C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57986 / R57986C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D57995 / R57995C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58073 / R58073C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58074 / R58074C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58076 / R58076C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58121 / R58121C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58128 / R58128C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58147 / R58147C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58148 / R58148C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58163 / R58163C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58166 / R58166C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58179 / R58179C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58180 / R58180C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58183 / R58183C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58193 / R58193C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58202 / R58202C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58229 / R58229C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58363 / R58363C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58364 / R58364C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58367 / R58367C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58368 / R58368C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58439 / R58439C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58480 / R58480C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58538 / R58538C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58546 / R58546C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58554 / R58554C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58669 / R58669C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58716 / R58716C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58728 / R58728C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58761 / R58761C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58764 / R58764C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58767 / R58767C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58810 / R58810C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58820 / R58820C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58821 / R58821C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58881 / R58881C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58890 / R58890C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58891 / R58891C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58894 / R58894C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58963 / R58963C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D58964 / R58964C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59074 / R59074C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59129 / R59129C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59157 / R59157C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59159 / R59159C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59179 / R59179C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59192 / R59192C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59303 / R59303C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59332 / R59332C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59338 / R59338C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59340 / R59340C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59342 / R59342C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59347 / R59347C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59352 / R59352C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59355 / R59355C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59356 / R59356C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59376 / R59376C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59496 / R59496C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59497 / R59497C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59541 / R59541C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59583 / R59583C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59584 / R59584C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59588 / R59588C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59590 / R59590C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59591 / R59591C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59612 / R59612C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59613 / R59613C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59619 / R59619C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59633 / R59633C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59642 / R59642C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59653 / R59653C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59714 / R59714C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59729 / R59729C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59732 / R59732C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59789 / R59789C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D59812 / R59812C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60105 / R60105C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60138 / R60138C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60232 / R60232C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60322 / R60322C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60339 / R60339C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60352 / R60352C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60388 / R60388C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60401 / R60401C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60432 / R60432C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60458 / R60458C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60506 / R60506C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60550 / R60550C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60551 / R60551C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60552 / R60552C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60624 / R60624C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60651 / R60651C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60655 / R60655C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60656 / R60656C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60676 / R60676C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60692 / R60692C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60702 / R60702C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60809 / R60809C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60833 / R60833C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60851 / R60851C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60932 / R60932C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60944 / R60944C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60965 / R60965C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60966 / R60966C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60977 / R60977C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D60995 / R60995C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61002 / R61002C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61101 / R61101C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61103 / R61103C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61107 / R61107C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61108 / R61108C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61113 / R61113C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61116 / R61116C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61118 / R61118C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61292 / R61292C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61298 / R61298C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61299 / R61299C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61351 / R61351C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61352 / R61352C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61360 / R61360C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61361 / R61361C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61362 / R61362C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61374 / R61374C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61395 / R61395C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61401 / R61401C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61443 / R61443C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61444 / R61444C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61445 / R61445C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61495 / R61495C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61528 / R61528C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61529 / R61529C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61542 / R61542C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61555 / R61555C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61588 / R61588C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61615 / R61615C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61671 / R61671C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61690 / R61690C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61700 / R61700C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61722 / R61722C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61736 / R61736C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61737 / R61737C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61752 / R61752C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61768 / R61768C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61789 / R61789C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61887 / R61887C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61888 / R61888C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61889 / R61889C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61909 / R61909C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61914 / R61914C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61917 / R61917C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61919 / R61919C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61922 / R61922C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61923 / R61923C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D61940 / R61940C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62000 / R62000C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62001 / R62001C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62027 / R62027C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62060 / R62060C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62070 / R62070C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62092 / R62092C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62129 / R62129C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62145 / R62145C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62182 / R62182C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62201 / R62201C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62205 / R62205C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62221 / R62221C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62232 / R62232C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62390 / R62390C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62417 / R62417C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62535 / R62535C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62565 / R62565C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62581 / R62581C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62604 / R62604C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62638 / R62638C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62701 / R62701C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62763 / R62763C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62766 / R62766C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62767 / R62767C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62841 / R62841C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62883 / R62883C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62916 / R62916C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62920 / R62920C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62941 / R62941C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D62966 / R62966C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63028 / R63028C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63149 / R63149C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63162 / R63162C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63178 / R63178C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63231 / R63231C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63264 / R63264C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63286 / R63286C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63289 / R63289C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63337 / R63337C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63358 / R63358C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63383 / R63383C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63392 / R63392C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63413 / R63413C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63492 / R63492C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63513 / R63513C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63553 / R63553C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63572 / R63572C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63626 / R63626C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63631 / R63631C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63633 / R63633C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63649 / R63649C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63692 / R63692C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63693 / R63693C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63694 / R63694C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63710 / R63710C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63722 / R63722C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63731 / R63731C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63761 / R63761C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63785 / R63785C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63806 / R63806C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63832 / R63832C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63843 / R63843C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63853 / R63853C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63883 / R63883C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63886 / R63886C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63892 / R63892C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63906 / R63906C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63908 / R63908C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63996 / R63996C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D63999 / R63999C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64042 / R64042C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64057 / R64057C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64080 / R64080C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64103 / R64103C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64114 / R64114C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64164 / R64164C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64268 / R64268C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64366 / R64366C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64367 / R64367C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64373 / R64373C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64374 / R64374C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64375 / R64375C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64390 / R64390C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64393 / R64393C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64450 / R64450C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64454 / R64454C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64455 / R64455C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64464 / R64464C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64478 / R64478C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64593 / R64593C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64641 / R64641C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64720 / R64720C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64803 / R64803C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64823 / R64823C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64847 / R64847C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64860 / R64860C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64861 / R64861C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64862 / R64862C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64891 / R64891C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64919 / R64919C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64920 / R64920C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64953 / R64953C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64967 / R64967C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64973 / R64973C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64974 / R64974C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D64982 / R64982C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65056 / R65056C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65096 / R65096C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65209 / R65209C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65299 / R65299C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65325 / R65325C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65351 / R65351C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65404 / R65404C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65405 / R65405C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65457 / R65457C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65497 / R65497C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65498 / R65498C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65529 / R65529C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65530 / R65530C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65562 / R65562C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65563 / R65563C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65576 / R65576C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65607 / R65607C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65626 / R65626C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65633 / R65633C4: got 'Under 5 - No Travel Diary'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65645 / R65645C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65675 / R65675C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65676 / R65676C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65693 / R65693C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65702 / R65702C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65717 / R65717C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65756 / R65756C4: got 'Refused to complete diary/Missing'
#> Warning in read_fun(path = enc2native(normalizePath(path)), sheet_i = sheet, : Expecting numeric in D65848 / R65848C4: got 'Refused to complete diary/Missing'
#> Rows: 25670 Columns: 32
#> ── Column specification ─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr (11): HHID, SurveyPeriod, TRAVDOW, TRAVMONTH, DayType, DWELLTYPE, OWNDWELL, HHINC, HOMELGA, HomeSubRegion, HomeRegion
#> dbl (21): HHSIZE, VISITORS, AVEAGE, YOUNGEST, OLDEST, YEARSLIVED, MONTHSLIVED, ADULTBIKES, KIDSBIKES, TOTALBIKES, CARS, FOURWDS, UTES, VANS, TRUCKS, MBIKES, OTHERVEHS, TOTALVEHS, WDHHWGT, WEHHWGT, HOMEPC
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> Warning: One or more parsing issues, see `problems()` for details
#> Rows: 174270 Columns: 59
#> ── Column specification ─────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
#> Delimiter: ","
#> chr (45): TRIPID, PERSID, HHID, DEPHOUR, DEPTIME, DURATION, ORIGLGA, ORIGPLACE1, ORIGPLACE2, ORIGPURP1, ORIGPURP2, DESTLGA, DESTPLACE1, DESTPLACE2, DESTPURP1, DESTPURP2, TRIPPURP, LINKMODE, MODE1, MODE2, MODE3, MODE4, MODE5, MODE6, MODE7, MODE8, MODE9, DIST_GRP...
#> dbl (13): STOPS, TRIPNO, STARTHOUR, STARTIME, ARRHOUR, ARRTIME, CUMDIST, TRAVTIME, TRIPTIME, WAITIME, DIST1, TIME1, WDTRIPWGT
#> 
#> ℹ Use `spec()` to retrieve the full column specification for this data.
#> ℹ Specify the column types or set `show_col_types = FALSE` to quiet this message.
#> Warning: One or more parsing issues, see `problems()` for details
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
#> Warning: One or more parsing issues, see `problems()` for details
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
#> `old$person`: 1.00 2.00 3.00 4.00  1.00 2.00 3.00 4.00 1.00 2.00
#> `new$person`: 9.83 2.06 7.14 7.66 10.73 8.53 5.00 7.67 7.30 2.21
#> 
#> `old$numstops`:  2 5 2  2  0  5 6  3  2  4
#> `new$numstops`: 23 0 4 10 17 25 3 17 24 17
#> 
#> `old$monthofbirth`: "April" "January"  "July" "August"    "January" "July"    "June"  "February" "July" "June"   
#> `new$monthofbirth`: "May"   "November" "May"  "September" "July"    "October" "March" "March"    "May"  "October"
#> 
#> `old$yearofbirth`: 1962 1969 2000 2005 1955 1955 1983 1991 1964 1965
#> `new$yearofbirth`: 1951 2010 1902 1905 1995 1921 1943 1902 1938 2002
#> 
#> `old$age`:  50 43 11  6 57  56 28 21 47 46
#> `new$age`: 116 41 53 43 97 105 46 14 93  9
#> 
#> `old$sex`: "Male" "Female" "Female" "Female" "Female" "Male" "Male" "Female" "Male"   "Female"
#> `new$sex`: "Male" "Male"   "Female" "Male"   "Female" "Male" "Male" "Female" "Female" "Female"
#> 
#> `old$relationship`: "Self"  "Spouse" "Child" "Child" "Spouse" "Spouse" "Child"      "Child" "Self"    "Spouse"
#> `new$relationship`: "Other" "Other"  "Self"  "Other" "Spouse" "Child"  "Grandchild" "Child" "Sibling" "Other" 
#> 
#> `old$persinc`: "$1000-1249 p.w." "$1-199 p.w."   "Zero Income"   "Zero Income"   "$1-199 p.w." "$300-399 p.w."   "$800-999 p.w." "$300-399 p.w."   "$400-599 p.w." "$400-599 p.w."  
#> `new$persinc`: "$1500-1999 p.w." "$600-799 p.w." "$300-399 p.w." "$800-999 p.w." "$1-199 p.w." "$1250-1499 p.w." "$800-999 p.w." "$1000-1249 p.w." "$2000+ p.w."   "Negative Income"
#> 
#> And 30 more differences ...
```
