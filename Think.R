> install.packages("Thinknum")
Installing package into ‘C:/Users/Sam/Documents/R/win-library/3.2’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/3.2/Thinknum_1.3.0.zip'
Content type 'application/zip' length 10374 bytes (10 KB)
downloaded 10 KB

package ‘Thinknum’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
	C:\Users\Sam\AppData\Local\Temp\RtmpGwdXeS\downloaded_packages
> library("Thinknum")
> goog <- Thinknum("goog")
> plot(goog,type="l")
> plot(goog,type="b")
> help("plot")
> plot(goog,type="h")
> type(goog)
Error: could not find function "type"
> class(goog)
[1] "data.frame"
> str(goog)
'data.frame':	503 obs. of  2 variables:
 $ date_time: Date, format: "2014-03-27" "2014-03-28" "2014-03-31" ...
 $ goog     : num  558 560 557 567 567 ...
> 
> dim(goog)
[1] 503   2