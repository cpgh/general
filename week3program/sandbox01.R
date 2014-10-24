

my_ellipsis_function <- function(...) {   ###SAMPLE FUNCTION
     input_list <- as.list(substitute(list(...)))
     }


###

df <- data.frame(x=rnorm(5),y=runif(5))
names(df) <- 1:2
df
df$`1`
#1         2
#1 -1.2035003 0.6989573
#2 -1.2146266 0.8272276
#3  0.3563335 0.0947696
#4 -0.4372646 0.9765767
#5 -0.9952423 0.6477714
#> df$1
#Error: unexpected numeric constant in "df$1"
#  THIS WORKS!!!  Single backticks...work inside formulass where ["1"]  will NOT!! > df$`1`
#[1] -1.2035003 -1.2146266  0.3563335 -0.4372646 -0.9952423


myhist <- function(x, border="blue", ...){
     hist(x, border=border, ...)
}
set.seed(5)
#png("ellipsis1.png")
myhist(rnorm(1000), breaks=30)
#dev.off()
set.seed(5)
#png("ellipsis2.png")
myhist(rnorm(1000)) 
#dev.off()