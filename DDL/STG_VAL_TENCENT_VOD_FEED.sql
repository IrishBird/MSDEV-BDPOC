DROP TABLE IF EXISTS STG_VAL_TENCENT_VOD_FEED;

CREATE EXTERNAL TABLE IF NOT EXISTS STG_VAL_TENCENT_VOD_FEED(
	reporttime string,
	nbaid string,
	ua string,
	ua_version string,
	cip string,
	vid string,
	title string,
	category string,
	uploaded_time string,
	duration int,
	related_team string,
	highlight string,
	url string,
	platform string,
	is_vip string,
	file_name string,
	record_num bigint
)
COMMENT 'Tencent Staging Test'
PARTITIONED by (insert_date string COMMENT 'current datetime')
ROW FORMAT DELIMITED FIELDS TERMINATED BY ''
STORED AS TEXTFILE;
