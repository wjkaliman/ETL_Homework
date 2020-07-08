# ETL_Project
Hello,
This project was to locate 2 or more data sources and create a database. Once we identified our data sources, we performed an ETL on our data. The data sources were from Kaggle.com. All 4 dataset files were in the CSV format. Here are the links:
https://www.kaggle.com/yuanyuwendymu/airline-delay-and-cancellation-data-2009-2018
This dataset contained the 2015 year Airline delays and cancellations
https://www.kaggle.com/usdot/flight-delays?select=flights.csv-
There were 2 datasets we used from this webpage. the conatined airline and airport information.
https://www.kaggle.com/anshuls235/airline-delay-causes
This dataset contains Airline delay causes for 2015.

We started the Transform process by cleaning up the data. We dropped the null values and unneccessary columns in each dataset. We then filtered the data to use only the 2015 year due to Airline mergers of previous years. After completing this, we reformatted the date columns and performed an aggregation to see the number of delays in 2015 of each airline.
Ths gave aus the ability to merge our tables and see the airline names and delay information by queries.

We decided to use PostgreSQL to create a relational database. This method was chosen because the datasets contained information that would translate to a relational database.

We used https://www.quickdatabasediagrams.com to create our Schema. Once our Schema was complete, we outputted the file to the PostgreSQL format. We next outputted the picture of our schema as a PNG file.These 2 files can be found in this repository.

We then used PostgreSQL to create a database. We then used our schema file to create our tables. once the tables were created, we then imported all 4 cleaned datasets.

This project was completed by Rabia Sungur and Warren Judson.
