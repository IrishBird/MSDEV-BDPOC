DROP TABLE IF EXISTS STG_VAL_TENCENT_LIVE_FEED;

CREATE EXTERNAL TABLE IF NOT EXISTS STG_VAL_TENCENT_LIVE_FEED(
	reporttime string,
	nbaid string,
	ua string,
	ua_version string,
	cip string,
	progid int,
	progname string,
	home_team string,
	away_team string,
	start_time string,
	end_time string,
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


