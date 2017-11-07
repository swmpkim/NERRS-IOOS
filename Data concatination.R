# gluing together all the files from the NOAA Tides & Currents stations

setwd("C:/Users/kimberly.cressman/Desktop/Main Docs/Presentations/2017 CERF/data")

library(dplyr)
library(lubridate)

# TX water level
a <- read.csv("TX_level_2017-06.csv")
b <- read.csv("TX_level_2017-07.csv")
c <- read.csv("TX_level_2017-08.csv")
d <- read.csv("TX_level_2017-09.csv")
aa <- read.csv("TX_level_2017-05.csv")
TXlevel <- bind_rows(aa, a, b, c, d) %>%
    transmute(datetimestamp = ymd_hm(Date.Time), 
           level = Water.Level,
           stationcode = "tx_nos")
plot(level~datetimestamp, data=TXlevel)


# LA water level
a <- read.csv("LA_level_2017-06.csv")
b <- read.csv("LA_level_2017-07.csv")
c <- read.csv("LA_level_2017-08.csv")
d <- read.csv("LA_level_2017-09.csv")
aa <- read.csv("LA_level_2017-05.csv")
LAlevel <- bind_rows(aa, a, b, c, d) %>%
    transmute(datetimestamp = ymd_hm(Date.Time), 
              level = Water.Level,
              stationcode = "la_nos")
plot(level~datetimestamp, data=LAlevel)


# TX met
a <- read.csv("TX_met_2017-06.csv")
b <- read.csv("TX_met_2017-07.csv")
c <- read.csv("TX_met_2017-08.csv")
d <- read.csv("TX_met_2017-09.csv")
aa <- read.csv("TX_met_2017-05.csv")
TXmet <- bind_rows(aa, a, b, c, d) %>%
    transmute(datetimestamp = mdy_hm(DATE.TIME),
           wdir = DIR,
           wspd = WINDSPEED,
           maxwspd = GUSTS,
           bp = BARO,
           rh = RELHUM,
           stationcode = "tx_nos") 

# LA met
a <- read.csv("LA_met_2017-06.csv")
b <- read.csv("LA_met_2017-07.csv")
c <- read.csv("LA_met_2017-08.csv")
d <- read.csv("LA_met_2017-09.csv")
aa <- read.csv("LA_met_2017-05.csv")
LAmet <- bind_rows(aa, a, b, c, d) %>%
    transmute(datetimestamp = mdy_hm(DATE.TIME),
              wdir = DIR,
              wspd = WINDSPEED,
              maxwspd = GUSTS,
              bp = BARO,
              rh = RELHUM,
              stationcode = "la_nos") 

plot(bp~datetimestamp, data=TXmet, type="l", col="blue", main = "barometric pressure")
lines(bp~datetimestamp, data=LAmet, col="red")

plot(level~datetimestamp, data=TXlevel, type="l", col="blue", main="water level")
lines(level~datetimestamp, data=LAlevel, col="red")


# TX CT
a <- read.csv("TX_CT_2017-06.csv")
b <- read.csv("TX_CT_2017-07.csv")
c <- read.csv("TX_CT_2017-08.csv")
d <- read.csv("TX_CT_2017-09.csv")
aa <- read.csv("TX_CT_2017-05.csv")
TXCT <- bind_rows(aa, a, b, c, d) %>%
    transmute(datetimestamp = mdy_hm(DATE.TIME),
              temp = WATERTEMP,
              spcond = CONDUCTIVITY,
              stationcode = "tx_nos")

# LA CT
a <- read.csv("LA_CT_2017-06.csv")
b <- read.csv("LA_CT_2017-07.csv")
c <- read.csv("LA_CT_2017-08.csv")
d <- read.csv("LA_CT_2017-09.csv")
aa <- read.csv("LA_CT_2017-05.csv")
LACT <- bind_rows(aa, a, b, c, d) %>%
    transmute(datetimestamp = mdy_hm(DATE.TIME),
              temp = WATERTEMP,
              spcond = CONDUCTIVITY,
              stationcode = "la_nos")

#########
# put together all TX data
TXall <- full_join(TXlevel, TXCT, by=c("datetimestamp", "stationcode")) %>%
    full_join(., TXmet, by=c("datetimestamp", "stationcode"))

# and all LA
LAall <- full_join(LAlevel, LACT, by=c("datetimestamp", "stationcode")) %>%
    full_join(., LAmet, by=c("datetimestamp", "stationcode"))

# join TX and LA data
NOS <- bind_rows(TXall, LAall)

# make it a csv
write.csv(NOS, "NOS_all.csv", row.names = FALSE)
