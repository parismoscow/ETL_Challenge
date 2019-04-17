## ETL Project
### Group 4: John, Ediya and Jasmina

We will be using two data sets from the city of Austin:
* Austin crime data: https://data.austintexas.gov/Public-Safety/2016-Annual-Crime-Data/8iue-zpf6
* Austin affordable housing data: https://data.austintexas.gov/Housing-and-Real-Estate/Affordable-Housing-Inventory-AHI-/x5p7-qyuv

We will join the two datasets on zipcode key and the resulting dataset can be used to analyse crime rate vs number of affordable housing units per zipcode.

### Steps Taken to Clean Data

* We first used pandas to load the affordable housing data into a dataframe, then we isolated the columns we needed (Property name, zip code, and total number of afforable housing units).
* The total number of housing units were listed per developer, so we grouped by zip code and summed the units. 
* Next, we loaded the austin crime data into a data frame and determined the value counts for each listed incident type. 
* We then converted the zip codes in both tables from floats to integers. 
* The columns were renamed for clarity. 

### Difficulties 

* There were several NaN values in the zip code columns for both data sets that were not displaying on our dataframes. We had to use (.isnull()) in order to identify and drop and NaN values. Once this was done, we were able to successfully convert the zip code datatype from float to integer. 

### Database Creation Steps

* The two datasets were combined using an inner join on zip code.
* Using SQLAlchemy, we opened a connection to a new SQL database and output the combined dataset. 

### Future Analysis

* The combined dataset could be used to determine if there is a correlation between crime and the presence of afforable housing units.
