# Add key to .Renviron
Sys.setenv(CENSUS_KEY='')
# Reload .Renviron
readRenviron("~/.Renviron")
# Check to see that the expected key is output
Sys.getenv("CENSUS_KEY")

library(tidycensus)
census_api_key("")
library(mapview)
options(tigris_use_cache = TRUE)

#Females now married. Includes people whose current marriage has not ended through widowhood, divorce, or separation
FemaleNowMarried <- get_acs(geography = "tract", 
              variables = "B12001_013E", 
              state = "CA", 
              county = "Los Angeles", 
              geometry = TRUE)

mapview(LA, zcol = "estimate", legend = TRUE)
