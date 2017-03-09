DROP TABLE IF EXISTS STG_DIGITAL_SAF;

CREATE TABLE IF NOT EXISTS STG_DIGITAL_SAF(
	nba_id string,
	browser_desc string,
	browser_version string,
	ip_addr string,
	ip_province string,
	ip_city string,
	content_ID string,
	content_title string,
	home_team_CN string,
	Away_team_CN string,
	First_name_CN string,
	Last_name_CN string,
	Content_Duration int,
	url string,
	Content_type_cd string,
	Content_Start_datetime string,
	Content_End_datetime string,
	Content_Upload_datetime string,
	report_datetime string,
	device_type string,
	platform string,
	is_vip_ind string,
	batch_id bigint,
	source_id bigint,
	file_id bigint,
	record_id bigint,
	burst_id bigint,
	create_process_log_id bigint,
	update_process_log_id bigint
) 
COMMENT 'Tencent SAF Test'
PARTITIONED by (insert_date string COMMENT 'current datetime')
ROW FORMAT DELIMITED
STORED AS RCFILE;
