# glue-crawler

This module generates a Glue Crawler for scanning through S3 folders and generating a database table.

## Module description
Generates the Glue Crawler for scanning a specific S3 subfolder and generating a table in a specific database. 

## Requires
For all required inputs, see details on Terraform Cloud. Below are inputs that require further description

- database_name
    - name of the Glue database where the resulting table shall be located
- iam_role_arn
    - the arn of a IAM role that has permissions to run the crawler, access necessary S3 folders, and generate the new table. 
- cron_schedule
    - cron formatted schedule expression for the intervals/timings of running the crawler
- target_table
    - this variable is no longer used in the crawler setup, but is included as part of the crawler name

## Usage
See available code in projects. 

