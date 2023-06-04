
source(file = "~/Pessoal/proxy.R")

############
### URLs ###
############

### 2021 ###

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20211231.zip"
download.file(url = url, destfile = "Raw_Data/2021/Dados_Dezembro.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20211130.zip"
download.file(url = url, destfile = "Raw_Data/2021/Dados_Novembro.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20211031.zip"
download.file(url = url, destfile = "Raw_Data/2021/Dados_Outubro.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20210930.zip"
download.file(url = url, destfile = "Raw_Data/2021/Dados_Setembro.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20210831.zip"
download.file(url = url, destfile = "Raw_Data/2021/Dados_Agosto.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20210731.zip"
download.file(url = url, destfile = "Raw_Data/2021/Dados_Julho.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20210630.zip"
download.file(url = url, destfile = "Raw_Data/2021/Dados_Junho.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20210531.zip"
download.file(url = url, destfile = "Raw_Data/2021/Dados_Maio.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20210430.zip"
download.file(url = url, destfile = "Raw_Data/2021/Dados_Abril.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20210331.zip"
download.file(url = url, destfile = "Raw_Data/2021/Dados_Marco.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20210228.zip"
download.file(url = url, destfile = "Raw_Data/2021/Dados_Fevereiro.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20210131.zip"
download.file(url = url, destfile = "Raw_Data/2021/Dados_Janeiro.zip")

### 2020 ###

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20201231.zip"
download.file(url = url, destfile = "Raw_Data/2020/Dados_Dezembro.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20201130.zip"
download.file(url = url, destfile = "Raw_Data/2020/Dados_Novembro.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20201031.zip"
download.file(url = url, destfile = "Raw_Data/2020/Dados_Outubro.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20200930.zip"
download.file(url = url, destfile = "Raw_Data/2020/Dados_Setembro.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20200831.zip"
download.file(url = url, destfile = "Raw_Data/2020/Dados_Agosto.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20200731.zip"
download.file(url = url, destfile = "Raw_Data/2020/Dados_Julho.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20200630.zip"
download.file(url = url, destfile = "Raw_Data/2020/Dados_Junho.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20200531.zip"
download.file(url = url, destfile = "Raw_Data/2020/Dados_Maio.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20200430.zip"
download.file(url = url, destfile = "Raw_Data/2020/Dados_Abril.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20200331.zip"
download.file(url = url, destfile = "Raw_Data/2020/Dados_Marco.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20200229.zip"
download.file(url = url, destfile = "Raw_Data/2020/Dados_Fevereiro.zip")

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20200131.zip"
download.file(url = url, destfile = "Raw_Data/2020/Dados_Janeiro.zip")

### 2019 ###

url <- "https://www.eiopa.europa.eu/sites/default/files/risk_free_interest_rate/eiopa_rfr_20191231.zip"
download.file(url = url, destfile = "Raw_Data/2019/Dados_Dezembro.zip")

#############
### UNZIP ###
#############

unzip(zipfile = "Raw_Data/2021/Dados_Dezembro.zip", 
      exdir = "Unzipped_Files/2021/12")

unzip(zipfile = "Raw_Data/2021/Dados_Novembro.zip", 
      exdir = "Unzipped_Files/2021/11")

unzip(zipfile = "Raw_Data/2021/Dados_Outubro.zip", 
      exdir = "Unzipped_Files/2021/10")

unzip(zipfile = "Raw_Data/2021/Dados_Setembro.zip", 
      exdir = "Unzipped_Files/2021/09")

unzip(zipfile = "Raw_Data/2021/Dados_Agosto.zip", 
      exdir = "Unzipped_Files/2021/08")

unzip(zipfile = "Raw_Data/2021/Dados_Julho.zip", 
      exdir = "Unzipped_Files/2021/07")

unzip(zipfile = "Raw_Data/2021/Dados_Junho.zip", 
      exdir = "Unzipped_Files/2021/06")

unzip(zipfile = "Raw_Data/2021/Dados_Maio.zip", 
      exdir = "Unzipped_Files/2021/05")

unzip(zipfile = "Raw_Data/2021/Dados_Abril.zip", 
      exdir = "Unzipped_Files/2021/04")

unzip(zipfile = "Raw_Data/2021/Dados_Marco.zip", 
      exdir = "Unzipped_Files/2021/03")

unzip(zipfile = "Raw_Data/2021/Dados_Fevereiro.zip", 
      exdir = "Unzipped_Files/2021/02")

unzip(zipfile = "Raw_Data/2021/Dados_Janeiro.zip", 
      exdir = "Unzipped_Files/2021/01")

unzip(zipfile = "Raw_Data/2020/Dados_Dezembro.zip", 
      exdir = "Unzipped_Files/2020/12")

unzip(zipfile = "Raw_Data/2020/Dados_Novembro.zip", 
      exdir = "Unzipped_Files/2020/11")

unzip(zipfile = "Raw_Data/2020/Dados_Outubro.zip", 
      exdir = "Unzipped_Files/2020/10")

unzip(zipfile = "Raw_Data/2020/Dados_Setembro.zip", 
      exdir = "Unzipped_Files/2020/09")

unzip(zipfile = "Raw_Data/2020/Dados_Agosto.zip", 
      exdir = "Unzipped_Files/2020/08")

unzip(zipfile = "Raw_Data/2020/Dados_Julho.zip", 
      exdir = "Unzipped_Files/2020/07")

unzip(zipfile = "Raw_Data/2020/Dados_Junho.zip", 
      exdir = "Unzipped_Files/2020/06")

unzip(zipfile = "Raw_Data/2020/Dados_Maio.zip", 
      exdir = "Unzipped_Files/2020/05")

unzip(zipfile = "Raw_Data/2020/Dados_Abril.zip", 
      exdir = "Unzipped_Files/2020/04")

unzip(zipfile = "Raw_Data/2020/Dados_Marco.zip", 
      exdir = "Unzipped_Files/2020/03")

unzip(zipfile = "Raw_Data/2020/Dados_Fevereiro.zip", 
      exdir = "Unzipped_Files/2020/02")

unzip(zipfile = "Raw_Data/2020/Dados_Janeiro.zip", 
      exdir = "Unzipped_Files/2020/01")

unzip(zipfile = "Raw_Data/2019/Dados_Dezembro.zip", 
      exdir = "Unzipped_Files/2019/12")
