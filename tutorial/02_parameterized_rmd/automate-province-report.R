# 0. 환경설정 ---------------------------------------
library(tidyverse)

# 1. 시도명 ---------------------------------------
provinces <- c("강원도", "경기도", "경상남도", "경상북도", "광주광역시", "대구광역시", 
               "대전광역시", "부산광역시", "서울특별시", "세종특별자치시", "울산광역시", 
               "인천광역시", "전라남도", "전라북도", "제주특별자치도", "충청남도", 
               "충청북도")

# 2. 보고서 만들기 ---------------------------------------
for(province in provinces) {
  rmarkdown::render("election-province.Rmd", 
                    output_format="html_document",
                    params = list(province = province),
  output_file = str_c(paste0(province, "_report_"), Sys.Date(), ".html", sep=""),
  encoding = 'UTF-8', 
  output_dir = "report")
}


