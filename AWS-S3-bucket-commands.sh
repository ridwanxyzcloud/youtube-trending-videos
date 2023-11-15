
#after setting up IAm access on the AWS CLI, run this command to configure the CLI accordingly.
aws configure

#run this command after the CLI configuration to see you S3 bucket.
aws s3 ls

#USing the AWS CLI on local computer, navigate the the foler of the data downloaded.

# The AWS S3 Copy Command Copy all JSON files from the current directory (and subdirectories) to the specified S3 bucket.
# The --recursive flag ensures all files and subdirectories are copied.
# The --exclude "*" flag is a placeholder to exclude all files initially.
# The --include "*.json" flag specifies to include only files with the ".json" extension.

aws s3 cp . s3://youtube-trending-videos-dev/youtube/raw_statistics_reference_data/ --recursive --exclude "*" --include "*.json"

# To copy all data files to their respective locations, following Hive-style patterns:

aws s3 cp CAvideos.csv s3://youtube-trending-videos-dev/youtube/raw_statistics/region=ca/
aws s3 cp DEvideos.csv s3://youtube-trending-videos-dev/youtube/raw_statistics/region=de/
aws s3 cp FRvideos.csv s3://youtube-trending-videos-dev/youtube/raw_statistics/region=fr/
aws s3 cp GBvideos.csv s3://youtube-trending-videos-dev/youtube/raw_statistics/region=gb/
aws s3 cp INvideos.csv s3://youtube-trending-videos-dev/youtube/raw_statistics/region=in/
aws s3 cp JPvideos.csv s3://youtube-trending-videos-dev/youtube/raw_statistics/region=jp/
aws s3 cp KRvideos.csv s3://youtube-trending-videos-dev/youtube/raw_statistics/region=kr/
aws s3 cp MXvideos.csv s3://youtube-trending-videos-dev/youtube/raw_statistics/region=mx/
aws s3 cp RUvideos.csv s3://youtube-trending-videos-dev/youtube/raw_statistics/region=ru/
aws s3 cp USvideos.csv s3://youtube-trending-videos-dev/youtube/raw_statistics/region=us/

#wait for the files to copy. 
