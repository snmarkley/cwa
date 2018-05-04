# Census data set up data for UCW-CWA

library(tidyverse)
library(tidycensus)
library(tigris)
options(tigris_use_cache = TRUE)

gdit_cty <- unique(GDIT_WD_History_at_GDIT_sites$County)

florida <- get_acs(geography = 'county',
                   variables = 'B03002_001E',
                   state = c("FL"),
                   year = 2015, geometry = TRUE)

ms <- get_acs(geography = 'county',
              variables = 'B03002_001E',
              state = c('MS'),
              year = 2015,
              geometry = TRUE)

#c('Forrest', 'Lamar', 'Jones', 'Wayne', 'Jasper', 'Greene',
#  'Covington', 'Marion', 'Stone', 'George', 'Pearl River',
#  'Hancock', 'Harrison', 'Jackson', 'Walthall', 'Lawrence', 'Pike'),
