library(statcanR)

#https://cran.r-project.org/web/packages/statcanR/vignettes/statCanR.html

#https://www.statcan.gc.ca/en/microdata/newsletter/spring2023


# Identify with statcan_search() function

statcan_search(c("mental health", "youth"),"eng")
# Get data with statcan_data function
mydata <- statcan_download_data("13-10-0763-01", "eng")

 df <- statcan_download_data("13-10-0815-01", "eng")
