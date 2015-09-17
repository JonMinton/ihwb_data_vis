rm(list = ls())

require(readr)
require(tidyr)
require(dplyr)
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
 
