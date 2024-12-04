library(ggplot2)
library(tseries)
china <- read.csv(file = "china.csv")

china$dt <- as.Date(china$dt)

ggplot(china[1:128,], aes(x = dt, y = AverageTemperature)) +
  geom_line() +  
  labs(title = "China Average Temperature Over Time",
       x = "Date",
       y = "Average Temperature (°C)") +
  theme_minimal() +  
  theme(panel.background = element_blank(),  
        plot.background = element_blank(),  
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),  
        axis.line = element_line(colour = "black"))  

adf_result <- adf.test(china$AverageTemperature)
adf_result[["p.value"]]


