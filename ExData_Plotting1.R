###ExData_Plotting1

dados <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", 
                colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

## Mudanca da variavel data 

dados$Date <- as.Date(dados$Date, "%d/%m/%Y")

## filtro dos casos
dados <- subset(dados,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))


## removendo observações incompletas

dados <- dados[complete.cases(dados),]

## Combina Date e Time 

dateTime <- paste(dados$Date, dados$Time)

## nomeia o vetor

dateTime <- setNames(dateTime, "DateTime")

## Remover colunas Date e Time

dados <- dados[ ,!(names(dados) %in% c("Date","Time"))]

## Add DateTime column
dados <- cbind(dateTime, dados)

## Format dateTime Column
dados$dateTime <- as.POSIXct(dateTime)

