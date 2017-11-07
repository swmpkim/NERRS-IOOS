# Programmatically download monthly files from NOAA Tides & Currents
# Because it's annoying to do it all by hand, and if someone else wants to replicate it, this will save time.
# also, you can just do a find-and-replace for the station numbers, and change the file names, to do other sites.
# 10-30-2017 kac


setwd("C:/Users/kimberly.cressman/Desktop/Main Docs/Presentations/2017 CERF/data")


# it seems to be okay to just use default options in download.file()
# and I figured out the url pattern for each file type


# there are 3 file types: water level; meteorological; and water temp/conductivity.

#########
# TX station 8770613 - water levels
#########

myurl <- "https://tidesandcurrents.noaa.gov/api/datagetter?product=hourly_height&application=NOS.COOPS.TAC.WL&station=8770613&begin_date=20171001&end_date=20171031&datum=MLLW&units=metric&time_zone=LST&format=csv"
download.file(myurl, destfile="TX_level_2017-10.csv")

myurl <- "https://tidesandcurrents.noaa.gov/api/datagetter?product=hourly_height&application=NOS.COOPS.TAC.WL&station=8770613&begin_date=20170501&end_date=20170531&datum=MLLW&units=metric&time_zone=LST&format=csv"
download.file(myurl, destfile="TX_level_2017-05.csv")

myurl <- "https://tidesandcurrents.noaa.gov/api/datagetter?product=hourly_height&application=NOS.COOPS.TAC.WL&station=8770613&begin_date=20170901&end_date=20170930&datum=MLLW&units=metric&time_zone=LST&format=csv"
download.file(myurl, destfile="TX_level_2017-09.csv")

myurl <- "https://tidesandcurrents.noaa.gov/api/datagetter?product=hourly_height&application=NOS.COOPS.TAC.WL&station=8770613&begin_date=20170801&end_date=20170831&datum=MLLW&units=metric&time_zone=LST&format=csv"
download.file(myurl, destfile="TX_level_2017-08.csv")

myurl <- "https://tidesandcurrents.noaa.gov/api/datagetter?product=hourly_height&application=NOS.COOPS.TAC.WL&station=8770613&begin_date=20170701&end_date=20170731&datum=MLLW&units=metric&time_zone=LST&format=csv"
download.file(myurl, destfile="TX_level_2017-07.csv")

myurl <- "https://tidesandcurrents.noaa.gov/api/datagetter?product=hourly_height&application=NOS.COOPS.TAC.WL&station=8770613&begin_date=20170601&end_date=20170630&datum=MLLW&units=metric&time_zone=LST&format=csv"
download.file(myurl, destfile="TX_level_2017-06.csv")

#########
# TX station 8770613 - met
#########

myurl <- "https://tidesandcurrents.noaa.gov/cgi-bin/newdata.cgi?type=met&id=8770613&begin=20170501&end=20170531&units=metric&timezone=LST&mode=csv&interval=h"
download.file(myurl, destfile="TX_met_2017-05.csv")

myurl <- "https://tidesandcurrents.noaa.gov/cgi-bin/newdata.cgi?type=met&id=8770613&begin=20170601&end=20170630&units=metric&timezone=LST&mode=csv&interval=h"
download.file(myurl, destfile="TX_met_2017-06.csv")

myurl <- "https://tidesandcurrents.noaa.gov/cgi-bin/newdata.cgi?type=met&id=8770613&begin=20170701&end=20170731&units=metric&timezone=LST&mode=csv&interval=h"
download.file(myurl, destfile="TX_met_2017-07.csv")

myurl <- "https://tidesandcurrents.noaa.gov/cgi-bin/newdata.cgi?type=met&id=8770613&begin=20170801&end=20170831&units=metric&timezone=LST&mode=csv&interval=h"
download.file(myurl, destfile="TX_met_2017-08.csv")

myurl <- "https://tidesandcurrents.noaa.gov/cgi-bin/newdata.cgi?type=met&id=8770613&begin=20170901&end=20170930&units=metric&timezone=LST&mode=csv&interval=h"
download.file(myurl, destfile="TX_met_2017-09.csv")


#########
# TX station 8770613 - temp/conductivity
#########

myurl <- "https://tidesandcurrents.noaa.gov/cgi-bin/newdata.cgi?type=phys&id=8770613&begin=20170501&end=20170531&units=metric&timezone=LST&mode=csv&interval=h"
download.file(myurl, destfile="TX_CT_2017-05.csv")

myurl <- "https://tidesandcurrents.noaa.gov/cgi-bin/newdata.cgi?type=phys&id=8770613&begin=20170601&end=20170630&units=metric&timezone=LST&mode=csv&interval=h"
download.file(myurl, destfile="TX_CT_2017-06.csv")

myurl <- "https://tidesandcurrents.noaa.gov/cgi-bin/newdata.cgi?type=phys&id=8770613&begin=20170701&end=20170731&units=metric&timezone=LST&mode=csv&interval=h"
download.file(myurl, destfile="TX_CT_2017-07.csv")

myurl <- "https://tidesandcurrents.noaa.gov/cgi-bin/newdata.cgi?type=phys&id=8770613&begin=20170801&end=20170831&units=metric&timezone=LST&mode=csv&interval=h"
download.file(myurl, destfile="TX_CT_2017-08.csv")

