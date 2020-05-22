# Streaming Finance Data with AWS Lambda and Kinesis

This project use AWS Lambda and Kinesis technologies to stream finance data with "yfinance" python package. The data from streaming is saved in AWS s3, and then is analyzed with AWS Athena in SQL query.

The streamed data is stored in s3 bucket below. Also, the same dataset is saved in finance_data subfolder.
`s3://delivery-test-9705/2020/05/20/15/`

The python code used in AWS Lambda is saved in data_collector.py, and its configuration page is below. (Note: the "yfinance" data obtained by constraining time from 5/14/2020 to 5/15/2020 will always also have the current date when user run the code. To clean the current date data, it is filtered out in the sql code)

The SQL query used in Athena is saved in "query.sql" to get hourly high for each stocks, and the query results are saved in "results.csv".

## AWS Lambda Configuration Page.
![notebook](https://github.com/SherlockZhang/Streaming-Finance-Data-with-AWS-Lambda-Kinesis/assets/lambda-config.png?raw=true)

The "Monitoring" page for Kinesis is below:
## Kinesis Monitoring Page
![notebook](https://github.com/SherlockZhang/Streaming-Finance-Data-with-AWS-Lambda-Kinesis/assets/kinesis-0.png?raw=true)

![notebook](https://github.com/SherlockZhang/Streaming-Finance-Data-with-AWS-Lambda-Kinesis/assets/kinesis-1.png?raw=true)

![notebook](https://github.com/SherlockZhang/Streaming-Finance-Data-with-AWS-Lambda-Kinesis/assets/kinesis-2.png?raw=true)