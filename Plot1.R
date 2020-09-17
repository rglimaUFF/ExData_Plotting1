###Plot1

hist(dados$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")

## Salva o arquivo (png) e fecha o dispositivo

dev.copy(png,"plot1.png", width=480, height=480)
dev.off()