myurl <- "https://tidesandcurrents.noaa.gov/cgi-bin/newdata.cgi?type=phys&id=8770613&begin=20170901&end=20170930&units=metric&timezone=LST&mode=csv&interval=h"
download.file(myurl, destfile="TX_CT_2017-09.csv")


#####################
#####################
#####################


#########
# LA station 8764314 - water levels

myurl <- "https://tidesandcurrents.noaa.gov/api/datagetter?product=hourly_height&application=NOS.COOPS.TAC.WL&station=8764314&begin_date=20170501&end_date=20170531&datum=MLLW&units=metric&time_zone=LST&format=csv"
download.file(myurl, destfile="LA_level_2017-05.csv")
#########

myurl <- "https://tidesandcurrents.noaa.gov/api/datagetter?product=hourly_height&application=NOS.COOPS.TAC.WL&station=8764314&begin_date=20171001&end_date=20171031&datum=MLLW&units=metric&time_zone=LST&format=csv"
download.file(myurl, destfile="LA_level_2017-10.csv")


myurl <- "https://tidesandcurrents.noaa.gov/api/datagetter?product=hourly_height&application=NOS.COOPS.TAC.WL&station=8764314&begin_date=20170901&end_date=20170930&datum=MLLW&units=metric&time_zone=LST&format=csv"
download.file(myurl, destfile="LA_level_2017-09.csv")

myurl <- "https://tidesandcurrents.noaa.gov/api/datagetter?product=hourly_height&application=NOS.COOPS.TAC.WL&station=8764314&begin_date=20170801&end_date=20170831&datum=MLLW&units=metric&time_zone=LST&format=csv"
download.file(myurl, destfile="LA_level_2017-08.csv")

myurl <- "https://tidesandcurrents.noaa.gov/api/datagetter?product=hourly_height&application=NOS.COOPS.TAC.WL&station=8764314&begin_date=20170701&end_date=20170731&datum=MLLW&units=metric&time_zone=LST&format=csv"
download.file(myurl, destfile="LA_level_2017-07.csv")

myurl <- "https://tidesandcurrents.noaa.gov/api/datagetter?product=hourly_height&application=NOS.COOPS.TAC.WL&station=8764314&begin_date=20170601&end_date=20170630&datum=MLLW&units=metric&time_zone=LST&format=csv"
download.file(myurl, destfile="LA_level_2017-06.csv")

#########
# LA station 8764314 - met
#########

myurl <- "https://tidesandcurrents.noaa.gov/cgi-bin/newdata.cgi?type=met&id=8764314&begin=20170501&end=20170531&units=metric&timezone=LST&mode=csv&interval=h"
download.file(myurl, destfile="LA_met_2017-05.csv")

myurl <- "https://tidesandcurrents.noaa.gov/cgi-bin/newdata.cgi?type=met&id=8764314&begin=20170601&end=20170630&units=metric&timezone=LST&mode=csv&interval=h"
download.file(myurl, destfile="LA_met_2017-06.csv")

myurl <- "https://tidesandcurrents.noaa.gov/cgi-bin/newdata.cgi?type=met&id=8764314&begin=20170701&end=20170731&units=metric&timezone=LST&mode=csv&interval=h"
download.file(myurl, destfile="LA_met_2017-07.csv")

myurl <- "https://tidesandcurrents.noaa.gov/cgi-bin/newdata.cgi?type=met&id=8764314&begin=20170801&end=20170831&units=metric&timezone=LST&mode=csv&interval=h"
download.file(myurl, destfile="LA_met_2017-08.csv")

myurl <- "https://tidesandcurrents.noaa.gov/cgi-bin/newdata.cgi?type=met&id=8764314&begin=20170901&end=20170930&units=metric&timezone=LST&mode=csv&interval=h"
download.file(myurl, destfile="LA_met_2017-09.csv")


#########
# LA station 8764314 - temp/conductivity
#########

myurl <- "https://tidesandcurrents.noaa.gov/cgi-bin/newdata.cgi?type=phys&id=8764314&begin=20170501&end=20170531&units=metric&timezone=LST&mode=csv&interval=h"
download.file(myurl, destfile="LA_CT_2017-05.csv")

myurl <- "https://tidesandcurrents.noaa.gov/cgi-bin/newdata.cgi?type=phys&id=8764314&begin=20170601&end=20170630&units=metric&timezone=LST&mode=csv&interval=h"
download.file(myurl, destfile="LA_CT_2017-06.csv")

myurl <- "https://tidesandcurrents.noaa.gov/cgi-bin/newdata.cgi?type=phys&id=8764314&begin=20170701&end=20170731&units=metric&timezone=LST&mode=csv&interval=h"
download.file(myurl, destfile="LA_CT_2017-07.csv")

myurl <- "https://tidesandcurrents.noaa.gov/cgi-bin/newdata.cgi?type=phys&id=8764314&begin=20170801&end=20170831&units=metric&timezone=LST&mode=csv&interval=h"
download.file(myurl, destfile="LA_CT_2017-08.csv")

myurl <- "https://tidesandcurrents.noaa.gov/cgi-bin/newdata.cgi?type=phys&id=8764314&begin=20170901&end=20170930&units=metric&timezone=LST&mode=csv&interval=h"
download.file(myurl, destfile="LA_CT_2017-09.csv")

