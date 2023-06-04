###############
### DATASET ###
###############

rm(list = ls())

# 2019 #
df_122019 <- 
  read_excel(path = "Unzipped_Files/2019/12/EIOPA_RFR_20191231_Term_Structures.xlsx",
             sheet = "RFR_spot_no_VA")
df_122019$ANOMES <- "201912" 
df_122019$TIPO <- "SPOT_NO_VA"

df_122019_up <- 
  read_excel(path = "Unzipped_Files/2019/12/EIOPA_RFR_20191231_Term_Structures.xlsx",
             sheet = "Spot_NO_VA_shock_UP")
df_122019_up$ANOMES <- "201912" 
df_122019_up$TIPO <- "SPOT_NO_VA_SHOCK_UP"

df_122019_down <- 
  read_excel(path = "Unzipped_Files/2019/12/EIOPA_RFR_20191231_Term_Structures.xlsx",
             sheet = "Spot_NO_VA_shock_DOWN")
df_122019_down$ANOMES <- "201912" 
df_122019_down$TIPO <- "SPOT_NO_VA_SHOCK_DOWN"

# 2020 #

meses <- c("01","02","03","04","05","06","07","08","09","10","11","12")

for (i in 1:length(meses)) {
  
  mes <- meses[i]
  
  arquivo <- list.files(path = paste0("Unzipped_Files/2020/",mes,"/"), 
             pattern = "Term_Structures")
  temp <- read_excel(paste0("Unzipped_Files/2020/",mes,"/",arquivo), 
                     sheet = "RFR_spot_no_VA")
  temp$ANOMES <- paste0("2020",meses[i])
  temp$TIPO <- "SPOT_NO_VA"
  assign(paste0("df_",2020,mes), temp)
  
  temp2 <- read_excel(paste0("Unzipped_Files/2020/",mes,"/",arquivo), 
                     sheet = "Spot_NO_VA_shock_UP")
  temp2$ANOMES <- paste0("2020",meses[i])
  temp2$TIPO <- "SPOT_NO_VA_SHOCK_UP"
  assign(paste0("df_",2020,mes,"_up"), temp2)
  
  temp3 <- read_excel(paste0("Unzipped_Files/2020/",mes,"/",arquivo), 
                      sheet = "Spot_NO_VA_shock_DOWN")
  temp3$ANOMES <- paste0("2020",meses[i])
  temp3$TIPO <- "SPOT_NO_VA_SHOCK_DOWN"
  assign(paste0("df_",2020,mes,"_down"), temp3)

}

rm(meses, temp, temp2, temp3, arquivo, i, mes)

# 2021 #

meses <- c("01","02","03","04","05","06","07","08","09","10","11","12")

for (i in 1:length(meses)) {
  
  mes <- meses[i]
  
  arquivo <- list.files(path = paste0("Unzipped_Files/2021/",mes,"/"), 
                        pattern = "Term_Structures")
  temp <- read_excel(paste0("Unzipped_Files/2021/",mes,"/",arquivo), 
                     sheet = "RFR_spot_no_VA")
  temp$ANOMES <- paste0("2021",meses[i])
  temp$TIPO <- "SPOT_NO_VA"
  assign(paste0("df_",2021,mes), temp)
  
  temp2 <- read_excel(paste0("Unzipped_Files/2021/",mes,"/",arquivo), 
                      sheet = "Spot_NO_VA_shock_UP")
  temp2$ANOMES <- paste0("2021",meses[i])
  temp2$TIPO <- "SPOT_NO_VA_SHOCK_UP"
  assign(paste0("df_",2021,mes,"_up"), temp2)
  
  temp3 <- read_excel(paste0("Unzipped_Files/2021/",mes,"/",arquivo), 
                      sheet = "Spot_NO_VA_shock_DOWN")
  temp3$ANOMES <- paste0("2021",meses[i])
  temp3$TIPO <- "SPOT_NO_VA_SHOCK_DOWN"
  assign(paste0("df_",2021,mes,"_down"), temp3)
  
}

rm(meses, temp, temp2, temp3, arquivo, i, mes)

##############
### AJUSTE ###
##############

# MANIPULAÇÃO DOS DADOS #
dfs <- ls()

for(i in 1:length(dfs)){
  temp <- get(dfs[i])
  ANOMES <- temp$ANOMES[1]
  TIPO <- temp$TIPO[1]
  temp <- as.matrix(temp[9:158,"Brazil"])
  temp <- t(as.numeric(temp)*100)
  colnames(temp) <- paste0("MATURIDADE_",seq(from = 1, to = 150, by = 1))
  temp <- as.data.frame(temp)
  temp <- cbind(ANOMES, TIPO, temp)
  assign(dfs[i], temp)
}

rm(dfs, i, temp, ANOMES, TIPO)

# JUNTA TODOS OS OBJETOS EM UMA TABELA #
dfs <- sapply(.GlobalEnv, is.data.frame) 
tabela_final <- do.call(rbind, mget(names(dfs)[dfs]))

tabela_final <- tabela_final %>% arrange(ANOMES, TIPO)

row.names(tabela_final) <- NULL

###########
### SQL ###
###########

source(file = "~/Pessoal/conexao_sql_atuarial.R")

# DBI::dbRemoveTable(conn = sql_atuarial,  SQL("EIOPA.TAX_FREE_RATE"))

DBI::dbWriteTable(conn = sql_atuarial, SQL("EIOPA.TAX_FREE_RATE"), 
                  tabela_final)
