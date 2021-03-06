# Streaming Finance Data with AWS Lambda and Kinesis

This project uses AWS Lambda and Kinesis technologies to stream finance data with "yfinance" python package. The data from streaming is saved in AWS s3, and then is analyzed with AWS Athena in SQL query.

The streamed data is stored in s3 bucket `s3://delivery-test-9705/2020/05/20/15/`. Also, the same dataset is saved in finance_data subfolder.

The python code used in AWS Lambda is saved in data_collector.py, and its configuration page is below. The lambda function trigger URL is: `https://30kp0rksp3.execute-api.us-east-2.amazonaws.com/default/yfinance-lambda`. But as I use dependence in the lambda function, the URL trigger will timeout, so current it only uses "test" function to trigger the stream.

(Note: the "yfinance" data obtained by constraining time from 5/14/2020 to 5/15/2020 will always also have the current date when users run the code. To clean the current date data, it is filtered out in the sql code)

The SQL query used in Athena is saved in "query.sql" to get hourly high for each stocks, and the query results are saved in "results.csv".

## Extra Credit file
The visualization of results.csv for extra credit is saved in "Analysis.ipynb".

## AWS Lambda Configuration Page.
![notebook](https://github.com/SherlockZhang/Streaming-Finance-Data-with-AWS-Lambda-Kinesis/blob/master/asset/lambda-config.png?raw=true)

The "Monitoring" page for Kinesis is below:
## Kinesis Monitoring Page
![notebook](https://github.com/SherlockZhang/Streaming-Finance-Data-with-AWS-Lambda-Kinesis/blob/master/asset/kinesis-0.png?raw=true)

![notebook](https://github.com/SherlockZhang/Streaming-Finance-Data-with-AWS-Lambda-Kinesis/blob/master/asset/kinesis-1.png?raw=true)

![notebook](https://github.com/SherlockZhang/Streaming-Finance-Data-with-AWS-Lambda-Kinesis/blob/master/asset/kinesis-2.png?raw=true)