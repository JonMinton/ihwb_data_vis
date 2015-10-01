rm(list = ls())

require(readr)
require(tidyr)
require(dplyr)




# SNS data ----------------------------------------------------------------


# CS-healrk	Health Deprivation Rank
# 
# 
# 
# 
# HS-SIMDSMR09	SIMD 2009 - Standardised Mortality Ratio	0	0	1

simd_2006 <- read_csv("E:/Dropbox/Data/SNS/2015_release/by_year/simd_2006.csv", col_types = "cdidd")

prop_anxiety <- simd_2006 %>% select(datazone, year, proportion_receiving_anxiety_drugs = HS.SIMDdrugsanx06)

rm(simd_2006)

comp_illness <- read_csv("E:/Dropbox/Data/SNS/2015_release/by_year/comparative_illness.csv")

comp_illness <- comp_illness %>% select(datazone, year, comparative_illness_per_100k = CS.CICrate_total)






# datazones for east end of Glasgow
east_end_dzs <- c(
  "S01003205",
  "S01003248",
  "S01003251",
  "S01003254",
  "S01003263",
  "S01003270",
  "S01003271",
  "S01003328",
  "S01003335",
  "S01003313",
  "S01003331",
  "S01003333",
  "S01003355",
  "S01003368",
  "S01003279",
  "S01003347",
  "S01003201",
  "S01003217",
  "S01003342",
  "S01003353",
  "S01003253",
  "S01003269",
  "S01003273",
  "S01003289",
  "S01003296",
  "S01003299",
  "S01003314"
)
# 27 Dzs 
# Source: http://www.scotland.gov.uk/Topics/ArtsCultureSport/Sport/MajorEvents/Glasgow-2014/Commonwealth-games/Indicators/S9

# 27 West End Datazones
west_end_dzs  <- c(
  "S01003437",
  "S01003450",
  "S01003453",
  "S01003454",
  "S01003460",
  "S01003464",
  "S01003466",
  "S01003468",
  "S01003470",
  "S01003474",
  "S01003478",
  "S01003479",
  "S01003484",
  "S01003485",
  "S01003487",
  "S01003497",
  "S01003501",
  "S01003503",
  "S01003504",
  "S01003509",
  "S01003513",
  "S01003514",
  "S01003520",
  "S01003521",
  "S01003522",
  "S01003542",
  "S01003545"
)

















# Specification from Richard







# I have being looking at the Scottish Census 2011 and the Scottish Neighborhood websites
# Potentially relevant variables from the Scottish Census for ethnicity and ethnic density include 

# National identify KS2O2SC,


# Country of Birth KS204SC, QS203C
cob <- read_csv(
  file = 
  "https://raw.githubusercontent.com/JonMinton/scotland_dissimilarity_tables/master/output_data/countryofbirth_datazones_2001_and_2011.csv"
  )
# Ethnic group KS201C
ethnicity <- read_csv(
  file = 
    "https://raw.githubusercontent.com/JonMinton/scotland_dissimilarity_tables/master/output_data/ethnicity_datazones_2001_and_2011.csv"
  )
# Car and van ownership
carvan <- read_csv(
  file = 
  "https://raw.githubusercontent.com/JonMinton/scotland_dissimilarity_tables/master/output_data/carandvanownership_datazones_2001_and_2011.csv"
  )

#Noquals 
noquals <- read_csv(
  file = 
    "https://raw.githubusercontent.com/JonMinton/scotland_dissimilarity_tables/master/output_data/noqualifications_datazones_2001_and_2011.csv"
)
# Health measures
# General health QS302SC
# Long term health QS303SC


 
# All these measures are available at every conceivable geography down to Datazone. So we would need to think how to 
# restrict the number of areas if we were using data zones. .
# 
# For ethnic group (in broad ethnicities)  we can also calculate ethnicity specific rates for poor health and 
# limiting illness for each data zone. Although there may be small cell size issues here
# 
# The Scottish neighbourhoods as
# A variety of measures mostly at Health board (n=14) but some local authorities (approx. 30) including,
# Childhood obesity, mental health, smoking at booking, smoking prevalence, mortality alcohol consumption.
# 
# In addition there appears to be data for multiple years down to datazone level for cancer registations (multiple types) and 
# accident and deliberate fires, but I think these are based on very small cells so the number are erratic.



 
