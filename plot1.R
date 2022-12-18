
#read data, including making variables numeric
household_power_consumption <- read_delim("~/JHU data science/course 4 data exploration/ExplorationW1assignment/household_power_consumption.txt", 
                                          +     delim = ";", escape_double = FALSE, col_types = cols(Time = col_character(), 
                                                                                                     +         Global_active_power = col_double(), 
                                                                                                     +         Global_reactive_power = col_double(), 
                                                                                                     +         Voltage = col_double(), Global_intensity = col_double(), 
                                                                                                     +         Sub_metering_2 = col_double()), trim_ws = TRUE)

#changing date variable
household_power_consumption$Date <- as.Date(household_power_consumption$Date, format = "%d/%m/%Y")

#subsetting data for relevant time 
data <- household_power_consumption[household_power_consumption$Date == "2007-02-01" | household_power_consumption$Date == "2007-02-02",]
remove(household_power_consumption) ## clean memory

#changing time data
data$Timeorg <- data$Time
data$TimeDate <- paste(data$Date, data$Timeorg)
data$Time <- strptime(data$TimeDate, format = "%Y-%m-%d %H:%M:%S")

#plot1
png("plot1.png")
hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", 
     ylab = "Frequency", main = "Global Active Power")
dev.off()
