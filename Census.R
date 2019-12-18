# Add key to .Renviron
Sys.setenv(CENSUS_KEY='cd07c7804e7c31c051387d8488762fd7314b057e')
# Reload .Renviron
readRenviron("~/.Renviron")
# Check to see that the expected key is output
Sys.getenv("CENSUS_KEY")

library(censusapi)

#dataframe of acs variables
#census_vars <- listCensusMetadata(name = 'acs/acs1', vintage = '2018', type = 'variables')

censusapi::getCensus(name = 'acs5', vintage = '2018', vars = , region = 'county:')
