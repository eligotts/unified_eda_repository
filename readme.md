### Repository Overview:
This repository contains three "cookbooks" for seamless visualization of client data. The focuses of these three notebooks are Positive Labels, Events, and Feature Store. For each focus, there are two corresponding notebooks: the first notebook runs a Dash application for interactive data visualizaiton, and the second notebook generates pdfs of each plot using various (in some cases all) possible input paramters. 

### Repository Purpose:
The purpose of this repository is to provide a versatile and comprehensive set of data visualization tools that can be easily run with each client's data. The three "cookbooks" present in the repository provide a wide range of analysis and each notebook is configured to allow for simple client customization without any need to reconfigure large portions of the code.

### Three Cookbooks: 
- Positive Labels: 
- Events: The 'events' notebooks generate event based analysis plots. These plots range from counting the number of events that have occured in a given time period, to calculating how many times customers have completed a selected set of events, to the relationship between event frequency and customer information. For many of the plots, the user can select a desired time interval to analyze and a specific set of events.
- Feature Store:

### Required Data:
- Positive Labels: 'positive_label_data' folder. Current version of this folder contains the file 'mock_agreements.pq'
- Events: two tables, the first containing event information and the second containing customer information. Currently, these two tables are being pulled from an Insait snowflake account (which I think might expire soon)
- Feature Store: 'feature_store_data' folder. Current version of this folder contains a parquet file for each day, from 2022-01-18 to 2022-12-31

### Notebook Assumptions:
- Positive Labels: 
- Events: 
    - event information table: each row represents an event, each column is information about that event (event type, event date, customer that completed the event, etc.)
    - customer information table: each row represents a customer, each column is information about that customer (age, salary, start date, location, etc.)
    - for the event information table, the following columns must be present: event date (a datetime object), customer id, event type
    - for the customer information table, the customer id column must be present
    - the current notebook configuration contains various column names for both tables. If a column is not present in a specfic client's data, assign the associated column variable as an empty string "". For the columns in the customer information table, add/remove the column variables from the two 'splitting column' lists ('splitting_cols_numeric', 'splitting cols_cat') by the type of data the column contains. For example, numeric splitting columns are age, salary, etc. while categorical splitting columns are location, gender, etc. 
    - when initializing each table as a dataframe, assure the inputted column order matches the column order that is present in the data table, wherever it may be stored. 
- Feature Store:

