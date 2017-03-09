DROP TABLE IF EXISTS STG_VAL_TENCENT_WEBBROWSE_FEED;

CREATE EXTERNAL TABLE IF NOT EXISTS STG_VAL_TENCENT_WEBBROWSE_FEED(
	platform string,
	reporttime string,
	nbaid string,
	cip string,
	url string,
	is_vip string,
	file_name string,
	record_num bigint
)
COMMENT 'Tencent Staging Test'
PARTITIONED by (insert_date string COMMENT'current datetime')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ''
STORED AS TEXTFILE;


