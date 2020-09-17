###Plot 2

plot(dados$Global_active_power~dados$dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")

###Salva o arquivo e fecha o dispositivo

dev.copy(png,"plot2.png", width=480, height=480)
dev.off()
