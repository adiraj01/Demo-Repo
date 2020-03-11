
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


create view VW_MAP_ANAPLAN_OPEN_HEADCOUNT as
( 
select
NULL 	as	AVAILABILITY_DATE	,
AVAILABILITY_MONTH_CONNECT	as	AVAILABILITY_MONTH	,
BRAND	as	BRAND	,
BUSINESS_TITLE	as	BUSINESS_TITLE	,
COMPANY	as	COMPANY	,
COST_CENTER_NAME	as	COST_CENTER_NAME	,
EMPLOYEE_TYPE	as	EMPLOYEE_TYPE	,
HEADCOUNT_ID	as	HEADCOUNT_ID	,
HEADCOUNT_STATUS_CONNECT	as	HEADCOUNT_STATUS	,
FORECAST	as	ID	,
LEVEL	as	JOB_LEVEL	,
JOB_PROFILE	as	JOB_PROFILE	,
JOB_PROFILE_CODE	as	JOB_PROFILE_CODE	,
LOCATION	as	LOCATION	,
MANAGER_NAME	as	MANAGER_NAME	,
PRODUCT_CATEGORY	as	PRODUCT_CATEGORY	,
REPLACEMENT_FOR	as	REPLACEMENT_FOR	,
SUP_ORG_CODE	as	SUP_ORG_CODE	
from anaplan.vw_anaplan_headcount_report
);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


create or replace view VW_MAP_CAPACITY_PLANNING_ATTRITION as 
select
	time_series_end_date as time_series_end_date,
	record_date as record_date,
	record_month_start_date as record_month_start_date,
	record_month_end_date as record_month_end_date,
	employee_id as employee_id,
	manager_employee_id as manager_employee_id,
	sup_org_ref_id as sup_org_ref_id,
	job_profile as job_profile,
	length_of_service_in_months as length_of_service_in_months,
	time_in_job_profile as time_in_job_profile,
	job_category as job_category,
	job_family as job_family,
	compensation_grade_id as compensation_grade_id,
	job_level as job_level,
	management_level as management_level,
	location as location,
	city as city,
	state as state,
	country as country,
	brand as brand,
	cost_center as cost_center,
	product_category as product_category,
	company as company, 
	worker_sub_type as worker_sub_type,
	termination_count as termination_count,
	ending_headcount as ending_headcount,
	voluntary_termination as voluntary_termination,
	involuntary_termination as involuntary_termination
	from workday_report.vw_capacity_planning_attrition
;
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


create or replace view vw_map_daily_calendar as 
select 

	calendar_day as calendar_day ,
	working_day_nbr as working_day_nbr,
	is_weekend as is_weekend ,
	is_holiday as is_holiday,
	working_day_running as working_day_running,
	biz_day_plus_5 as biz_day_plus_5,
	biz_day_plus_10 as biz_day_plus_10,
	biz_day_plus_20 as biz_day_plus_20 ,
	month_end_plus_5 as month_end_plus_5 ,
	month_end_plus_10 as  month_end_plus_10,
	month_end_plus_20 as month_end_plus_20
	from workday_report.vw_daily_calendar
;
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


CREATE OR REPLACE VIEW VW_MAP_EMPLOYEES_BY_MONTH_FUT as
		(SELECT REPORT_EFFECTIVE_DATE as data_as_of
			,WORKER
			,PREFERRED_NAME
			,EMPLOYEE_ID
			,PRIMARYWORKEMAIL AS EMAIL
			,BUSINESSTITLE AS BUSINESS_TITLE
			,WORKER_SUB_TYPE
			,WORKER_S_MANAGER AS MANAGER
			,SUPERVISORY_ORGANIZATION1 AS SUPERVISORY_ORGANIZATION
			,LOCATION1 AS LOCATION
			,JOB_PROFILE1 AS JOB_PROFILE
			,JOB_CATEGORY
			,JOB_FAMILY
			,JOB_LEVEL
			,BRAND
			,SUP_ORG_REF_ID
			,USER_ID_FROM_EMAIL AS USER_ID
			,COST_CENTER1 AS COST_CENTER
			,MANAGEMENT_LEVEL
			,LENGTH_OF_SERVICE_IN_MONTHS AS MONTHS_OF_SERVICE
			,ACTIVE_STATUS
			,HIRE_DATE
			,TERMINATION_DATE
			,COMPANY
			,ANAPLAN_HEADCOUNT_ID
			,POSITION_ID
			,CITY
			,STATE_PROVINCE AS STATE
			,COUNTRY
			,JOB_CODE
			,COST_CENTER_CODE
			FROM 
			workday_report.vw_EMPLOYEES_BY_MONTH
   
  );
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


create or replace view VW_MAP_INTERVIEW_DETAILS as 
select 
	ATS as ATS,
	INTERVIEWER_EMPLOYEE_ID as INTERVIEWER_EMPLOYEE_ID,
	INTERVIEWER_PREFERRED_NAME as INTERVIEWER_PREFERRED_NAME,
	INTERVIEWER_EMAIL as INTERVIEWER_EMAIL,
	INTERVIEWER_ACTIVE_YES_NO as INTERVIEWER_ACTIVE_YES_NO,
	IV_EVENT_ID as IV_EVENT_ID,
	INTERVIEW_DATE as INTERVIEW_DATE,
	INTERVIEWER_RATING as INTERVIEWER_RATING,
	INTERVIEWER_SUP_ORG_ID_IV_DATE as INTERVIEWER_SUP_ORG_ID_IV_DATE,
	INTERVIEWER_SUP_ORG_ID_MOST_RECENT as INTERVIEWER_SUP_ORG_ID_MOST_RECENT,
	INTERVIEWER_BUSINESS_TITLE_IV_DATE as INTERVIEWER_BUSINESS_TITLE_IV_DATE,
	INTERVIEWER_BUSINESS_TITLE_MOST_RECENT as INTERVIEWER_BUSINESS_TITLE_MOST_RECENT,
	INTERVIEWER_WORKER_SUB_TYPE_IV_DATE as INTERVIEWER_WORKER_SUB_TYPE_IV_DATE,
	INTERVIEWER_WORKER_SUB_TYPE_MOST_RECENT as INTERVIEWER_WORKER_SUB_TYPE_MOST_RECENT,
	INTERVIEWER_LOCATION_IV_DATE as INTERVIEWER_LOCATION_IV_DATE,
	INTERVIEWER_LOCATION_MOST_RECENT as INTERVIEWER_LOCATION_MOST_RECENT,
	INTERVIEWER_JOB_PROFILE_IV_DATE as INTERVIEWER_JOB_PROFILE_IV_DATE,
	INTERVIEWER_JOB_PROFILE_MOST_RECENT as INTERVIEWER_JOB_PROFILE_MOST_RECENT,
	INTERVIEWER_MANAGEMENT_LEVEL_IV_DATE as INTERVIEWER_MANAGEMENT_LEVEL_IV_DATE,
	INTERVIEWER_MANAGEMENT_LEVEL_MOST_RECENT as INTERVIEWER_MANAGEMENT_LEVEL_MOST_RECENT,
	INTERVIEWER_JOB_CATEGORY_IV_DATE as INTERVIEWER_JOB_CATEGORY_IV_DATE,
	INTERVIEWER_JOB_CATEGORY_MOST_RECENT as INTERVIEWER_JOB_CATEGORY_MOST_RECENT,
	INTERVIEWER_JOB_FAMILY_IV_DATE as INTERVIEWER_JOB_FAMILY_IV_DATE,
	INTERVIEWER_JOB_FAMILY_MOST_RECENT as INTERVIEWER_JOB_FAMILY_MOST_RECENT,
	INTERVIEWER_JOB_LEVEL_IV_DATE as INTERVIEWER_JOB_LEVEL_IV_DATE,
	INTERVIEWER_JOB_LEVEL_MOST_RECENT as INTERVIEWER_JOB_LEVEL_MOST_RECENT,
	INTERVIEWER_BRAND_IV_DATE as INTERVIEWER_BRAND_IV_DATE,
	INTERVIEWER_BRAND_MOST_RECENT as INTERVIEWER_BRAND_MOST_RECENT,
	INTERVIEWER_COST_CENTER_IV_DATE as INTERVIEWER_COST_CENTER_IV_DATE,
	INTERVIEWER_COST_CENTER_MOST_RECENT as INTERVIEWER_COST_CENTER_MOST_RECENT,
	INTERVIEW_SESSION_TYPE as INTERVIEW_SESSION_TYPE,
	WORKDAY_LUNCH_OR_DEBRIEF as WORKDAY_LUNCH_OR_DEBRIEF,
	CANDIDATE_EMAIL as CANDIDATE_EMAIL,
	CANDIDATE_NAME as CANDIDATE_NAME,
	REQUISITION_ID as REQUISITION_ID,
	INTERVIEW_TYPE as INTERVIEW_TYPE,
	IV_DATE_LEVEL_01_NAME as IV_DATE_LEVEL_01_NAME,
	IV_DATE_LEVEL_01_USER_ID as IV_DATE_LEVEL_01_USER_ID,
	IV_DATE_LEVEL_02_NAME as IV_DATE_LEVEL_02_NAME,
	IV_DATE_LEVEL_02_USER_ID as IV_DATE_LEVEL_02_USER_ID,
	IV_DATE_LEVEL_03_NAME as IV_DATE_LEVEL_03_NAME,
	IV_DATE_LEVEL_03_USER_ID as IV_DATE_LEVEL_03_USER_ID,
	IV_DATE_LEVEL_04_NAME as IV_DATE_LEVEL_04_NAME,
	IV_DATE_LEVEL_04_USER_ID as IV_DATE_LEVEL_04_USER_ID,
	IV_DATE_LEVEL_05_NAME as IV_DATE_LEVEL_05_NAME,
	IV_DATE_LEVEL_05_USER_ID as IV_DATE_LEVEL_05_USER_ID,
	IV_DATE_LEVEL_06_NAME as IV_DATE_LEVEL_06_NAME,
	IV_DATE_LEVEL_06_USER_ID as IV_DATE_LEVEL_06_USER_ID,
	IV_DATE_LEVEL_07_NAME as IV_DATE_LEVEL_07_NAME,
	IV_DATE_LEVEL_07_USER_ID as IV_DATE_LEVEL_07_USER_ID,
	IV_DATE_LEVEL_08_NAME as IV_DATE_LEVEL_08_NAME,
	IV_DATE_LEVEL_08_USER_ID as IV_DATE_LEVEL_08_USER_ID,
	IV_DATE_LEVEL_09_NAME as IV_DATE_LEVEL_09_NAME,
	IV_DATE_LEVEL_09_USER_ID as IV_DATE_LEVEL_09_USER_ID,
	IV_DATE_LEVEL_10_NAME as IV_DATE_LEVEL_10_NAME,
	IV_DATE_LEVEL_10_USER_ID as IV_DATE_LEVEL_10_USER_ID,
	IV_DATE_SUPERVISORY_ORGANIZATION as IV_DATE_SUPERVISORY_ORGANIZATION,
	IV_DATE_SUPERVISORY_MANAGER as IV_DATE_SUPERVISORY_MANAGER,
	IV_DATE_SUPERVISORY_MANAGER_USER_ID as IV_DATE_SUPERVISORY_MANAGER_USER_ID,
	MOST_RECENT_LEVEL_01_NAME as MOST_RECENT_LEVEL_01_NAME,
	MOST_RECENT_LEVEL_01_USER_ID as MOST_RECENT_LEVEL_01_USER_ID,
	MOST_RECENT_LEVEL_02_NAME as MOST_RECENT_LEVEL_02_NAME,
	MOST_RECENT_LEVEL_02_USER_ID as MOST_RECENT_LEVEL_02_USER_ID,
	MOST_RECENT_LEVEL_03_NAME as MOST_RECENT_LEVEL_03_NAME,
	MOST_RECENT_LEVEL_03_USER_ID as MOST_RECENT_LEVEL_03_USER_ID,
	MOST_RECENT_LEVEL_04_NAME as MOST_RECENT_LEVEL_04_NAME,
	MOST_RECENT_LEVEL_04_USER_ID as MOST_RECENT_LEVEL_04_USER_ID,
	MOST_RECENT_LEVEL_05_NAME as MOST_RECENT_LEVEL_05_NAME,
	MOST_RECENT_LEVEL_05_USER_ID as MOST_RECENT_LEVEL_05_USER_ID,
	MOST_RECENT_LEVEL_06_NAME as MOST_RECENT_LEVEL_06_NAME,
	MOST_RECENT_LEVEL_06_USER_ID as MOST_RECENT_LEVEL_06_USER_ID,
	MOST_RECENT_LEVEL_07_NAME as MOST_RECENT_LEVEL_07_NAME,
	MOST_RECENT_LEVEL_07_USER_ID as MOST_RECENT_LEVEL_07_USER_ID,
	MOST_RECENT_LEVEL_08_NAME as MOST_RECENT_LEVEL_08_NAME,
	MOST_RECENT_LEVEL_08_USER_ID as MOST_RECENT_LEVEL_08_USER_ID,
	MOST_RECENT_LEVEL_09_NAME as MOST_RECENT_LEVEL_09_NAME,
	MOST_RECENT_LEVEL_09_USER_ID as MOST_RECENT_LEVEL_09_USER_ID,
	MOST_RECENT_LEVEL_10_NAME as MOST_RECENT_LEVEL_10_NAME,
	MOST_RECENT_LEVEL_10_USER_ID as MOST_RECENT_LEVEL_10_USER_ID,
	MOST_RECENT_SUPERVISORY_ORGANIZATION as MOST_RECENT_SUPERVISORY_ORGANIZATION,
	MOST_RECENT_SUPERVISORY_MANAGER as MOST_RECENT_SUPERVISORY_MANAGER,
	MOST_RECENT_SUPERVISORY_MANAGER_USER_ID as MOST_RECENT_SUPERVISORY_MANAGER_USER_ID
	from workday_report.vw_INTERVIEW_DETAILS
;
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


create or replace view vw_map_requisitions_ur_zo_zhl as 
select 
	requisition_id as requisition_id,
	position_id as position_id ,
	is_ur  as is_ur,
	is_zo as is_zo,
	is_zhl as is_zhl
	from workday_report.vw_requisitions_ur_zo_zhl
;
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


CREATE OR REPLACE VIEW VW_MAP_WORKDAY_ACTIVE_EMPLOYEE as
		(SELECT REPORT_EFFECTIVE_DATE
			,WORKER
			,PREFERRED_NAME
			,EMPLOYEE_ID
			,PRIMARYWORKEMAIL AS EMAIL
			,BUSINESSTITLE AS BUSINESS_TITLE
			,WORKER_SUB_TYPE
			,WORKER_S_MANAGER AS MANAGER
			,SUPERVISORY_ORGANIZATION1 AS SUPERVISORY_ORGANIZATION
			,LOCATION1 AS LOCATION
			,JOB_PROFILE1 AS JOB_PROFILE
			,JOB_CATEGORY
			,JOB_FAMILY
			,JOB_LEVEL
			,BRAND
			,SUP_ORG_REF_ID
			,USER_ID_FROM_EMAIL AS USER_ID
			,COST_CENTER1 AS COST_CENTER
			,MANAGEMENT_LEVEL
			,LENGTH_OF_SERVICE_IN_MONTHS AS MONTHS_OF_SERVICE
			,ACTIVE_STATUS
			,HIRE_DATE
			,TERMINATION_DATE
			,COMPANY
			,ANAPLAN_HEADCOUNT_ID
			,POSITION_ID
			,CITY
			,STATE_PROVINCE AS STATE_OR_PROVINCE
			,COUNTRY
			,JOB_CODE
			,COST_CENTER_CODE
			FROM 
			workday_report.vw_WORKDAY_ACTIVE_EMPLOYEE
   
  );
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


CREATE VIEW VW_MAP_WORKDAY_ALL_INTERVIEWS as 
SELECT
CANDIDATE_EMAIL	AS	CANDIDATE_EMAIL	,
CANDIDATE_NAME	AS	CANDIDATE_NAME	,
CANDIDATE_STAGE	AS	CANDIDATE_STAGE	,
DATE_AND_TIME_COMPLETED_WITH_TIME_ZONE	AS	DATE_AND_TIME_COMPLETED_WITH_TIME_ZONE	,
FUNNEL_ACTIVITY	AS	FUNNEL_ACTIVITY	,
FUNNEL_ACTIVITY_DATE	AS	FUNNEL_ACTIVITY_DATE	,
FUNNEL_ACTIVITY_MOMENT	AS	FUNNEL_ACTIVITY_MOMENT	,
INTERVIEW_END_DATE_AND_TIME	AS	INTERVIEW_END_DATE_AND_TIME	,
INTERVIEW_EVENT_CREATED_MOMENT	AS	INTERVIEW_EVENT_CREATED_MOMENT	,
INTERVIEW_EVENT_DATE_AND_TIME_COMPLETED	AS	INTERVIEW_EVENT_DATE_AND_TIME_COMPLETED	,
INTERVIEW_EVENT_INITIATOR	AS	INTERVIEW_EVENT_INITIATOR	,
INTERVIEW_EVENT_INITIATOR_EMPLOYEE_ID	AS	INTERVIEW_EVENT_INITIATOR_EMPLOYEE_ID	,
INTERVIEW_EVENT_JOB_APPLICATION_STEP	AS	INTERVIEW_EVENT_JOB_APPLICATION_STEP	,
INTERVIEW_EVENT_PROCESS_INITIATION_STEP	AS	INTERVIEW_EVENT_PROCESS_INITIATION_STEP	,
INTERVIEW_EVENT_WORKDAY_ID	AS	INTERVIEW_EVENT_WORKDAY_ID	,
INTERVIEW_SCHEDULER_EMPLOYEE_ID	AS	INTERVIEW_SCHEDULER_EMPLOYEE_ID	,
INTERVIEW_SCHEDULER_NAME	AS	INTERVIEW_SCHEDULER_NAME	,
INTERVIEW_START_DATE_AND_TIME	AS	INTERVIEW_START_DATE_AND_TIME	,
INTERVIEW_STARTED_BEFORE_COMPLETED	AS	INTERVIEW_STARTED_BEFORE_COMPLETED	,
REQUISITION_ID	AS	REQUISITION_ID	,
SOURCE	AS	SOURCE	,
SOURCE_CATEGORY	AS	SOURCE_CATEGORY	,
WORKDAY_APPLICATION_ID		WORKDAY_APPLICATION_ID	
FROM 
workday_report.vw_WORKDAY_ALL_INTERVIEWS;
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


CREATE OR REPLACE VIEW VW_MAP_WORKDAY_ALL_OFFERS as
SELECT
NULL	as	AGENCY_FEE_PAID	,
CANDIDATE_EMAIL	as	CANDIDATE_EMAIL	,
CANDIDATE_NAME	as	CANDIDATE_NAME	,
CANDIDATE_STAGE	as	CANDIDATE_STAGE	,
CANDIDATE_START_DATE	as	CANDIDATE_START_DATE	,
DATE_AND_TIME_COMPLETED	as	DATE_AND_TIME_COMPLETED	,
DISPOSITION_REASON	as	DISPOSITION_REASON	,
FIRST_OFFER_EVENT_INITIATION_STEP_INITIATED_BY_WORKER	as	FIRST_OFFER_INITIATED_BY	,
FIRST_OFFER_EVENT_INITIATION_STEP_INITIATED_BY_EMPLOYEE_ID	as	FIRST_OFFER_INITIATED_BY_EMPLOYEE_ID	,
FIRST_SUBMITTED_OFFER_EVENT_INITIATION_STEP_INITIATED_BY_WORKER	as	FIRST_SUBMITTED_OFFER_INITIATOR	,
FIRST_SUBMITTED_OFFER_EVENT_INITIATION_STEP_INITIATED_BY_EMPLOYEE_ID	as	FIRST_SUBMITTED_OFFER_INITIATOR_EMPLOYEE_ID	,
FUNNEL_ACTIVITY	as	FUNNEL_ACTIVITY	,
HIRING_MANAGER	as	HIRING_MANAGER	,
JOB_POSTING_TITLE	as	JOB_POSTING_TITLE	,
OFFER_ACCEPT_MOMENT	as	OFFER_ACCEPTED_MOMENT	,
OFFER_ACCEPT_DATE	as	OFFER_ACCEPT_DATE	,
OFFER_STATUS	as	OFFER_STATUS	,
READY_FOR_HIRE_DATE	as	READY_FOR_HIRE_DATE	,
READY_FOR_HIRE_INITIATOR	as	READY_FOR_HIRE_INITIATOR	,
READY_FOR_HIRE_INITIATOR_EMPLOYEE_ID	as	READY_FOR_HIRE_INITIATOR_EMPLOYEE_ID	,
READY_FOR_HIRE_MOMENT	as	READY_FOR_HIRE_MOMENT	,
REQUISITION_ID	as	REQUISITION_ID	,
SOURCE	as	SOURCE	,
SOURCE_CATEGORY	as	SOURCE_CATEGORY	,
WORKDAY_APPLICATION_ID	as	WORKDAY_APPLICATION_ID	,
WORKER_SUB_TYPE	as	WORKER_SUB_TYPE	,
WORKER_TYPE	as	WORKER_TYPE	
FROM
workday_report.vw_WORKDAY_ALL_OFFERS
;
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


CREATE VIEW VW_MAP_WORKDAY_APPLICATIONS as 
SELECT
APPLICATION_DATE_AND_TIME_COMPLETED	as	APPLICATION_COMPLETED_DATE	,
APPLICATION_CREATED_BY	as	APPLICATION_CREATED_BY	,
BUSINESS_PROCESS_STEP	as	BUSINESS_PROCESS_STEP	,
CANDIDATE_CITY	as	CANDIDATE_CITY	,
COUNTRY	as	CANDIDATE_COUNTRY	,
CANDIDATE_EMAIL	as	CANDIDATE_EMAIL	,
CANDIDATE_EMPLOYEE_ID	as	CANDIDATE_EMPLOYEE_ID	,
CANDIDATE_ID	as	CANDIDATE_ID	,
CANDIDATE_ID_AS_OF_APPLICATION_DATE	as	CANDIDATE_ID_AS_OF_APPLICATION_DATE	,
CANDIDATE_ID_AS_OF_COMPLETED	as	CANDIDATE_ID_AS_OF_COMPLETED	,
CANDIDATE_ID_AS_OF_WORKDAY_LAUNCH	as	CANDIDATE_ID_AS_OF_WORKDAY_LAUNCH	,
CANDIDATE_NAME	as	CANDIDATE_NAME	,
CANDIDATE_REGION	as	CANDIDATE_REGION	,
CANDIDATE_STAGE	as	CANDIDATE_STAGE	,
CANDIDATE_START_DATE	as	CANDIDATE_START_DATE	,
APPLICATION_CREATED_BY_CANDIDATE_YN	as	CREATED_BY_CANDIDATE_YN	,
DEGREE	as	DEGREE	,
EMAIL_AS_OF_APPLICATION_DATE	as	EMAIL_AS_OF_APPLICATION_DATE	,
EMAIL_AS_OF_COMPLETED	as	EMAIL_AS_OF_COMPLETED	,
EMAIL_AS_OF_WORKDAY_LAUNCH	as	EMAIL_AS_OF_WORKDAY_LAUNCH	,
FIELD_OF_STUDY	as	FIELD_OF_STUDY	,
FIRST_OFFER_ACCEPT_OR_READY_FOR_HIRE_DATE	as	FIRST_ACCEPT_OR_RFH_DATE	,
FIRST_REFERRED_BY	as	FIRST_REFERRED_BY	,
FIRST_REFERRED_DATE	as	FIRST_REFERRED_DATE	,
FIRST_YEAR_ATTENDED	as	FIRST_YEAR_ATTENDED	,
FUNNEL_ACTIVITY	as	FUNNEL_ACTIVITY	,
FUNNEL_ACTIVITY_DATE	as	FUNNEL_ACTIVITY_DATE	,
FUNNEL_ACTIVITY_MOMENT	as	FUNNEL_ACTIVITY_MOMENT	,
JOB_APPLICATION_STEP	as	JOB_APPLICATION_STEP	,
LAST_REJECTED_OR_DECLINED	as	LAST_REJECTED_OR_DECLINED	,
LAST_YEAR_ATTENDED	as	LAST_YEAR_ATTENDED	,
OFFER_STATUS	as	OFFER_STATUS	,
ORIGINATED_FROM_EVERGREEN_REQUISITION	as	ORIGINATED_FROM_EVERGREEN_REQUISITION	,
ORIGINATED_FROM_EVERGREEN_REQUISITION_ID	as	ORIGINATED_FROM_EVERGREEN_REQUISITION_ID	,
RECRUITING_AGENCY	as	RECRUITING_AGENCY	,
RECRUITING_AGENCY_CANDIDATE_SUBMISSION_DATE	as	RECRUITING_AGENCY_CANDIDATE_SUBMISSION_DATE	,
REFERRED_BY	as	REFERRED_BY	,
REFERRED_ON	as	REFERRED_ON	,
REQUISITION_ID	as	REQUISITION_ID	,
SCHOOL	as	SCHOOL	,
SCHOOL_NAME_AS_TEXT	as	SCHOOL_NAME_AS_TEXT	,
SOURCE	as	SOURCE	,
SOURCE_CATEGORY	as	SOURCE_CATEGORY	,
WORKDAY_APPLICATION_ID	as	WORKDAY_APPLICATION_ID	,
WORKDAY_REQUISITION_ID	as	WORKDAY_REQUISITION_ID	,
ZG_EMAIL	as	ZG_EMAIL	

FROM 
workday_report.vw_WORKDAY_ALL_APPLICATIONS
;
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


create or replace view VW_MAP_WORKDAY_COST_CENTERS as 
select
CODE	as	CODE	,
COST_CENTER	as	COST_CENTER	,
COST_CENTER_MANAGER	as	COST_CENTER_MANAGER	,
COST_CENTER_MANAGER_EMPLOYEE_ID	as	COST_CENTER_MANAGER_EMPLOYEE_ID	,
FINANCE_COST_CENTER_HIERARCHY_LEVEL_1	as	FINANCE_LEVEL_1	,
FINANCE_COST_CENTER_HIERARCHY_LEVEL_2	as	FINANCE_LEVEL_2	,
FINANCE_COST_CENTER_HIERARCHY_LEVEL_3	as	FINANCE_LEVEL_3	,
FINANCE_COST_CENTER_HIERARCHY_LEVEL_4	as	FINANCE_LEVEL_4	,
INACTIVE	as	INACTIVE	,
PRODUCT_CATEGORY	as	PRODUCT_CATEGORY	,
REPORT_EFFECTIVE_DATE	as	REPORT_EFFECTIVE_DATE	
from workday_report.vw_workday_cost_centers

;
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


CREATE or replace VIEW VW_MAP_WORKDAY_INTERVIEW_FEEDBACK as 
SELECT
JOB_APPLICATION_WORKDAY_ID	as 	APPLICATION_WORKDAY_ID	,
CREATED_MOMENT	as 	INTERVIEW_CREATED_MOMENT	,
INTERVIEW_DATE	as 	INTERVIEW_DATE	,
INTERVIEW_EVENT_WORKDAY_ID	as 	INTERVIEW_EVENT_WORKDAY_ID	,
INTERVIEW_WORKDAY_ID	as 	INTERVIEW_WORKDAY_ID	,
INTERVIEWER1	as 	INTERVIEWER	,
INTERVIEWER_CURRENT_BRAND	as 	INTERVIEWER_BRAND	,
INTERVIEWER_BRAND_AS_OF_INTERVIEW_DATE	as 	INTERVIEWER_BRAND_IV_DATE	,
INTERVIEWER_CURRENT_BUSINESS_TITLE	as 	INTERVIEWER_BUSINESS_TITLE	,
INTERVIEWER_BUSINESS_TITLE_AS_OF_INTERVIEW_DATE	as 	INTERVIEWER_BUSINESS_TITLE_IV_DATE	,
INTERVIEWER_CURRENT_COST_CENTER	as 	INTERVIEWER_COST_CENTER	,
INTERVIEWER_COST_CENTER_AS_OF_INTERVIEW_DATE	as 	INTERVIEWER_COST_CENTER_IV_DATE	,
INTERVIEWER_EMAIL	as 	INTERVIEWER_EMAIL	,
INTERVIEWER_EMPLOYEE_ID	as 	INTERVIEWER_EMPLOYEE_ID	,
INTERVIEWER_FIRST_NAME	as 	INTERVIEWER_FIRST_NAME	,
INTERVIEWER_CURRENT_JOB_CATEGORY	as 	INTERVIEWER_JOB_CATEGORY	,
INTERVIEWER_JOB_CATEGORY_AS_OF_INTERVIEW_DATE	as 	INTERVIEWER_JOB_CATEGORY_IV_DATE	,
INTERVIEWER_CURRENT_JOB_FAMILY	as 	INTERVIEWER_JOB_FAMILY	,
INTERVIEWER_JOB_FAMILY_AS_OF_INTERVIEW_DATE	as 	INTERVIEWER_JOB_FAMILY_IV_DATE	,
INTERVIEWER_CURRENT_JOB_LEVEL	as 	INTERVIEWER_JOB_LEVEL	,
INTERVIEWER_JOB_LEVEL_AS_OF_INTERVIEW_DATE	as 	INTERVIEWER_JOB_LEVEL_IV_DATE	,
INTERVIEWER_CURRENT_JOB_PROFILE	as 	INTERVIEWER_JOB_PROFILE	,
INTERVIEWER_JOB_PROFILE_AS_OF_INTERVIEW_DATE	as 	INTERVIEWER_JOB_PROFILE_IV_DATE	,
INTERVIEWER_LAST_NAME	as 	INTERVIEWER_LAST_NAME	,
INTERVIEWER_CURRENT_LOCATION	as 	INTERVIEWER_LOCATION	,
INTERVIEWER_LOCATION_AS_OF_INTERVIEW_DATE2	as 	INTERVIEWER_LOCATION_IV_DATE	,
INTERVIEWER_CURRENT_MANAGEMENT_LEVEL	as 	INTERVIEWER_MANAGEMENT_LEVEL	,
INTERVIEWER_MANAGEMENT_LEVEL_AS_OF_INTERVIEW_DATE	as 	INTERVIEWER_MANAGEMENT_LEVEL_IV_DATE	,
INTERVIEWER_CURRENT_MANAGER	as 	INTERVIEWER_MANAGER	,
INTERVIEWER_MANAGER_AS_OF_INTERVIEW_DATE	as 	INTERVIEWER_MANAGER_IV_DATE	,
INTERVIEWER_CURRENT_MONTHS_OF_SERVICE	as 	INTERVIEWER_MONTHS_OF_SERVICE	,
INTERVIEWER_MONTHS_OF_SERVICE_AS_OF_INTERVIEW_DATE	as 	INTERVIEWER_MONTHS_OF_SERVICE_IV_DATE	,
INTERVIEWER_PREFERRED_NAME	as 	INTERVIEWER_PREFERRED_NAME	,
INTERVIEWER_CURRENT_SUP_ORG_REF_ID	as 	INTERVIEWER_SUP_ORG_REF_ID	,
INTERVIEWER_SUP_ORG_REF_ID_AS_OF_INTERVIEW_DATE	as 	INTERVIEWER_SUP_ORG_REF_ID_IV_DATE	,
INTERVIEWER_CURRENT_SUPERVISORY_ORGANIZATION	as 	INTERVIEWER_SUPERVISORY_ORG	,
INTERVIEWER_SUPERVISORY_ORGANIZATION_AS_OF_INTERVIEW_DATE	as 	INTERVIEWER_SUPERVISORY_ORGANIZATION_IV_DATE	,
INTERVIEWER_USER_ID	as 	INTERVIEWER_USER_ID	,
INTERVIEWER_CURRENT_WORKER_SUB_TYPE	as 	INTERVIEWER_WORKER_SUB_TYPE	,
INTERVIEWER_WORKER_SUB_TYPE_AS_OF_INTERVIEW_DATE	as 	INTERVIEWER_WORKER_SUB_TYPE_IV_DATE	,
JOB_APPLICATION1	as 	JOB_APPLICATION	,
LAST_FUNCTIONALLY_UPDATED	as 	LAST_UPDATED	,
DATE_SUBMITTED	as 	MOMENT_FEEDBACK_SUBMITTED	,
RATING	as 	RATING	,
RATING_TYPE	as 	RATING_TYPE	
FROM 
workday_report.vw_WORKDAY_INTERVIEW_FEEDBACK
;
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


create or replace view VW_MAP_WORKDAY_INTERVIEW_SCHEDULES as 
select 
CANDIDATE_EMAIL	as	CANDIDATE_EMAIL	,
CANDIDATE_NAME	as	CANDIDATE_NAME	,
CREATED_MOMENT	as	INTERVIEW_CREATED_MOMENT	,
INTERVIEW_DATE	as	INTERVIEW_DATE	,
INTERVIEW_SESSION_END_DATE_AND_TIME_WITH_TIME_ZONE	as	INTERVIEW_END_DATE_WITH_TIME_ZONE	,
INTERVIEW_SESSION_INTERVIEWER_EMAIL	as	INTERVIEW_SESSION_INTERVIEWER_EMAIL	,
INTERVIEW_SESSION_START_DATE_AND_TIME_WITH_TIME_ZONE	as	INTERVIEW_START_DATE_WITH_TIME_ZONE	,
INTERVIEW_TYPE	as	INTERVIEW_TYPE	,
WORKER	as	INTERVIEWER	,
INTERVIEWER_EMAIL	as	INTERVIEWER_EMAIL	,
EMPLOYEE_ID	as	INTERVIEWER_EMPLOYEE_ID	,
PREFERRED_NAME	as	INTERVIEWER_PREFERRED_NAME	,
SUPERVISORY_ORGANIZATION	as	INTERVIEWER_SUPERVISORY_ORG	,
INTERVIEWERS	as	INTERVIEWERS	,
REQUISITION_ID	as	REQUISITION_ID	,
SOURCE	as	SOURCE	,
SOURCE_CATEGORY	as	SOURCE_CATEGORY	,
WORKDAY_APPLICATION_ID	as	WORKDAY_APPLICATION_ID	,
NULL 	as	WORKDAY_REQUISITION_ID	
from 
workday_report.workday_interview_schedules;
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


create view VW_MAP_WORKDAY_JOB_PROFILES as 
select
REFERENCEID	AS	COMP_GRADE_ID	,
JOB_CATEGORY	AS	JOB_CATEGORY	,
JOB_CODE	AS	JOB_CODE	,
JOB_FAMILY	AS	JOB_FAMILY	,
JOB_LEVEL	AS	JOB_LEVEL	,
JOB_PROFILE	AS	JOB_PROFILE	,
INACTIVE	AS	JOB_PROFILE_INACTIVE	,
LAST_UPDATED	AS	LAST_UPDATED	,
MANAGEMENT_LEVEL	AS	MANAGEMENT_LEVEL	,
REPORT_EFFECTIVE_DATE	AS	REPORT_EFFECTIVE_DATE	
from workday_report.vw_WORKDAY_JOB_PROFILES
;
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


CREATE VIEW VW_MAP_WORKDAY_RECRUITERS as 
SELECT
BUSINESSTITLE	AS	BUSINESS_TITLE	,
CITY	AS	CITY	,
COUNTRY	AS	COUNTRY	,
CURRENTLY_ACTIVE	AS	CURRENTLY_ACTIVE	,
DATA_AS_OF	AS	DATA_AS_OF	,
EMPLOYEE_ID	AS	EMPLOYEE_ID	,
HIRE_DATE	AS	HIRE_DATE	,
JOB_PROFILE	AS	JOB_PROFILE	,
CF_LEVEL_06_FROM_THE_TOP_PERSON	AS	LEVEL_06_FROM_THE_TOP	,
CF_LEVEL_07_FROM_THE_TOP_PERSON	AS	LEVEL_07_FROM_THE_TOP	,
LOCATION	AS	LOCATION	,
MANAGEMENT_LEVEL	AS	MANAGEMENT_LEVEL	,
NUMBER_OF_DIRECT_REPORTS__CONTINGENT_WORKERS_	AS	NBR_CONTINGENT_DIRECTS	,
NUMBER_OF_DIRECT_REPORTS__EMPLOYEES_	AS	NBR_EMPLOYEE_DIRECTS	,
PREFERRED_NAME	AS	PREFERRED_NAME	,
STATE_PROVINCE	AS	STATE_OR_PROVINCE	,
REFERENCEID	AS	SUP_ORG_REF_ID	,
SUPERVISORY_ORGANIZATION	AS	SUPERVISORY_ORGANIZATION	,
TERMINATION_DATE	AS	TERMINATION_DATE	,
USER_ID_FROM_EMAIL	AS	USER_ID	,
WORKER	AS	WORKER	,
WORKER_SUB_TYPE	AS	WORKER_SUB_TYPE	,
WORKER_S_MANAGER	AS	WORKERS_MANAGER	,
WORKERS_MANAGER_USER_ID	AS	WORKERS_MANAGER_USER_ID	
FROM 
workday_report.vw_WORKDAY_RECRUITERS
;
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


create or replace view vw_map_workday_recruiters_monthly_snapshot as 
select 
	data_as_of as data_as_of,
	worker as worker,
	preferred_name as preferred_name,
	employee_id as employee_id,
	currently_active as currently_active,
	termination_date as termination_date,
	business_title as business_title,
	worker_sub_type as worker_sub_type ,
	workers_manager as workers_manager,
	supervisory_organization as supervisory_organization,
	sup_org_ref_id as sup_org_ref_id,
	level_06_from_the_top as level_06_from_the_top,
	level_07_from_the_top as level_07_from_the_top,
	user_id as user_id,
	job_profile as job_profile,
	management_level as management_level,
	nbr_employee_directs as nbr_employee_directs,
	nbr_contingent_directs as nbr_contingent_directs,
	recruiting_leader_restated as recruiting_leader_restated,
	recruiting_leader_direct_restated as recruiting_leader_direct_restated,
	recruiting_leader_restated_user_id as recruiting_leader_restated_user_id,
	recruiting_leader_direct_restated_user_id as recruiting_leader_direct_restated_user_id
	from workday_report.vw_workday_recruiters_monthly_snapshot
;
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


create or replace view VW_MAP_WORKDAY_REQUISITIONS as 
select
ANAPLANHEADCOUNTID	as	ANAPLAN_HEADCOUNT_ID	,
BRAND	as	BRAND	,
BUSINESS_UNIT	as	BUSINESS_UNIT	,
CITY	as	CITY	,
CLOSE_DATE	as	CLOSE_DATE	,
COMPANY	as	COMPANY	,
CF_COMPENSATION_GRADE_ID	as	COMPENSATION_GRADE_ID	,
COST_CENTER	as	COST_CENTER	,
COST_CENTER_CODE	as	COST_CENTER_CODE	,
COUNTRY	as	COUNTRY	,
CREATED_MOMENT	as	CREATED_MOMENT	,
CURRENT_ENTRY_DATE	as	CURRENT_ENTRY_DATE	,
DATA_AS_OF	as	DATA_AS_OF	,
HIRING_MANAGER	as	HIRING_MANAGER	,
HIRING_MANAGER_EMPLOYEE_ID	as	HIRING_MANAGER_EMPLOYEE_ID	,
INITIAL_JOB_TITLE	as	INITIAL_JOB_TITLE	,
IS_EVERGREEN	as	IS_EVERGREEN	,
JOB_CATEGORY	as	JOB_CATEGORY	,
JOB_FAMILY	as	JOB_FAMILY	,
JOB_LEVEL	as	JOB_LEVEL	,
JOB_POSTED_EXTERNALLY	as	JOB_POSTED_EXTERNALLY	,
JOB_POSTED_INTERNALLY	as	JOB_POSTED_INTERNALLY	,
JOB_POSTING_TITLE	as	JOB_POSTING_TITLE	,
JOB_PROFILE	as	JOB_PROFILE	,
JOB_PROFILE_EXEMPT	as	JOB_PROFILE_EXEMPT	,
JOB_REQUISITION	as	JOB_REQUISITION	,
JOB_REQUISITION_FILLED_DATE	as	JOB_REQUISITION_FILLED_DATE	,
JOB_REQUISITION_PRIMARY_LOCATION	as	JOB_REQUISITION_PRIMARY_LOCATION	,
JOB_REQUISITION_STATUS	as	JOB_REQUISITION_STATUS	,
LEADER	as	LEADER	,
LEADER_DIRECT	as	LEADER_DIRECT	,
LEADER_DIRECT_LEVEL_2	as	LEADER_DIRECT_LEVEL_2	,
LINKED_EVERGREEN_REQUISITION_ID	as	LINKED_EVERGREEN_REQ_ID	,
LINKED_EVERGREEN_REQUISITION	as	LINKED_EVERGREEN_REQUISITION	,
LOCATION_STATE_CODE	as	LOCATION_STATE_CODE	,
MANAGEMENT_LEVEL	as	MANAGEMENT_LEVEL	,
NEW_OR_REPLACEMENT	as	NEW_OR_REPLACEMENT	,
POSITION_ID	as	POSITION_ID	,
PRIMARY_RECRUITERS	as	PRIMARY_RECRUITERS	,
PRIMARY_RECRUITERS_EMAIL_ADDRESSES	as	PRIMARY_RECRUITERS_EMAIL_ADDRESSES	,
PRIMARY_RECRUITERS_MANAGERS	as	PRIMARY_RECRUITERS_MANAGERS	,
PRIMARY_RECRUITERS_RECRUITING_LEADERS	as	PRIMARY_RECRUITERS_RECRUITING_LEADERS	,
PRODUCT_CATEGORY	as	PRODUCT_CATEGORY	,
RECRUITER_EMPLOYEE_ID_FOR_LOAD_REPORTING	as	RECRUITER_EMPLOYEE_ID_LOAD_REPORTING	,
RECRUITING_LEADER_FOR_LOAD_REPORTING	as	RECRUITER_LEADER_LOAD_REPORTING	,
ID	as	RECRUITER_LOAD_REPORTING	,
PRIMARY_RECRUITER_MANAGER_FOR_LOAD_REPORTING	as	RECRUITER_MANAGER_LOAD_REPORTING	,
RECRUITING_COORDINATORS	as	RECRUITING_COORDINATORS	,
RECRUITING_START_DATE	as	RECRUITING_START_DATE	,
REPLACEMENT_FOR_WORKER	as	REPLACEMENT_FOR_WORKER	,
REQUISITION_APPROVAL_DATE	as	REQUISITION_APPROVAL_DATE	,
REQUISITION_DIVISION	as	REQUISITION_DIVISION	,
REQUISITION_ID	as	REQUISITION_ID	,
REQUISITION_STATUS	as	REQUISITION_STATUS	,
SOURCERS	as	SOURCERS	,
SUPERVISORY_ORGANIZATION_REFERENCE_ID	as	SUP_ORG_REF_ID	,
SUPERVISORY_ORGANIZATION	as	SUPERVISORY_ORGANIZATION	,
WORKER_SUB_TYPE	as	WORKER_SUB_TYPE	,
WORKER_TYPE	as	WORKER_TYPE	
from workday_report.vw_WORKDAY_REQUISITIONS
;
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


create or replace view vw_map_workday_requisitions_monthly_snapshot as 
select 
	data_as_of as data_as_of,
	job_requisition_status as job_requisition_status,
	job_requisition as job_requisition,
	requisition_id as requisition_id,
	requisition_status as requisition_status,
	job_posting_title as job_posting_title,
	job_profile as job_profile,
	remaining_openings as remaining_openings,
	hiring_manager as hiring_manager,
	hiring_managers as hiring_managers,
	primary_recruiter as primary_recruiter,
	primary_recruiters as primary_recruiters,
	primary_recruiters_managers as primary_recruiters_managers,
	primary_recruiters_recruiting_leaders as primary_recruiters_recruiting_leaders,
	recruiting_coordinators as recruiting_coordinators,
	sourcers as sourcers,
	brand as brand,
	job_category as job_category,
	division as division,
	cost_center as cost_center,
	job_family as job_family,
	worker_sub_type as worker_sub_type,
	job_level as job_level,
	job_profile_exempt as job_profile_exempt,
	new_or_replacement as new_or_replacement,
	replacement_for_worker as replacement_for_worker,
	job_requisition_primary_location as job_requisition_primary_location,
	job_requisition_freeze_date as job_requisition_freeze_date,
	recruiting_start_date as recruiting_start_date,
	days_open_from_recruiting_start_date as days_open_from_recruiting_start_date,
	leader as leader,
	leader_direct as leader_direct,
	leader_direct_level_2 as leader_direct_level_2,
	supervisory_organization as supervisory_organization,
	pending_start_offer_acept_candidate_name as pending_start_offer_acept_candidate_name,
	is_evergreen as is_evergreen,
	linked_evergreen_requisition as linked_evergreen_requisition,
	created_moment as created_moment,
	close_date as close_date,
	job_requisition_filled_date as job_requisition_filled_date,
	business_unit as business_unit,
	business_unit_leader as business_unit_leader,
	location_state_code as location_state_code,
	country as country,
	sup_org_ref_id as sup_org_ref_id,
	job_posted_externally as job_posted_externally,
	position_id as position_id,
	linked_evergreen_req_id as linked_evergreen_req_id,
	management_level as management_level,
	hiring_manager_employee_id as hiring_manager_employee_id,
	position_current_division as position_current_division,
	position_current_cost_center as position_current_cost_center,
	worker_type as worker_type,
	recruiter_load_reporting as recruiter_load_reporting,
	recruiter_manager_load_reporting as recruiter_manager_load_reporting,
	recruiter_leader_load_reporting as recruiter_leader_load_reporting,
	requisition_approval_date as requisition_approval_date,
	current_entry_date as current_entry_date,
	recruiter_employee_id_load_reporting as recruiter_employee_id_load_reporting,
	division_original as division_original,
	position_division_original as position_division_original
		from workday_report.vw_workday_requisitions_monthly_snapshot
;
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


CREATE OR REPLACE VIEW VW_MAP_WORKDAY_REVIEW_STAGE as 
select
APPLICATION_CREATED_BY_CANDIDATE_YN	as	APPLICATION_CREATED_BY_CANDIDATE_YN	,
ADDED_DATE	as	APPLICATION_DATE	,
JOB_APPLICATION_WORKDAY_ID	as	APPLICATION_WORKDAY_ID	,
CANDIDATE_EMAIL	as	CANDIDATE_EMAIL	,
CANDIDATE_NAME	as	CANDIDATE_NAME	,
CURRENT_CANDIDATE_STAGE	as	CURRENT_CANDIDATE_STAGE	,
HIRING_MANAGER	as	HIRING_MANAGER	,
JOB_TITLE	as	JOB_TITLE	,
RECRUITER	as	RECRUITER	,
RECRUITER_EMPLOYEE_ID	as	RECRUITER_EMPLOYEE_ID	,
REQUISITION_ID	as	REQUISITION_ID	,
SECOND_CANDIDATE_STAGE	as	SECOND_CANDIDATE_STAGE	,
SECOND_STAGE_CREATED	as	SECOND_STAGE_CREATED	,
SOURCE	as	SOURCE	,
SOURCE_CATEGORY	as	SOURCE_CATEGORY	
from workday_report.vw_workday_review_stage;
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


create or replace view VW_MAP_WORKDAY_SUPERVISORY_ORGS as (
select 
SUPERVISORY_ORGANIZATION  	,
REFERENCEID as SUPERVISORY_ORGANIZATION_REFERENCE_ID	,
CODE as SUP_ORG_CODE	,
MANAGER1 as SUPERVISORY_MANAGER	,
USER_ID_FROM_EMAIL as SUPERVISORY_MANAGER_USER_ID	,
LEVEL as ORG_LEVEL_FROM_TOP	,
LEVEL_01_USER_ID	,
LEVEL_01_NAME	,
LEVEL_02_USER_ID	,
LEVEL_02_NAME	,
LEVEL_03_USER_ID	,
LEVEL_03_NAME	,
LEVEL_04_USER_ID	,
LEVEL_04_NAME	,
LEVEL_05_USER_ID	,
LEVEL_05_NAME	,
LEVEL_06_USER_ID	,
LEVEL_06_NAME	,
LEVEL_07_USER_ID	,
LEVEL_07_NAME	,
LEVEL_08_USER_ID	,
LEVEL_08_NAME	,
LEVEL_09_USER_ID	,
LEVEL_09_NAME	,
LEVEL_10_USER_ID	,
LEVEL_10_NAME	,
RECRUITING_LEADS	,
RECRUITING_LEAD_EMAILS	,
RECRUITING_LEAD_SINGLULAR as RECRUITING_LEAD_SINGULAR	,
RECRUITING_LEAD_SINGLE_EMPLOYEE_ID	
from 
workday_report.vw_workday_supervisory_organizations
  );
  
  
CREATE OR REPLACE VIEW VW_MAP_EMPLOYEES_BY_MONTH as
		(SELECT REPORT_EFFECTIVE_DATE as data_as_of
			,WORKER
			,PREFERRED_NAME
			,EMPLOYEE_ID
			,PRIMARYWORKEMAIL AS EMAIL
			,BUSINESSTITLE AS BUSINESS_TITLE
			,WORKER_SUB_TYPE
			,WORKER_S_MANAGER AS MANAGER
			,SUPERVISORY_ORGANIZATION1 AS SUPERVISORY_ORGANIZATION
			,LOCATION1 AS LOCATION
			,JOB_PROFILE1 AS JOB_PROFILE
			,JOB_CATEGORY
			,JOB_FAMILY
			,JOB_LEVEL
			,BRAND
			,SUP_ORG_REF_ID
			,USER_ID_FROM_EMAIL AS USER_ID
			,COST_CENTER1 AS COST_CENTER
			,MANAGEMENT_LEVEL
			,LENGTH_OF_SERVICE_IN_MONTHS AS MONTHS_OF_SERVICE
			,ACTIVE_STATUS
			,HIRE_DATE
			,TERMINATION_DATE
			,COMPANY
			,ANAPLAN_HEADCOUNT_ID
			,POSITION_ID
			,CITY
			,STATE_PROVINCE AS STATE
			,COUNTRY
			,JOB_CODE
			,COST_CENTER_CODE
			FROM 
			workday_report.vw_WORKDAY_EMPLOYEE_MONTHLY_SNAPSHOT
   
  );
  
 select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);

select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


create or replace view vw_map_workday_requisitions_monthly_snapshot as 
select 
BRAND	as	brand,
BUSINESS_UNIT	as	business_unit,
BUSINESS_UNIT_LEADER	as	business_unit_leader,
CLOSE_DATE	as	close_date,
COST_CENTER	as	cost_center,
COUNTRY	as	country,
CREATED_MOMENT	as	created_moment,
CURRENT_ENTRY_DATE	as	current_entry_date,
DATA_AS_OF	as	data_as_of,
NULL	as	days_open_from_recruiting_start_date,
REQUISITION_DIVISION	as	division,
NULL	as	division_original,
HIRING_MANAGER	as	hiring_manager,
HIRING_MANAGER_EMPLOYEE_ID	as	hiring_manager_employee_id,
NULL	as	hiring_managers,
IS_EVERGREEN	as	is_evergreen,
JOB_CATEGORY	as	job_category,
JOB_FAMILY	as	job_family,
JOB_LEVEL	as	job_level,
JOB_POSTED_EXTERNALLY	as	job_posted_externally,
JOB_POSTING_TITLE	as	job_posting_title,
JOB_PROFILE	as	job_profile,
JOB_PROFILE_EXEMPT	as	job_profile_exempt,
JOB_REQUISITION	as	job_requisition,
JOB_REQUISITION_FILLED_DATE	as	job_requisition_filled_date,
JOB_REQUISITION_FREEZE_DATE	as	job_requisition_freeze_date,
JOB_REQUISITION_PRIMARY_LOCATION	as	job_requisition_primary_location,
JOB_REQUISITION_STATUS	as	job_requisition_status,
LEADER	as	leader,
LEADER_DIRECT	as	leader_direct,
LEADER_DIRECT_LEVEL_2	as	leader_direct_level_2,
LINKED_EVERGREEN_REQUISITION_ID	as	linked_evergreen_req_id,
LINKED_EVERGREEN_REQUISITION	as	linked_evergreen_requisition,
LOCATION_STATE_CODE	as	location_state_code,
MANAGEMENT_LEVEL	as	management_level,
NEW_OR_REPLACEMENT	as	new_or_replacement,
NULL	as	pending_start_offer_acept_candidate_name,
NULL	as	position_current_cost_center,
PRODUCT_CATEGORY	as	position_current_division,
NULL	as	position_division_original,
POSITION_ID	as	position_id,
NULL	as	primary_recruiter,
PRIMARY_RECRUITERS	as	primary_recruiters,
PRIMARY_RECRUITERS_MANAGERS	as	primary_recruiters_managers,
PRIMARY_RECRUITERS_RECRUITING_LEADERS	as	primary_recruiters_recruiting_leaders,
RECRUITER_EMPLOYEE_ID_FOR_LOAD_REPORTING	as	recruiter_employee_id_load_reporting,
RECRUITING_LEADER_FOR_LOAD_REPORTING	as	recruiter_leader_load_reporting,
RECRUITING_LEADER_FOR_LOAD_REPORTING	as	recruiter_load_reporting,
PRIMARY_RECRUITER_MANAGER_FOR_LOAD_REPORTING as	recruiter_manager_load_reporting,
RECRUITING_COORDINATORS	as	recruiting_coordinators,
RECRUITING_START_DATE	as	recruiting_start_date,
NULL	as	remaining_openings,
REPLACEMENT_FOR_WORKER	as	replacement_for_worker,
REQUISITION_APPROVAL_DATE	as	requisition_approval_date,
REQUISITION_ID	as	requisition_id,
REQUISITION_STATUS	as	requisition_status,
SOURCERS	as	sourcers,
SUPERVISORY_ORGANIZATION_REFERENCE_ID	as	sup_org_ref_id,
SUPERVISORY_ORGANIZATION	as	supervisory_organization,
WORKER_SUB_TYPE	as	worker_sub_type
		from workday_report.vw_workday_requisitions_monthly_snapshot
		
;
  

create or replace view vw_map_workday_recruiters_monthly_snapshot as 
SELECT
BUSINESSTITLE	AS	BUSINESS_TITLE	,
CITY	AS	CITY	,
COUNTRY	AS	COUNTRY	,
CURRENTLY_ACTIVE	AS	CURRENTLY_ACTIVE	,
DATA_AS_OF	AS	DATA_AS_OF	,
EMPLOYEE_ID	AS	EMPLOYEE_ID	,
HIRE_DATE	AS	HIRE_DATE	,
JOB_PROFILE	AS	JOB_PROFILE	,
CF_LEVEL_06_FROM_THE_TOP_PERSON	AS	LEVEL_06_FROM_THE_TOP	,
CF_LEVEL_07_FROM_THE_TOP_PERSON	AS	LEVEL_07_FROM_THE_TOP	,
LOCATION	AS	LOCATION	,
MANAGEMENT_LEVEL	AS	MANAGEMENT_LEVEL	,
NUMBER_OF_DIRECT_REPORTS__CONTINGENT_WORKERS_	AS	NBR_CONTINGENT_DIRECTS	,
NUMBER_OF_DIRECT_REPORTS__EMPLOYEES_	AS	NBR_EMPLOYEE_DIRECTS	,
PREFERRED_NAME	AS	PREFERRED_NAME	,
STATE_PROVINCE	AS	STATE_OR_PROVINCE	,
REFERENCEID	AS	SUP_ORG_REF_ID	,
SUPERVISORY_ORGANIZATION	AS	SUPERVISORY_ORGANIZATION	,
TERMINATION_DATE	AS	TERMINATION_DATE	,
USER_ID_FROM_EMAIL	AS	USER_ID	,
WORKER	AS	WORKER	,
WORKER_SUB_TYPE	AS	WORKER_SUB_TYPE	,
WORKER_S_MANAGER	AS	WORKERS_MANAGER	,
WORKERS_MANAGER_USER_ID	AS	WORKERS_MANAGER_USER_ID	
b.RECRUITING_LEADER_DIRECT_RESTATED,
b.RECRUITING_LEADER_DIRECT_RESTATED_USER_ID,
b.RECRUITING_LEADER_RESTATED,
b.RECRUITING_LEADER_RESTATED_USER_ID
from workday_report.vw_workday_recruiters_monthly_snapshot a
left join workday_report.workday_report.t_recruiter_map_static b
on a.data_as_of=b.data_as_of and a.employee_id=b.employee_id
	
;
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  

-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();






CREATE or replace VIEW VW_BU_ALL_APPLICATIONS as
	WITH all_applications_raw AS (
		SELECT candidate_email
			, requisition_id
			, funnel_activity
			, funnel_activity_date
			, candidate_name
			, candidate_id
			, workday_application_id AS application_id
			, candidate_employee_id
			, source_category
			, source
			, candidate_start_date
			, COALESCE(candidate_start_date
				, CASE 
						WHEN candidate_stage = 'Ready for Hire' 
							THEN application_completed_date 
						END) 
				AS start_or_completed_date
			, CASE
					WHEN candidate_stage = 'Ready for Hire'
						OR (candidate_stage NOT IN ('Declined by Candidate','Rejected')
								AND offer_status = 'Offer Accepted')
						THEN 1
					ELSE 99
				END AS current_stage_rank
			, CASE
					WHEN source_category = 'Internal'
						THEN 1
					WHEN source_category = 'Agency'
						THEN 2
					WHEN source_category = 'Employee Referral'
						THEN 3
					WHEN source_category = 'Contacted by Recruiter'
						THEN 4
					ELSE 99
				END AS source_category_rank
		FROM rct.vw_map_workday_applications
		UNION ALL
		SELECT match_candidate
			, match_requisition
			, funnel_activity
			, funnel_activity_date
			, candidate_name
			, candidate_id
			, application_id
			, candidate_employee_id
			, source_category
			, source
			, candidate_start_date
			, candidate_start_date AS start_or_completed_date
			, CASE
					WHEN jobvite_current_workflow_state = 'Offer Accepted'
						THEN 1
					ELSE 99
				END AS current_stage_rank
			, CASE
					WHEN source_category = 'Internal'
						THEN 1
					WHEN source_category = 'Agency'
						THEN 2
					WHEN source_category = 'Employee Referral'
						THEN 3
					WHEN source_category = 'Contacted by Recruiter'
						THEN 4
					ELSE 99
				END AS source_category_rank
		FROM RECRUITINGDB.V_JOBVITE_APPLICATIONS
	)
    
SELECT a.candidate_email
	, a.requisition_id
	, a.funnel_activity
	, MIN(a.funnel_activity_date) AS first_application_date
	, MIN(a.candidate_start_date) AS candidate_start_date
	, MIN(a.start_or_completed_date) AS start_or_completed_date
	, c.candidate_name
	, c.candidate_id
	, b.application_id
	, c.candidate_employee_id
	, b.source_category
	, b.source
	, COALESCE (MIN(a.start_or_completed_date) 
					,(SELECT MIN(a0.start_or_completed_date)
						FROM all_applications_raw AS a0
						WHERE a.candidate_email = a0.candidate_email
							AND MIN(a.funnel_activity_date) <= a0.start_or_completed_date)
					, '2999-12-31') 
		AS next_start_date
FROM all_applications_raw AS a INNER JOIN
( SELECT 
       candidate_email,
	   requisition_id,
       source_category,
	   source,
	   application_id,
	   row_number() over (partition by candidate_email,requisition_id order by current_stage_rank,source_category_rank,funnel_activity_date,source_category,source) rnk
  FROM 
       all_applications_raw 
) b  
ON a.candidate_email=b.candidate_email AND a.requisition_id=b.requisition_id and b.rnk=1
INNER JOIN        
( SELECT 
		candidate_email,
		candidate_name,
		candidate_id,
		candidate_employee_id,
		row_number() over (partition by candidate_email order by funnel_activity_date desc,candidate_id desc) rnk
  FROM	
		all_applications_raw
) c 

ON  a.candidate_email=c.candidate_email and c.rnk=1
GROUP BY  
    a.candidate_email
	, a.requisition_id
	, a.funnel_activity
	, b.source_category
	, b.source
	, b.application_id
	, c.candidate_name
	, c.candidate_id
	, c.candidate_employee_id;


create view VW_MAP_ANAPLAN_OPEN_HEADCOUNT as
( 
select
NULL 	as	AVAILABILITY_DATE	,
AVAILABILITY_MONTH_CONNECT	as	AVAILABILITY_MONTH	,
BRAND	as	BRAND	,
BUSINESS_TITLE	as	BUSINESS_TITLE	,
COMPANY	as	COMPANY	,
COST_CENTER_NAME	as	COST_CENTER_NAME	,
EMPLOYEE_TYPE	as	EMPLOYEE_TYPE	,
HEADCOUNT_ID	as	HEADCOUNT_ID	,
HEADCOUNT_STATUS_CONNECT	as	HEADCOUNT_STATUS	,
FORECAST	as	ID	,
LEVEL	as	JOB_LEVEL	,
JOB_PROFILE	as	JOB_PROFILE	,
JOB_PROFILE_CODE	as	JOB_PROFILE_CODE	,
LOCATION	as	LOCATION	,
MANAGER_NAME	as	MANAGER_NAME	,
PRODUCT_CATEGORY	as	PRODUCT_CATEGORY	,
REPLACEMENT_FOR	as	REPLACEMENT_FOR	,
SUP_ORG_CODE	as	SUP_ORG_CODE	
from anaplan.vw_anaplan_headcount_report
);


CREATE OR REPLACE VIEW VW_BU_ALL_EMPLOYEES as
	WITH RAW_DATA AS
		(SELECT REPORT_EFFECTIVE_DATE
			,WORKER
			,PREFERRED_NAME
			,EMPLOYEE_ID
			,EMAIL
			,BUSINESS_TITLE
			,WORKER_SUB_TYPE
			,MANAGER
			,SUPERVISORY_ORGANIZATION
			,LOCATION
			,JOB_PROFILE
			,JOB_CATEGORY
			,JOB_FAMILY
			,JOB_LEVEL
			,BRAND
			,SUP_ORG_REF_ID
			,USER_ID
			,COST_CENTER
			,MANAGEMENT_LEVEL
			,MONTHS_OF_SERVICE
			,ACTIVE_STATUS
			,HIRE_DATE
			,TERMINATION_DATE
			,COMPANY
			,ANAPLAN_HEADCOUNT_ID
			,POSITION_ID
			,CITY
			,STATE_OR_PROVINCE
			,COUNTRY
			,JOB_CODE
			,COST_CENTER_CODE
			, ROW_NUMBER() OVER (PARTITION BY EMPLOYEE_ID ORDER BY ACTIVE_STATUS DESC, TERMINATION_DATE DESC) AS ROW_NBR
		FROM rct.VW_MAP_WORKDAY_ACTIVE_EMPLOYEE)

SELECT REPORT_EFFECTIVE_DATE
		,WORKER
		,PREFERRED_NAME
		,EMPLOYEE_ID
		,EMAIL
		,BUSINESS_TITLE
		,WORKER_SUB_TYPE
		,MANAGER
		,SUPERVISORY_ORGANIZATION
		,LOCATION
		,JOB_PROFILE
		,JOB_CATEGORY
		,JOB_FAMILY
		,JOB_LEVEL
		,BRAND
		,SUP_ORG_REF_ID
		,USER_ID
		,COST_CENTER
		,MANAGEMENT_LEVEL
		,MONTHS_OF_SERVICE
		,ACTIVE_STATUS
		,HIRE_DATE
		,TERMINATION_DATE 
		,COMPANY
		,ANAPLAN_HEADCOUNT_ID
		,POSITION_ID
		,CITY
		,STATE_OR_PROVINCE
		,COUNTRY
		,JOB_CODE
		,COST_CENTER_CODE
FROM RAW_DATA
WHERE ROW_NBR = 1;

create or replace view VW_BU_ALL_INTERVIEWS as
		
        select a.candidate_email
			, a.candidate_name
			, a.requisition_id
			, case when a.funnel_activity = 'Internal Mobility Screen' then 'Recruiter Screen' else a.funnel_activity end as funnel_activity
			, a.funnel_activity_date
			, a.interview_event_workday_id as interview_id
			, case when b.interview_event_workday_id is not null then 'Yes' else 'No' end as interview_has_feedback
		from  rct.VW_MAP_workday_all_interviews as a
			left join (select b0.interview_event_workday_id from  RCT.VW_MAP_WORKDAY_INTERVIEW_FEEDBACK as b0 group by b0.interview_event_workday_id) as b
				on a.interview_event_workday_id = b.interview_event_workday_id
			where a.interview_started_before_completed = '1' or a.interview_started_before_completed='Yes'
				and a.interview_event_date_and_time_completed is not null
		union all
		select match_candidate
			, candidate_name
			, match_requisition
			, funnel_activity
			, funnel_activity_date
			, jobvite_interview_id as interview_id
			, 'Yes' as interview_has_feedback
		from recruitingdb.v_jobvite_interviews;


CREATE VIEW VW_BU_ALL_OFFER_ACCEPTS as
		SELECT a.candidate_email
			, a.requisition_id
			, a.funnel_activity
			, COALESCE(a.offer_accept_date, a.ready_for_hire_date) AS funnel_activity_date
			, a.offer_accept_date
			, a.ready_for_hire_date
			, a.candidate_start_date
			, COALESCE(a.first_submitted_offer_initiator_employee_id
						, a.first_offer_initiated_by_employee_id
						, a.ready_for_hire_initiator_employee_id) AS offer_initiator_employee_id
			, a.agency_fee_paid
		FROM rct.vw_map_workday_all_offers AS a
		WHERE a.funnel_activity = 'Offer Accepted'
			AND
			NOT EXISTS 
			(SELECT b0.candidate_email
					, b0.requisition_id
				FROM recruitingdb.v_manual_offer_declines AS b0
				WHERE a.candidate_email = b0.candidate_email
					AND a.requisition_id = b0.requisition_id)
		UNION ALL
		SELECT a.match_candidate
			, a.match_requisition
			, a.funnel_activity
			, a.funnel_activity_date
			, a.funnel_activity_date AS offer_accept_date
			, a.funnel_activity_date AS ready_for_hire_date
			, a.candidate_start_date
			, a.offer_initiator_employee_id
			, a.actual_payout AS agency_fee_paid
		FROM recruitingdb.v_jobvite_offer_accepts AS a
		WHERE NOT EXISTS 
			(SELECT b0.candidate_email
					, b0.requisition_id
				FROM recruitingdb.v_manual_offer_declines AS b0
				WHERE a.match_candidate = b0.candidate_email
					AND a.match_requisition = b0.requisition_id) --check for manual declines
			AND NOT EXISTS 
			(SELECT b0.candidate_email
					, b0.requisition_id
				FROM rct.vw_map_workday_all_offers AS b0
				WHERE a.match_candidate = b0.candidate_email
					AND a.match_requisition = b0.requisition_id
					AND b0.funnel_activity = 'Offer Declined') --check for a later decline tracked in workday;
;

CREATE VIEW VW_BU_ALL_OFFER_DECLINES as

SELECT a.candidate_email
			, a.requisition_id
			, a.funnel_activity
			, a.funnel_activity_date
		FROM recruitingdb.v_manual_offer_declines AS a
		UNION ALL
		SELECT a.candidate_email
			, a.requisition_id
			, a.funnel_activity
			, CAST(a.date_and_time_completed AS DATE) AS funnel_activity_date
		FROM rct.vw_map_workday_all_offers AS a
		WHERE a.funnel_activity = 'Offer Declined'
		UNION ALL
		SELECT a.match_candidate
			, a.match_requisition
			, a.funnel_activity
			, a.funnel_activity_date
		FROM recruitingdb.v_jobvite_offer_declines AS a
		WHERE NOT EXISTS (SELECT b0.candidate_email
								, b0.requisition_id
							FROM rct.vw_map_workday_all_offers AS b0
							WHERE a.match_candidate = b0.candidate_email
								AND a.match_requisition = b0.requisition_id
								AND b0.funnel_activity = 'Offer Accepted') --check for a later accept tracked in Workday;
								
	select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


create view VW_BU_REQUISITION_MASTER as select * from workday_report.vw_requisition_master;
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


CREATE OR REPLACE VIEW VW_BU_SUPERVISORY_ORG_COALESCE as
SELECT SO.supervisory_organization
      ,SO.supervisory_organization_reference_id
      ,SO.sup_org_code
      ,SO.supervisory_manager
      ,SO.supervisory_manager_user_id
      ,SO.org_level_from_top
	  ,SO.recruiting_leads
	  ,SO.recruiting_lead_emails
	  ,SO.recruiting_lead_singular
	  ,SO.recruiting_lead_single_employee_id
      ,SO.level_01_user_id
      ,SO.level_01_name

		, COALESCE(SO.level_02_name, SO.level_01_name) 
			AS level_02_name
		, COALESCE(SO.level_02_user_id, SO.level_01_user_id) 
			AS level_02_user_id
		, COALESCE(SO.level_03_name, SO.level_02_name, SO.level_01_name) 
			AS level_03_name
		, COALESCE(SO.level_03_user_id, SO.level_02_user_id, SO.level_01_user_id) 
			AS level_03_user_id
		, COALESCE(SO.level_04_name, SO.level_03_name, SO.level_02_name, SO.level_01_name) 
			AS level_04_name
		, COALESCE(SO.level_04_user_id, SO.level_03_user_id, SO.level_02_user_id, SO.level_01_user_id) 
			AS level_04_user_id
		, COALESCE(SO.level_05_name, SO.level_04_name, SO.level_03_name, SO.level_02_name, SO.level_01_name) 
			AS level_05_name
		, COALESCE(SO.level_05_user_id, SO.level_04_user_id, SO.level_03_user_id, SO.level_02_user_id, SO.level_01_user_id) 
			AS level_05_user_id
		, COALESCE(SO.level_06_name, SO.level_05_name, SO.level_04_name, SO.level_03_name, SO.level_02_name, SO.level_01_name) 
			AS level_06_name
		, COALESCE(SO.level_06_user_id, SO.level_05_user_id, SO.level_04_user_id, SO.level_03_user_id, SO.level_02_user_id, SO.level_01_user_id) 
			AS level_06_user_id
		, COALESCE(SO.level_07_name, SO.level_06_name, SO.level_05_name, SO.level_04_name, SO.level_03_name, SO.level_02_name, SO.level_01_name) 
			AS level_07_name
		, COALESCE(SO.level_07_user_id, SO.level_06_user_id, SO.level_05_user_id, SO.level_04_user_id, SO.level_03_user_id, SO.level_02_user_id, SO.level_01_user_id) 
			AS level_07_user_id
		, COALESCE(SO.level_08_name, SO.level_07_name, SO.level_06_name, SO.level_05_name, SO.level_04_name, SO.level_03_name, SO.level_02_name, SO.level_01_name) 
			AS level_08_name
		, COALESCE(SO.level_08_user_id, SO.level_07_user_id, SO.level_06_user_id, SO.level_05_user_id, SO.level_04_user_id, SO.level_03_user_id, SO.level_02_user_id, SO.level_01_user_id) 
			AS level_08_user_id
		, COALESCE(SO.level_09_name, SO.level_08_name, SO.level_07_name, SO.level_06_name, SO.level_05_name, SO.level_04_name, SO.level_03_name, SO.level_02_name, SO.level_01_name) 
			AS level_09_name
		, COALESCE(SO.level_09_user_id, SO.level_08_user_id, SO.level_07_user_id, SO.level_06_user_id, SO.level_05_user_id, SO.level_04_user_id, SO.level_03_user_id, SO.level_02_user_id, SO.level_01_user_id) 
			AS level_09_user_id
		, COALESCE(SO.level_10_name, SO.level_09_name, SO.level_08_name, SO.level_07_name, SO.level_06_name, SO.level_05_name, SO.level_04_name, SO.level_03_name, SO.level_02_name, SO.level_01_name) 
			AS level_10_name
		, COALESCE(SO.level_10_user_id, SO.level_09_user_id, SO.level_08_user_id, SO.level_07_user_id, SO.level_06_user_id, SO.level_05_user_id, SO.level_04_user_id, SO.level_03_user_id, SO.level_02_user_id, SO.level_01_user_id) 
			AS level_10_user_id


  FROM rct.vw_map_workday_supervisory_orgs AS SO;
  
  CREATE OR REPLACE VIEW VW_BU_ALL_RECRUITERS as
	WITH raw_data AS
		(SELECT a.data_as_of
			,a.worker
			,a.preferred_name
			,a.employee_id
			,a.user_id
			,a.business_title
			,a.worker_sub_type
			,a.workers_manager
			,a.workers_manager_user_id
			,a.supervisory_organization
			,a.job_profile
			,a.sup_org_ref_id
			,a.management_level
			,a.termination_date
			,a.currently_active
			, a.nbr_employee_directs
			, a.nbr_contingent_directs
			, a.hire_date
			, CASE 
					WHEN LEFT(a.user_id,2) = 'v-' 
						THEN RIGHT(a.user_id,length(a.user_id)-2)
					ELSE a.user_id
				END AS alt_user_id
			, (SELECT MIN(a0.hire_date) FROM rct.vw_map_workday_recruiters AS a0 WHERE a0.employee_id = a.employee_id) AS min_hire_date 
			, ROW_NUMBER() OVER (PARTITION BY a.employee_id ORDER BY a.currently_active DESC, a.termination_date DESC) AS row_nbr
		FROM rct.vw_map_workday_recruiters AS a
			WHERE a.currently_active = '1'
				OR a.termination_date IS NULL
				OR cast(a.termination_date as date) >= cast('2019-01-01' as date))
SELECT a.data_as_of
		, a.worker
		, a.preferred_name
		, a.employee_id
		, a.user_id
		, a.alt_user_id
		, a.business_title
		, a.worker_sub_type
		, a.workers_manager
		, a.workers_manager_user_id
		, a.supervisory_organization
		, a.job_profile
		, a.sup_org_ref_id
		, a.management_level
		, a.currently_active
		, a.termination_date 
		, a.hire_date
		, a.min_hire_date
		, b.level_04_name
		, b.level_04_user_id
		, b.level_05_name
		, b.level_05_user_id		
		, b.level_06_name
		, b.level_06_user_id		
		, b.level_07_name
		, b.level_07_user_id
		, b.level_08_name
		, b.level_08_user_id
		, b.level_09_name
		, b.level_09_user_id
		, b.level_10_name
		, b.level_10_user_id
		, a.nbr_employee_directs
		, a.nbr_contingent_directs

FROM raw_data AS a
	LEFT JOIN rct.vw_bu_supervisory_org_coalesce AS b
	ON a.sup_org_ref_id = b.supervisory_organization_reference_id
WHERE a.row_nbr = 1;

select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();

create or replace view VW_BU_WORKDAY_INTERVIEW_DETAILS as
with workday_interviewers as
	(select workday_application_id
      ,requisition_id
      ,workday_requisition_id
      ,candidate_name
      ,interviewer_preferred_name
      ,interviewer
      ,interviewer_employee_id
      from rct.vw_map_workday_interview_schedules
	where interviewer is not null)

	, workday_scheduled_interviewers as
	(select workday_application_id
		  ,requisition_id
          ,workday_requisition_id
		  ,candidate_name
		  ,candidate_email
		  ,interview_created_moment
		  ,interview_date
		  ,interview_type
		  ,interview_start_date_with_time_zone
          ,interview_end_date_with_time_zone
		  ,flt.value as interviewer
          ,row_number() over (partition by workday_application_id, interview_created_moment, interview_date, interview_type, flt.value
				order by workday_application_id) as interviewer_row_nbr	
	  from rct.vw_map_workday_interview_schedules,
--lateral flatten (input => split(replace(interviewers,char(10)||char(10),char(10)),char(10))) as flt
      lateral flatten (input => split(interviewers,';')) as flt
		where interviewers is not null
		)

 
 select wsi.workday_application_id as application_id
	, wsi.requisition_id
	, wsi.candidate_name
	, wsi.candidate_email
	, wiv.source_category
	, wiv.source
	, wi.interviewer_employee_id
	, wi.interviewer_preferred_name
	, wae.email as interviewer_email
	, wae.active_status as interviewer_active_yes_no
	, wiv.interview_event_workday_id
	, wsi.interview_type as interview_session_type
	, wsm.funnel_activity
	, wiv.funnel_activity_date as interview_date
	, wiv.interview_started_before_completed
	, wiv.interview_event_date_and_time_completed
	, wsi.interview_start_date_with_time_zone
    , wsi.interview_end_date_with_time_zone
	, case when wif.rating_type = 'overall' and wif.rating = 1 then 'No Hire'
			when wif.rating_type = 'overall' and wif.rating = 2 then 'Hire'
		end as interviewer_rating
	, wif.moment_feedback_submitted
	, coalesce(wif.interviewer_sup_org_ref_id_iv_date, ebm1.sup_org_ref_id, ebm2.sup_org_ref_id) as interviewer_sup_org_id_iv_date
	, wae.sup_org_ref_id as interviewer_sup_org_id_most_recent
	, coalesce(wif.interviewer_business_title_iv_date, ebm1.business_title, ebm2.business_title) as interviewer_business_title_iv_date
	, wae.business_title as interviewer_business_title_most_recent
	, coalesce(wif.interviewer_worker_sub_type_iv_date, ebm1.worker_sub_type, ebm2.worker_sub_type) as interviewer_worker_sub_type_iv_date
	, wae.worker_sub_type as interviewer_worker_sub_type_most_recent
	, coalesce(wif.interviewer_location_iv_date, ebm1.location, ebm2.location) as interviewer_location_iv_date
	, wae.location as interviewer_location_most_recent
	, coalesce(wif.interviewer_job_profile_iv_date, ebm1.job_profile, ebm2.job_profile) as interviewer_job_profile_iv_date
	, wae.job_profile as interviewer_job_profile_most_recent
	, coalesce(wif.interviewer_management_level_iv_date, ebm1.management_level, ebm2.management_level) as interviewer_management_level_iv_date
	, wae.management_level as interviewer_management_level_most_recent
	, coalesce(wif.interviewer_job_category_iv_date, ebm1.job_category, ebm2.job_category) as interviewer_job_category_iv_date
	, wae.job_category as interviewer_job_category_most_recent
	, coalesce(wif.interviewer_job_family_iv_date, ebm1.job_family, ebm2.job_family) as interviewer_job_family_iv_date
	, wae.job_family as interviewer_job_family_most_recent
	, coalesce(wif.interviewer_job_level_iv_date, ebm1.job_level, ebm2.job_level) as interviewer_job_level_iv_date
	, wae.job_level as interviewer_job_level_most_recent
	, coalesce(wif.interviewer_brand_iv_date, ebm1.brand, ebm2.brand) as interviewer_brand_iv_date
	, wae.brand as interviewer_brand_most_recent
	, coalesce(wif.interviewer_cost_center_iv_date, ebm1.cost_center, ebm2.cost_center) as interviewer_cost_center_iv_date
	, wae.cost_center as interviewer_cost_center_most_recent
	
from workday_scheduled_interviewers as wsi
	left join  workday_interviewers as wi
	on wsi.workday_application_id = wi.workday_application_id
		and trim(replace(wsi.interviewer,'"','')) = wi.interviewer
	inner join rct.vw_map_workday_all_interviews as wiv
	on wsi.workday_application_id = wiv.workday_application_id
		and wsi.interview_created_moment > wiv.interview_event_created_moment
		and wsi.interview_created_moment <= wiv.interview_event_date_and_time_completed
	left join  recruitingdb.v_workday_step_mapping as wsm
		on wiv.funnel_activity = wsm.workday_step
	left join rct.vw_map_workday_interview_feedback as wif
		on wsi.workday_application_id = wif.application_workday_id
		and wi.interviewer_employee_id = wif.interviewer_employee_id
		and wif.interview_created_moment > wiv.interview_event_created_moment
		and wif.interview_created_moment <= wiv.interview_event_date_and_time_completed
	left join rct.vw_map_employees_by_month as ebm1
		on wi.interviewer_employee_id = ebm1.employee_id
		and month(to_date(wsi.interview_date)) = month(to_date(ebm1.data_as_of))
		and year(to_date(wsi.interview_date)) = year(to_date(ebm1.data_as_of))
	left join rct.vw_map_employees_by_month as ebm2
		on wi.interviewer_employee_id = ebm2.employee_id
		and month(dateadd(month,1,to_date(wsi.interview_date))) = month(to_date(ebm2.data_as_of))
		and year(dateadd(month,1,to_date(wsi.interview_date))) = year(to_date(ebm2.data_as_of))
	left join rct.vw_bu_all_employees as wae
		on wi.interviewer_employee_id = wae.employee_id
	where wsi.interviewer_row_nbr = 1;
	
create or replace view VW_BU_AUDIT_INTERVIEW_FEEDBACK as
select a.requisition_id
      ,a.candidate_name
      ,a.interviewer_preferred_name
      ,a.interviewer_email
      ,a.interviewer_active_yes_no
      ,a.interview_session_type
      ,a.funnel_activity as interview_type
      ,a.interview_date
	  , a.interview_event_date_and_time_completed
	  , a.interview_started_before_completed
      ,a.interviewer_rating
      ,a.moment_feedback_submitted
	  ,c.hiring_manager
      ,a.interviewer_sup_org_id_iv_date
	  ,b.level_04_name
	  ,b.level_05_name
	  ,b.level_06_name
      ,a.interviewer_business_title_iv_date
      ,a.interviewer_worker_sub_type_iv_date
      ,a.interviewer_location_iv_date
      ,a.interviewer_cost_center_iv_date
  from rct.vw_bu_workday_interview_details as a
	left join rct.vw_bu_supervisory_org_coalesce as b
		on to_varchar(a.interviewer_sup_org_id_iv_date) = to_varchar(b.supervisory_organization_reference_id)
	left join rct.vw_map_workday_requisitions as c
		on to_varchar(a.requisition_id) = to_varchar(c.requisition_id)
  where to_varchar(a.interview_started_before_completed) = 1
	and	to_date(a.interview_date) >= '2019-04-01'
	--and a.moment_feedback_submitted is null;
	
create view VW_BU_CANDIDATE_ACTIVITY_MASTER as select * from workday_report.vw_candidate_activity_master;
		
CREATE OR REPLACE VIEW VW_BU_DATA_AS_OF_DATES as
SELECT DATE_PART(year, d.data_as_of) AS data_as_of_year
			, d.data_as_of AS data_as_of_date
			, CAST(DATEADD(year,DATEDIFF(year,'1999-01-01',d.data_as_of),'1999-01-01') AS date) AS data_as_of_year_start
			, CASE
				WHEN d.data_as_of = CAST(DATEADD(month,DATEDIFF(month,'1999-12-31',d.data_as_of),'1999-12-31') AS date)
				THEN CAST(DATEADD(month,DATEDIFF(month,'1999-01-01',d.data_as_of),'1999-01-01') AS date)
				ELSE CAST(DATEADD(month,DATEDIFF(month,'1999-01-01',d.data_as_of)-1,'1999-01-01') AS date)
				END AS last_completed_month_start
			, CASE
				WHEN d.data_as_of = CAST(DATEADD(month,DATEDIFF(month,'1999-12-31',d.data_as_of),'1999-12-31') AS date)
				THEN d.data_as_of
				ELSE CAST(DATEADD(month,DATEDIFF(month,'1999-12-31',d.data_as_of)-1,'1999-12-31') AS date)
				END AS last_completed_month_end
			, CASE
				WHEN d.data_as_of = CAST(DATEADD(quarter,DATEDIFF(quarter,'1999-12-31',d.data_as_of),'1999-12-31') AS date)
				THEN CAST(DATEADD(quarter,DATEDIFF(quarter,'1999-01-01',d.data_as_of),'1999-01-01') AS date)
				ELSE CAST(DATEADD(quarter,DATEDIFF(quarter,'1999-01-01',d.data_as_of)-1,'1999-01-01') AS date)
				END AS last_completed_quarter_start
			, CASE
				WHEN d.data_as_of = CAST(DATEADD(quarter,DATEDIFF(quarter,'1999-12-31',d.data_as_of),'1999-12-31') AS date)
				THEN d.data_as_of
				ELSE CAST(DATEADD(quarter,DATEDIFF(quarter,'1999-12-31',d.data_as_of)-1,'1999-12-31') AS date)
				END AS last_completed_quarter_end
			, CASE
				WHEN d.data_as_of = CAST(DATEADD(quarter,DATEDIFF(quarter,'1999-12-31',d.data_as_of),'1999-12-31') AS date)
				THEN DATE_PART(quarter,d.data_as_of)
				ELSE DATE_PART(quarter,(DATEADD(quarter,DATEDIFF(quarter,'1999-12-31',d.data_as_of)-1,'1999-12-31')))
				END AS last_completed_quarter_number
			, DATE_PART(year, d.data_as_of)-1 AS last_year_data_as_of_year
			, DATEADD(year,-1,d.data_as_of) AS last_year_data_as_of_date
			, CAST(DATEADD(year,DATEDIFF(year,'1999-01-01',d.data_as_of)-1,'1999-01-01') AS date) AS last_year_start
			, CAST(DATEADD(year,DATEDIFF(year,'1999-12-31',d.data_as_of)-1,'1999-12-31') AS date) AS last_year_end

			, DATEADD(year,-1,
						CASE
							WHEN d.data_as_of = CAST(DATEADD(month,DATEDIFF(month,'1999-12-31',d.data_as_of),'1999-12-31') AS date)
							THEN CAST(DATEADD(month,DATEDIFF(month,'1999-01-01',d.data_as_of),'1999-01-01') AS date)
							ELSE CAST(DATEADD(month,DATEDIFF(month,'1999-01-01',d.data_as_of)-1,'1999-01-01') AS date)
							END) AS last_year_last_completed_month_start
			, DATEADD(year,-1,
						CASE
							WHEN d.data_as_of = CAST(DATEADD(month,DATEDIFF(month,'1999-12-31',d.data_as_of),'1999-12-31') AS date)
							THEN d.data_as_of
							ELSE CAST(DATEADD(month,DATEDIFF(month,'1999-12-31',d.data_as_of)-1,'1999-12-31') AS date)
							END) AS last_year_last_completed_month_end
			, DATEADD(year,-1,
						CASE
							WHEN d.data_as_of = CAST(DATEADD(quarter,DATEDIFF(quarter,'1999-12-31',d.data_as_of),'1999-12-31') AS date)
							THEN CAST(DATEADD(quarter,DATEDIFF(quarter,'1999-01-01',d.data_as_of),'1999-01-01') AS date)
							ELSE CAST(DATEADD(quarter,DATEDIFF(quarter,'1999-01-01',d.data_as_of)-1,'1999-01-01') AS date)
							END) AS last_year_last_completed_quarter_start
			, DATEADD(year,-1,
						CASE
							WHEN d.data_as_of = CAST(DATEADD(quarter,DATEDIFF(quarter,'1999-12-31',d.data_as_of),'1999-12-31') AS date)
							THEN d.data_as_of
							ELSE CAST(DATEADD(quarter,DATEDIFF(quarter,'1999-12-31',d.data_as_of)-1,'1999-12-31') AS date)
							END) AS last_year_last_completed_quarter_end
			FROM (SELECT TOP 1 cast(WR.data_as_of as date) as data_as_of FROM rct.vw_map_workday_requisitions AS WR) AS d;

CREATE VIEW VW_BU_INTERN_CONVERSIONS as
WITH intern_offer_accepts AS
	(SELECT a.candidate_email
			, a.funnel_activity_date
		FROM rct.vw_bu_candidate_activity_master AS a
			LEFT JOIN rct.vw_bu_requisition_master AS b
				ON a.requisition_id = b.requisition_id
		WHERE a.funnel_activity IN ('Offer Accepted')
			AND b.worker_sub_type LIKE '%Intern%'
	)

	SELECT DISTINCT a.funnel_activity
			, a.candidate_email
			, a.requisition_id
			, a.funnel_activity_date
			--, a.candidate_email AS match_by_email
		FROM rct.vw_bu_candidate_activity_master AS a
			LEFT JOIN intern_offer_accepts AS c
				ON a.candidate_email = c.candidate_email
					AND a.funnel_activity_date > c.funnel_activity_date
			LEFT JOIN rct.vw_bu_requisition_master AS d
				ON a.requisition_id = d.requisition_id
		WHERE a.funnel_activity IN ('Offer Accepted', 'Offer Declined')
			AND c.candidate_email IS NOT NULL
			AND d.worker_sub_type = 'Regular'

		UNION

	SELECT DISTINCT a.funnel_activity
			, a.candidate_email
			, a.requisition_id
			, a.funnel_activity_date
			--, b.email_as_of_application_date AS match_by_email
		FROM rct.vw_bu_candidate_activity_master AS a
			LEFT JOIN rct.vw_map_workday_applications AS b
				ON a.candidate_email = b.candidate_email
			LEFT JOIN intern_offer_accepts AS c
				ON b.email_as_of_application_date = c.candidate_email
					AND a.funnel_activity_date > c.funnel_activity_date
			LEFT JOIN rct.vw_bu_requisition_master AS d
				ON a.requisition_id = d.requisition_id
		WHERE a.funnel_activity IN ('Offer Accepted', 'Offer Declined')
			AND c.candidate_email IS NOT NULL
			AND d.worker_sub_type = 'Regular'

		UNION

	SELECT DISTINCT a.funnel_activity
			, a.candidate_email
			, a.requisition_id
			, a.funnel_activity_date
			--, b.email_as_of_completed AS match_by_email
		FROM rct.vw_bu_candidate_activity_master AS a
			LEFT JOIN rct.vw_map_workday_applications AS b
				ON a.candidate_email = b.candidate_email
			LEFT JOIN intern_offer_accepts AS c
				ON b.email_as_of_completed = c.candidate_email
					AND a.funnel_activity_date > c.funnel_activity_date
			LEFT JOIN rct.vw_bu_requisition_master AS d
				ON a.requisition_id = d.requisition_id
		WHERE a.funnel_activity IN ('Offer Accepted', 'Offer Declined')
			AND c.candidate_email IS NOT NULL
			AND d.worker_sub_type = 'Regular'

		UNION

	SELECT DISTINCT a.funnel_activity
			, a.candidate_email
			, a.requisition_id
			, a.funnel_activity_date
			--, b.email_as_of_workday_launch AS match_by_email
		FROM rct.vw_bu_candidate_activity_master AS a
			LEFT JOIN rct.vw_map_workday_applications AS b
				ON a.candidate_email = b.candidate_email
			LEFT JOIN intern_offer_accepts AS c
				ON b.email_as_of_workday_launch = c.candidate_email
					AND a.funnel_activity_date > c.funnel_activity_date
			LEFT JOIN rct.vw_bu_requisition_master AS d
				ON a.requisition_id = d.requisition_id
		WHERE a.funnel_activity IN ('Offer Accepted', 'Offer Declined')
			AND c.candidate_email IS NOT NULL
			AND d.worker_sub_type = 'Regular';

select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


CREATE or replace VIEW VW_BU_JOBVITE_INTERVIEW_DETAILS as 
  SELECT Cast(JIF.application_id AS VARCHAR)                       AS 
         application_id, 
         COALESCE(JIF.requisition_id, 'jobvite_' 
                                      || Cast(JIF.requisition_unique_id AS 
                                      VARCHAR) 
            , 
         'jobvite general application')                            AS 
            requisition_id, 
         JIF.requisition_unique_id, 
         Cast(JIF.candidate_id AS VARCHAR)                         AS 
         candidate_id 
            , 
         JIF.candidate_encrypted_id, 
         JIF.candidate_full_name, 
         COALESCE(JIF.candidate_email, JIF.candidate_encrypted_id) AS 
            candidate_email, 
         JIF.candidate_source                                      AS 
            jobvite_candidate_source, 
         JIF.candidate_source_type                                 AS 
            jobvite_candidate_source_type, 
         JSM.source_category, 
         JSM.source, 
         JIF.interviewer_full_name, 
         JIF.interviewer_email, 
         IVA.employee_id                                           AS 
            interviewer_employee_id, 
         IVD.preferred_name                                        AS 
            interviewer_preferred_name, 
         IVD.active_status                                         AS 
            interviewer_active_yes_no, 
         Cast(JIF.interview_scheduled_date AS DATE)                AS 
            interview_date, 
         JIF.interview_created_date, 
         JIF.interview_scheduled_date, 
         JIF.interview_evaluation_summary, 
         JIF.interview_evaluation_type, 
         JIF.interview_evaluation_rating, 
         JIF.interview_completion_status, 
         JWSM.funnel_activity, 
         JIF.workflow_state_at_interview, 
         JIF.current_workflow_state, 
         JIF.interview_status, 
         JIF.interview_submitted_date, 
         JIF.interview_scheduled_by_full_name, 
         JIF.interview_scheduled_by_user_email, 
         SCHA.jobvite_recruiter_employee_id                        AS 
            interview_scheduler_employee_id, 
         SCHD.preferred_name                                       AS 
            interview_scheduler_preferred_name, 
         COALESCE(SCHB.sup_org_ref_id, SCHC.sup_org_ref_id)        AS 
         interview_scheduler_sup_org_id_iv_date, 
         SCHD.sup_org_ref_id                                       AS 
            interview_scheduler_sup_org_id_most_recent, 
         JIF.interview_evaluation_title, 
         COALESCE(IVB.sup_org_ref_id, IVC.sup_org_ref_id)          AS 
         interviewer_sup_org_id_iv_date, 
         IVD.sup_org_ref_id                                        AS 
            interviewer_sup_org_id_most_recent, 
         COALESCE(IVB.business_title, IVC.business_title)          AS 
         interviewer_business_title_iv_date, 
         IVD.business_title                                        AS 
            interviewer_business_title_most_recent, 
         COALESCE(IVB.worker_sub_type, IVC.worker_sub_type)        AS 
         interviewer_worker_sub_type_iv_date, 
         IVD.worker_sub_type                                       AS 
            interviewer_worker_sub_type_most_recent, 
         COALESCE(IVB.location, IVC.location)                      AS 
            interviewer_location_iv_date, 
         IVD.location                                              AS 
            interviewer_location_most_recent, 
         COALESCE(IVB.job_profile, IVC.job_profile)                AS 
            interviewer_job_profile_iv_date, 
         IVD.job_profile                                           AS 
            interviewer_job_profile_most_recent, 
         COALESCE(IVB.management_level, IVC.management_level)      AS 
         interviewer_management_level_iv_date, 
         IVD.management_level                                      AS 
            interviewer_management_level_most_recent, 
         COALESCE(IVB.job_category, IVC.job_category)              AS 
            interviewer_job_category_iv_date, 
         IVD.job_category                                          AS 
            interviewer_job_category_most_recent, 
         COALESCE(IVB.job_family, IVC.job_family)                  AS 
            interviewer_job_family_iv_date, 
         IVD.job_family                                            AS 
            interviewer_job_family_most_recent, 
         COALESCE(IVB.job_level, IVC.job_level)                    AS 
            interviewer_job_level_iv_date, 
         IVD.job_level                                             AS 
            interviewer_job_level_most_recent, 
         COALESCE(IVB.brand, IVC.brand)                            AS 
            interviewer_brand_iv_date, 
         IVD.brand                                                 AS 
            interviewer_brand_most_recent, 
         COALESCE(IVB.cost_center, IVC.cost_center)                AS 
            interviewer_cost_center_iv_date, 
         IVD.cost_center                                           AS 
            interviewer_cost_center_most_recent, 
         Cast(JIF.application_id AS VARCHAR) || '_' 
         || workflow_state_at_interview || '_' 
         || RIGHT('000' || Cast(Dense_rank() OVER (partition BY JIF.application_id, 
         JIF.workflow_state_at_interview ORDER BY 
            Cast(JIF.interview_scheduled_date AS 
         DATE)) AS VARCHAR), 3)                                    AS 
            jobvite_interview_id, 
         Row_number() 
           OVER ( 
             partition BY JIF.application_id, JIF.workflow_state_at_interview, 
           Cast(JIF.interview_scheduled_date AS DATE) 
             ORDER BY JIF.interview_completion_status DESC, 
           JIF.interview_scheduled_date) 
                  AS interview_event_row_nbr, 
         Row_number() 
           OVER ( 
             partition BY JIF.application_id, JIF.workflow_state_at_interview, 
           Cast(JIF.interview_scheduled_date AS DATE), JIF.interviewer_email 
             ORDER BY JIF.interview_completion_status DESC, 
           JIF.interview_scheduled_date) 
                  AS interview_session_row_nbr 
  FROM   recruitingdb.v_jobvite_interview_feedback AS JIF 
         LEFT JOIN recruitingdb.v_jobvite_workflow_state_mapping AS JWSM 
                ON JIF.workflow_state_at_interview = 
                   JWSM.workflow_transition_destination_state 
         LEFT JOIN recruitingdb.v_jobvite_source_mapping AS JSM 
                ON CASE 
                     WHEN JIF.candidate_source IS NULL THEN 
                     JIF.candidate_source_type 
                     ELSE JIF.candidate_source_type || ' -> ' 
                          || JIF.candidate_source 
                   END = JSM.jobvite_source_combo 
         LEFT JOIN recruitingdb.v_jobvite_recruiters AS SCHA 
                ON JIF.interview_scheduled_by_full_name = 
                   SCHA.jobvite_recruiter_name 
         LEFT JOIN rct.vw_map_employees_by_month AS SCHB 
                ON SCHA.jobvite_recruiter_employee_id = SCHB.employee_id 
                   AND Month(cast(JIF.interview_created_date as date)) = 
                       Month(cast(SCHB.data_as_of as date)) 
                   AND Year(cast(JIF.interview_created_date as date)) = Year(cast(SCHB.data_as_of as date)) 
         LEFT JOIN rct.vw_map_employees_by_month AS SCHC 
                ON SCHA.jobvite_recruiter_employee_id = SCHC.employee_id 
                   AND Month(Dateadd(month, 1,cast( JIF.interview_created_date as date))) = 
                       Month(cast(SCHC.data_as_of as date)) 
                   AND Year(Dateadd(month, 1, cast(JIF.interview_created_date as date))) = 
                       Year(cast(SCHC.data_as_of as date)) 
         LEFT JOIN rct.vw_bu_all_employees AS SCHD 
                ON SCHA.jobvite_recruiter_employee_id = SCHD.employee_id 
         LEFT JOIN recruitingdb.v_jobvite_interviewer_employee_id AS IVA 
                ON JIF.interviewer_email = IVA.jobvite_interviewer_email 
         LEFT JOIN rct.vw_map_employees_by_month AS IVB 
                ON IVA.employee_id = IVB.employee_id 
                   AND Month(cast(JIF.interview_scheduled_date as date)) = 
                       Month(cast(IVB.data_as_of as date)) 
                   AND Year(cast(JIF.interview_scheduled_date as date)) = Year(cast(IVB.data_as_of as date)) 
         LEFT JOIN rct.vw_map_employees_by_month AS IVC 
                ON IVA.employee_id = IVC.employee_id 
                   AND Month(Dateadd(month, 1, cast(JIF.interview_scheduled_date as date))) = 
                       Month(cast(IVC.data_as_of as date)) 
                   AND Year(Dateadd(month, 1, cast(JIF.interview_scheduled_date as date))) = 
                       Year(cast(IVC.data_as_of as date)) 
         LEFT JOIN rct.vw_bu_all_employees AS IVD 
                ON IVA.employee_id = IVD.employee_id 
  WHERE  interview_status NOT IN ( 'Canceled', 'Declined' );
  
create or replace view VW_BU_INTERVIEW_DETAILS as
with interviewers as 
		(select cast('Workday' as nvarchar(255)) as ats
			  ,interviewer_employee_id
			  ,interviewer_preferred_name
			  ,interviewer_email
			  ,interviewer_active_yes_no
			  ,interview_event_workday_id as iv_event_id
			  ,interview_date
			  ,interviewer_rating
			  ,interviewer_sup_org_id_iv_date
			  ,interviewer_sup_org_id_most_recent
			  ,interviewer_business_title_iv_date
			  ,interviewer_business_title_most_recent
			  ,interviewer_worker_sub_type_iv_date
			  ,interviewer_worker_sub_type_most_recent
			  ,interviewer_location_iv_date
			  ,interviewer_location_most_recent
			  ,interviewer_job_profile_iv_date
			  ,interviewer_job_profile_most_recent
			  ,interviewer_management_level_iv_date
			  ,interviewer_management_level_most_recent
			  ,interviewer_job_category_iv_date
			  ,interviewer_job_category_most_recent
			  ,interviewer_job_family_iv_date
			  ,interviewer_job_family_most_recent
			  ,interviewer_job_level_iv_date
			  ,interviewer_job_level_most_recent
			  ,interviewer_brand_iv_date
			  ,interviewer_brand_most_recent
			  ,interviewer_cost_center_iv_date
			  ,interviewer_cost_center_most_recent
			  ,interview_session_type
			  , case interview_session_type
					when 'Lunch' then interview_session_type
					when 'Debrief' then interview_session_type
					else null
					end as workday_lunch_or_debrief

		  from rct.vw_bu_workday_interview_details


		union all

		select 'Jobvite' as ats
			  ,interviewer_employee_id
			  ,interviewer_preferred_name
			  ,interviewer_email
			  ,interviewer_active_yes_no
			  ,jobvite_interview_id as iv_event_id
			  ,interview_date
			  ,interview_evaluation_summary as interviewer_rating
			  ,interviewer_sup_org_id_iv_date
			  ,interviewer_sup_org_id_most_recent
			  ,interviewer_business_title_iv_date
			  ,interviewer_business_title_most_recent
			  ,interviewer_worker_sub_type_iv_date
			  ,interviewer_worker_sub_type_most_recent
			  ,interviewer_location_iv_date
			  ,interviewer_location_most_recent
			  ,interviewer_job_profile_iv_date
			  ,interviewer_job_profile_most_recent
			  ,interviewer_management_level_iv_date
			  ,interviewer_management_level_most_recent
			  ,interviewer_job_category_iv_date
			  ,interviewer_job_category_most_recent
			  ,interviewer_job_family_iv_date
			  ,interviewer_job_family_most_recent
			  ,interviewer_job_level_iv_date
			  ,interviewer_job_level_most_recent
			  ,interviewer_brand_iv_date
			  ,interviewer_brand_most_recent
			  ,interviewer_cost_center_iv_date
			  ,interviewer_cost_center_most_recent
			  ,null as interview_session_type
			  ,null as workday_lunch_or_debrief
		  from     rct.vw_bu_jobvite_interview_details
			where interview_session_row_nbr = 1
				and interviewer_employee_id is not null)

select a.*
	, b.candidate_email
	, b.candidate_name
	, b.requisition_id
	, b.funnel_activity as interview_type
	, c.level_01_name as iv_date_level_01_name
	, c.level_01_user_id as iv_date_level_01_user_id
	, c.level_02_name as iv_date_level_02_name
	, c.level_02_user_id as iv_date_level_02_user_id
	, c.level_03_name as iv_date_level_03_name
	, c.level_03_user_id as iv_date_level_03_user_id
	, c.level_04_name as iv_date_level_04_name
	, c.level_04_user_id as iv_date_level_04_user_id
	, c.level_05_name as iv_date_level_05_name
	, c.level_05_user_id as iv_date_level_05_user_id
	, c.level_06_name as iv_date_level_06_name
	, c.level_06_user_id as iv_date_level_06_user_id
	, c.level_07_name as iv_date_level_07_name
	, c.level_07_user_id as iv_date_level_07_user_id
	, c.level_08_name as iv_date_level_08_name
	, c.level_08_user_id as iv_date_level_08_user_id
	, c.level_09_name as iv_date_level_09_name
	, c.level_09_user_id as iv_date_level_09_user_id
	, c.level_10_name as iv_date_level_10_name
	, c.level_10_user_id as iv_date_level_10_user_id
	, c.supervisory_organization as iv_date_supervisory_organization
	, c.supervisory_manager as iv_date_supervisory_manager
	, c.supervisory_manager_user_id as iv_date_supervisory_manager_user_id
	, d.level_01_name as most_recent_level_01_name
	, d.level_01_user_id as most_recent_level_01_user_id
	, d.level_02_name as most_recent_level_02_name
	, d.level_02_user_id as most_recent_level_02_user_id
	, d.level_03_name as most_recent_level_03_name
	, d.level_03_user_id as most_recent_level_03_user_id
	, d.level_04_name as most_recent_level_04_name
	, d.level_04_user_id as most_recent_level_04_user_id
	, d.level_05_name as most_recent_level_05_name
	, d.level_05_user_id as most_recent_level_05_user_id
	, d.level_06_name as most_recent_level_06_name
	, d.level_06_user_id as most_recent_level_06_user_id
	, d.level_07_name as most_recent_level_07_name
	, d.level_07_user_id as most_recent_level_07_user_id
	, d.level_08_name as most_recent_level_08_name
	, d.level_08_user_id as most_recent_level_08_user_id
	, d.level_09_name as most_recent_level_09_name
	, d.level_09_user_id as most_recent_level_09_user_id
	, d.level_10_name as most_recent_level_10_name
	, d.level_10_user_id as most_recent_level_10_user_id
	, d.supervisory_organization as most_recent_supervisory_organization
	, d.supervisory_manager as most_recent_supervisory_manager
	, d.supervisory_manager_user_id as most_recent_supervisory_manager_user_id

	from interviewers as a
	inner join rct.vw_bu_all_interviews as b
		on a.iv_event_id = b.interview_id
	left join rct.vw_bu_supervisory_org_coalesce as c --interviewer org as of interview date
	on a.interviewer_sup_org_id_iv_date = c.supervisory_organization_reference_id
	left join rct.vw_bu_supervisory_org_coalesce as d --most recent interviewer org
	on a.interviewer_sup_org_id_most_recent = d.supervisory_organization_reference_id;

create or replace view VW_BU_INTERVIEW_FEEDBACK_CONSOLIDATED as 
    select 'Workday' as ats
        , wif.application_workday_id as application_id
        , wi.candidate_name
        , wi.candidate_email
        , wif.interviewer_preferred_name as interviewer_full_name
        , wif.interviewer_email
        , wif.interviewer_employee_id
        , wi.funnel_activity_date as interview_date
        , case when rating = 1 then 'No Hire'
            when rating = 2 then 'Hire'
            end as interview_rating
        , wi.requisition_id as requisition_id
        , wi.requisition_id as requisition_unique_id
        , wi.funnel_activity as interview_type
        , wi.interview_event_workday_id as interview_event_id
        , null as interview_session_status
    from rct.vw_map_workday_interview_feedback as wif
        inner join rct.vw_map_workday_all_interviews as wi
            on wif.application_workday_id = wi.workday_application_id
            and wif.interview_event_workday_id > wi.interview_event_workday_id
            and wi.interview_event_date_and_time_completed is not null
union all
select 'Jobvite' as ats
    , cast(jid.application_id as nvarchar)
    , jid.candidate_full_name
    , jid.candidate_email
    , jid.interviewer_full_name
    , jid.interviewer_email
    , jid.interviewer_employee_id
    , jid.interview_date
    , jid.interview_evaluation_summary as interview_rating
    , jid.requisition_id
    , cast(jid.requisition_unique_id as nvarchar)
    , jid.workflow_state_at_interview
    , jid.jobvite_interview_id
    , jid.interview_status
from rct.VW_BU_JOBVITE_INTERVIEW_DETAILS as jid
    left join recruitingdb.v_jobvite_interviewer_employee_id as jied 
        on jid.interviewer_email = jied.jobvite_interviewer_email
        
    where jid.interview_session_row_nbr = 1
    and jid.interview_date >= '20170101';
	
CREATE OR REPLACE VIEW VW_BU_JOB_PROFILES as
SELECT 
	a.job_code
	, a.job_profile
	, CASE 
			WHEN CHARINDEX('E',a.job_level) = 1 THEN 'Executive'
			WHEN CHARINDEX(a.job_level,a.job_profile) > 0 
				THEN LEFT(a.job_profile,charindex(concat(' ',a.job_level),a.job_profile)) 
			WHEN (CHARINDEX(a.job_level,a.job_profile) = 0 OR a.job_level IS NULL) AND CHARINDEX('inactive',a.job_profile) > 0
				THEN 'Inactive Job Profiles'
			ELSE REPLACE(cast(a.job_profile as varchar),' (inactive)','')
			END AS job_profile_group
	, a.job_family
	, a.job_category
	, a.job_level
	, a.management_level
	, a.comp_grade_id AS compensation_grade_id
	, CASE
		WHEN LEFT(a.job_level,1) = 'E' THEN 'Executive'
		WHEN LEFT(a.job_level,1) = 'M' THEN concat(a.job_category , ' | All Job Families | ' , 
			CASE WHEN IS_DECIMAL(cast(right(job_level,1) as variant)) = 1 AND CAST(right(a.job_level,1) AS smallint) <=3 THEN concat(LEFT(a.job_level,1), '1-3')
				WHEN IS_DECIMAL(cast(right(job_level,1) as variant)) = 1 AND CAST(right(a.job_level,1) AS smallint) >=4 THEN concat(LEFT(a.job_level,1), '4+')
				END)
		ELSE concat(a.job_category , ' | ' ,COALESCE(a.job_family, 'Unknown')  ,' | ' , 
			CASE WHEN IS_DECIMAL(cast(right(job_level,1) as variant)) = 1 AND CAST(right(a.job_level,1) AS smallint) <=3 THEN concat(LEFT(a.job_level,1), '1-3')
				WHEN IS_DECIMAL(cast(right(job_level,1) as variant)) = 1 AND CAST(right(a.job_level,1) AS smallint) >=4 THEN concat(LEFT(a.job_level,1), '4+')
				END)
		END AS difficulty_group
FROM rct.vw_map_workday_job_profiles AS a;

select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


CREATE OR REPLACE  VIEW VW_BU_RECRUITING_FEES as 
  SELECT RECRUITINGDB.v_spend_2018.accounting_date, 
         RECRUITINGDB.v_spend_2018.net_amount, 
         COALESCE(RECRUITINGDB.v_spend_2018.supplier, 
         RECRUITINGDB.v_spend_2018.employee, RECRUITINGDB.v_spend_2018.line_memo) 
            AS 
         supplier, 
         RECRUITINGDB.v_spend_2018.line_memo, 
         '2018' 
            AS source_data 
  FROM   RECRUITINGDB.v_spend_2018 
  WHERE  RECRUITINGDB.v_spend_2018.spend_category = 'Recruiting Fees' 
         AND Charindex('recruit', Lower(RECRUITINGDB.v_spend_2018.cost_center)) > 0 
  UNION ALL 
  SELECT h2_17.accounting_date, 
         h2_17.net_amount, 
         COALESCE(h2_17.supplier, h2_17.line_memo) AS supplier, 
         h2_17.line_memo, 
         '2017_h2'                                 AS source_data 
  FROM   RECRUITINGDB.v_spend_2017_h2 AS h2_17 
  WHERE  h2_17.spend_category = 'Recruiting Fees' 
  UNION ALL 
  SELECT h1_17.transaction_date                      AS accounting_date, 
         h1_17.net_amount, 
         h1_17.supplier_name                         AS supplier, 
         h1_17.description || ' | ' || h1_17.reference AS line_memo, 
         '2017_h1'                                   AS source_data 
  FROM   RECRUITINGDB.v_spend_2017_h1 AS h1_17 
  WHERE  h1_17.account_description = 'Recruiting Fees' 
         AND h1_17.series = 'Purchasing';

select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


create view VW_BU_TABLEAU_CAPACITY_PLANNING_ATTRITION as

select cast(a.time_series_end_date as date) as time_series_end_date
      ,cast(a.record_date as date) as record_date
      ,cast(a.record_month_start_date as date) as record_month_start_date
      ,cast(a.record_month_end_date  as date) as record_month_end_date
      ,a.employee_id
      ,a.manager_employee_id
      ,a.sup_org_ref_id
      ,a.job_profile
      ,a.length_of_service_in_months
      ,a.time_in_job_profile
      ,a.job_category
      ,a.job_family
      ,a.compensation_grade_id
      ,a.job_level
      ,a.management_level
      ,a.location
      ,a.city
      ,a.state
      ,a.country
      ,a.brand
      ,a.cost_center
      ,a.product_category
      ,a.company
      ,a.worker_sub_type
      ,a.termination_count
      ,a.ending_headcount
	  ,b.level_04_name as attrition_level_04
	  ,b.level_05_name as attrition_level_05
	  ,b.level_06_name as attrition_level_06
	  ,b.level_07_name as attrition_level_07
	  ,b.recruiting_lead_singular
	  ,b.recruiting_lead_single_employee_id
	  ,c.level_04_name
	  ,c.level_05_name
	  ,c.level_06_name
	  ,c.level_07_name
	  ,c.level_08_name
	  ,case
	   when b.recruiting_lead_singular = 'Mindy Fineout' then 'Analytic recruiting'
	   when b.recruiting_lead_singular in ('Andrew Davis','Joe Vo','Lauren Hohnbaum','Tom Caster') or c.level_07_name ='Chris Rosenau' then 'Tech Recruiting'
	   when b.recruiting_lead_singular = 'Tina Marie Duccini' then 'Executive Recruiting'
	   when (b.recruiting_lead_singular in ('Kathie Krus','Mel May') or c.level_07_name in ('Kathie Krus','Mel May')) then 'Business Recruiting'
	   when (b.recruiting_lead_singular = 'Sheree Ryan' or c.level_07_name = 'Sheree Ryan') then 'PA Revenue, Ops & Finance Recruiting'
       when c.level_06_name in ('Travis Jensen') then 'New Market Recruiting'
	   else 'Check'
	   end recruiting_team

  from rct.vw_map_capacity_planning_attrition a
  left join rct.vw_bu_supervisory_org_coalesce b
  on a.sup_org_ref_id = b.supervisory_organization_reference_id
  left join rct.vw_bu_all_recruiters c
  on c.employee_id =b.recruiting_lead_single_employee_id;
    
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


CREATE or replace VIEW vw_bu_tableau_capacity_planning_offers as
WITH base_offer_accept AS
		(
		SELECT a.candidate_email
		, a.candidate_name
		, a.candidate_start_date
		, 1 as offer_count
		, CASE 
		  WHEN a.source_category ='Internal' THEN 1 
		  ELSE 0
		  END AS internal_count
		, CASE 
		  WHEN a.source_category !='Internal' OR a.source_category IS NULL THEN 1 
		  ELSE 0
		  END AS external_count 
		, CASE
		  WHEN d.level_06_name='Travis Jensen' THEN 1
		  ELSE 0
		  END new_market_count
		, CASE
		  WHEN d.level_07_name='Chris Rosenau' AND c.recruiting_lead_singular = 'Mindy Fineout' THEN 1
		  ELSE 0
		  END analytic_count
		, CASE
		  WHEN d.level_07_name='Chris Rosenau' AND c.recruiting_lead_singular != 'Mindy Fineout' THEN 1
		  ELSE 0
		  END tech_count
		, CASE
		  WHEN (d.level_07_name IN ('Mel May','Kathie Krus') OR c.recruiting_lead_singular IN ('Mel May','Kathie Krus')) THEN 1
		  ELSE 0
		  END biz_count
		, CASE
		  WHEN (d.level_07_name='Sheree Ryan' OR c.recruiting_lead_singular='Sheree Ryan')  THEN 1
		  ELSE 0
		  END pa_rev_count
		, c.recruiting_lead_singular
		, c.recruiting_lead_single_employee_id
		, d.level_04_name as recruiting_level_04_name
		, d.level_05_name as recruiting_level_05_name
		, d.level_06_name as recruiting_level_06_name
		, d.level_07_name as recruiting_level_07_name
		, d.level_08_name as recruiting_level_08_name
		, d.level_09_name as recruiting_level_09_name
		, d.level_10_name as recruiting_level_10_name
		, a.requisition_id
		, b.sup_org_ref_id as req_sup_org
		, a.job_posting_title AS job_title
		, a.hiring_manager
		, a.source_category
		, a.source
		, a.workday_application_id
		, a.candidate_stage AS current_candidate_stage
		, a.worker_type
		, a.worker_sub_type
		, offer_accept_date
		, ready_for_hire_date
	    , CASE
		  WHEN a.worker_type = 'Employee'
		  THEN COALESCE(a.first_submitted_offer_initiator,a.first_offer_initiated_by, a.ready_for_hire_initiator)
		  WHEN a.worker_type = 'Contingent Worker'
		  THEN a.ready_for_hire_initiator
		  END AS credited_recruiter_employee
		, CASE
		  WHEN a.worker_type IN ('Employee','Intern (Trainee)')
		  THEN COALESCE(a.first_submitted_offer_initiator_employee_id,a.first_offer_initiated_by_employee_id, a.ready_for_hire_initiator_employee_id)
		  WHEN a.worker_type = 'Contingent Worker'
		  THEN a.ready_for_hire_initiator_employee_id
		  END AS credited_recruiter_employee_id
		, COALESCE(offer_accept_date, ready_for_hire_date) AS oa_or_rfh_date
		, CAST(DATEADD(MONTH, datediff(MONTH, '0', COALESCE(offer_accept_date, ready_for_hire_date)), '0') as date) as oa_or_rfh_trunc_date
		, CASE
		  WHEN a.worker_type IN ('Employee','Intern (Trainee)')
		  AND a.first_submitted_offer_initiator_employee_id IS NOT NULL
		  THEN 'Yes'
		  WHEN a.worker_type = 'Contingent Worker'
		  THEN 'n/a'
		  ELSE 'No'
		  END AS offer_details_submitted_yn
		
		FROM  RCT.VW_MAP_WORKDAY_ALL_OFFERS a
		LEFT JOIN RCT.vw_bu_requisition_master b
			ON a.requisition_id = b.requisition_id
		LEFT JOIN RCT.vw_bu_supervisory_org_coalesce c
			ON b.sup_org_ref_id = c.supervisory_organization_reference_id
		LEFT JOIN RCT.vw_bu_all_recruiters d
			ON d.employee_id =c.recruiting_lead_single_employee_id
		WHERE a.funnel_activity = 'Offer Accepted'
		AND a.worker_sub_type ='Regular'

		)
--Offer Accepts with rolled-up Internal Mobility
, offer_accept_data as (
		SELECT 'rolled_up_req' as offer_type
		      ,a.candidate_email
		      ,a.candidate_name
			  ,a.candidate_start_date
			  ,a.offer_count
			  ,a.internal_count
			  ,a.external_count
			  ,a.recruiting_lead_singular
			  ,a.recruiting_lead_single_employee_id
			  ,a.recruiting_level_04_name
			  ,a.recruiting_level_05_name
			  ,a.recruiting_level_06_name
			  ,a.recruiting_level_07_name
			  ,a.recruiting_level_08_name
			  ,a.recruiting_level_09_name
			  ,a.recruiting_level_10_name
			  ,a.requisition_id
			  ,a.req_sup_org
			  ,a.job_title
			  ,a.hiring_manager
			  ,a.source_category
			  ,a.source
			  ,a.workday_application_id
			  ,a.current_candidate_stage
			  ,a.worker_type
			  ,a.worker_sub_type
			  ,a.offer_accept_date
			  ,a.ready_for_hire_date
			  ,CASE
			   WHEN a.recruiting_level_07_name='Chris Rosenau' AND a.recruiting_lead_singular = 'Mindy Fineout' AND a.source_category ='Internal' THEN a.recruiting_lead_singular
			   WHEN a.recruiting_level_07_name='Chris Rosenau' AND a.recruiting_lead_singular != 'Mindy Fineout' AND a.source_category ='Internal'THEN 'Andrew Davis'
			   WHEN a.recruiting_level_06_name='Travis Jensen' AND a.source_category ='Internal' THEN 'Cassie Green'
			   WHEN (a.recruiting_level_07_name IN ('Mel May','Kathie Krus') OR a.recruiting_lead_singular IN ('Mel May','Kathie Krus')) AND a.source_category ='Internal' THEN 'Kathie Krus'
			   WHEN (a.recruiting_level_07_name='Sheree Ryan' OR a.recruiting_lead_singular='Sheree Ryan') AND a.source_category ='Internal' THEN 'Sheree Ryan'
			   ELSE a.credited_recruiter_employee
			   END as credited_recruiter_employee
			  ,CASE
			   WHEN a.recruiting_level_07_name='Chris Rosenau' AND a.recruiting_lead_singular = 'Mindy Fineout' AND a.source_category ='Internal' THEN '210246'
			   WHEN a.recruiting_level_07_name='Chris Rosenau' AND a.recruiting_lead_singular != 'Mindy Fineout' AND a.source_category ='Internal' THEN '208212'
			   WHEN a.recruiting_level_06_name='Travis Jensen' THEN '210003'
			   WHEN (a.recruiting_level_07_name IN ('Mel May','Kathie Krus') OR a.recruiting_lead_singular IN ('Mel May','Kathie Krus')) AND a.source_category ='Internal' THEN '207682'
			   WHEN (a.recruiting_level_07_name='Sheree Ryan' OR a.recruiting_lead_singular='Sheree Ryan') AND a.source_category ='Internal' THEN '101490'
			   ELSE a.credited_recruiter_employee_id
			   END as credited_recruiter_employee_id
			  ,a.oa_or_rfh_date
			  ,a.oa_or_rfh_trunc_date
			  ,a.offer_details_submitted_yn

		FROM base_offer_accept a
		
		UNION ALL --Internal Mobility w/o overwrite

			SELECT 'Internal Mobility' as offer_type
			  ,a.candidate_email
		      ,a.candidate_name
			  ,a.candidate_start_date
			  ,a.offer_count
			  ,a.internal_count
			  ,a.external_count
			  ,a.recruiting_lead_singular
			  ,a.recruiting_lead_single_employee_id
			  ,a.recruiting_level_04_name
			  ,a.recruiting_level_05_name
			  ,a.recruiting_level_06_name
			  ,a.recruiting_level_07_name
			  ,a.recruiting_level_08_name
			  ,a.recruiting_level_09_name
			  ,a.recruiting_level_10_name
			  ,a.requisition_id
			  ,a.req_sup_org
			  ,a.job_title
			  ,a.hiring_manager
			  ,a.source_category
			  ,a.source
			  ,a.workday_application_id
			  ,a.current_candidate_stage
			  ,a.worker_type
			  ,a.worker_sub_type
			  ,a.offer_accept_date
			  ,a.ready_for_hire_date
			  ,a.credited_recruiter_employee
			  ,a.credited_recruiter_employee_id
			  ,a.oa_or_rfh_date
			  ,a.oa_or_rfh_trunc_date
			  ,a.offer_details_submitted_yn

		FROM base_offer_accept a
		WHERE source_category='Internal'
		)

  , recruiting_org AS (
		SELECT e.data_as_of
			  ,e.worker
			  ,e.preferred_name
			  ,e.employee_id
			  ,IFNULL(wr.currently_active,'No') as currently_active
			  ,e.email
	          ,CASE 
			   WHEN e.business_title LIKE ('%Sourcing%') THEN 'Sourcer'
			   WHEN e.business_title LIKE ('%Lead%') THEN 'Lead'
			   WHEN e.business_title LIKE ('%Manager%') THEN 'Manager'
			   WHEN e.business_title LIKE ('%Director%') THEN 'Director'
			   WHEN (e.business_title LIKE ('%Coordinator%') AND e.business_title LIKE ('%Recruit%'))  THEN 'RC'
			   WHEN SO.supervisory_organization_reference_id = 'SUP-ORG-729' THEN 'Early Talent'
			   WHEN e.business_title LIKE ('%Recruiting Specialist%') THEN 'Recruiter'
			   WHEN e.business_title LIKE ('%Recruiter%') THEN 'Recruiter'
			   ELSE 'Other'
			   END AS role
			  ,e.business_title
			  ,e.worker_sub_type
			  ,e.manager
			  ,e.location
			  ,e.job_profile
			  , CASE 
			    WHEN CHARINDEX('E',e.job_level) = 1 THEN 'Executive'
			    WHEN CHARINDEX(e.job_level,e.job_profile) > 0 THEN LEFT(e.job_profile,charindex(' ' || e.job_level,e.job_profile)) 
			    WHEN (CHARINDEX(e.job_level,e.job_profile) = 0 OR e.job_level IS NULL) AND CHARINDEX('inactive',e.job_profile) > 0 THEN 'Inactive Job Profiles'
			    ELSE REPLACE(e.job_profile,' (inactive)','')
			    END AS job_profile_group
			  ,e.job_category
			  ,e.job_family
			  ,e.job_level
			  ,e.brand
			  ,e.sup_org_ref_id
			  ,e.user_id
			  ,e.cost_center
			  ,e.active_status
			  ,e.hire_date
			  ,e.termination_date
			  ,e.management_level
			  ,e.city
			  ,e.state
			  ,e.country
			  ,e.company
			  ,e.job_code
			  ,e.cost_center_code
			  ,SO.supervisory_organization
			  ,SO.supervisory_organization_reference_id
			  ,SO.level_03_name
			  ,SO.level_03_user_id
			  ,SO.level_04_name
			  ,SO.level_04_user_id
			  ,SO.level_05_name
			  ,SO.level_05_user_id
			  ,SO.level_06_name
			  ,SO.level_06_user_id
			  ,SO.level_07_name
			  ,SO.level_07_user_id
			  ,SO.level_08_name
			  ,SO.level_08_user_id
			  ,SO.level_09_name
			  ,SO.level_09_user_id
			  ,SO.level_10_name
			  ,SO.level_10_user_id
		    --  ,CASE
	     --      WHEN e.preferred_name ='Mindy Fineout' OR (SO.level_07_name ='Chris Rosenau' AND SO.level_08_name ='Mindy Fineout') THEN 'Analytic Recruiting' 
	     --      WHEN e.preferred_name IN ('Andrew Davis','Joe Vo','Lauren Hohnbaum') OR SO.level_08_name IN ('Andrew Davis','Joe Vo','Lauren Hohnbaum') OR SO.level_07_name ='Chris Rosenau' THEN 'Tech Recruiting'
	     --      WHEN e.preferred_name IN ('Kathie Krus','Mel May') OR SO.level_07_name IN ('Kathie Krus','Mel May') THEN 'Business Recruiting'
	     --      WHEN e.preferred_name = 'Sheree Ryan' OR SO.level_07_name = 'Sheree Ryan' THEN 'PA Revenue, Ops & Finance Recruiting'
	     --      WHEN e.preferred_name = 'Travis Jensen' OR SO.level_06_name = 'Travis Jensen' THEN 'New Market Recruiting'
	     --      WHEN (e.business_title LIKE ('%Technical%')) THEN 'Tech Recruiting'
			   --WHEN SO.level_07_name ='Megan Varner' THEN 'Internal Mobility'
	     --      ELSE 'Check'
			   --END recruiting_team

		  FROM RCT.vw_map_employees_by_month e
		  LEFT JOIN RCT.vw_bu_supervisory_org_coalesce AS SO
			ON e.sup_org_ref_id = so.supervisory_organization_reference_id
		  LEFT JOIN RCT.vw_map_workday_recruiters wr
			ON wr.employee_id = e.employee_id
			AND wr.currently_active ='Yes'

		  WHERE SO.level_05_name='Annie Rihn'
		  AND e.data_as_of >='2018-01-01'
		  --AND e.preferred_name IN ('Bindhu Kumandan','Megan Quinn','Emilie Sperling','Megumi Inoue')

)

SELECT 
	   a.data_as_of
      ,a.preferred_name
	  ,a.employee_id
	  ,a.currently_active
	  ,IFNULL(SUM(b.offer_count),0) as offer_count
	  ,IFNULL(SUM(b.internal_count),0) as internal_count
	  ,IFNULL(SUM(b.external_count),0) as external_count
	  ,b.offer_type
	  ,CASE
	   WHEN a.role = 'Recruiter' THEN 1 
	   ELSE 0
	   END AS recruiter_count
	  ,a.role
	  ,CASE
	   WHEN a.preferred_name ='Mindy Fineout' OR (a.level_07_name ='Chris Rosenau' AND a.level_08_name ='Mindy Fineout') THEN 'Analytic Recruiting' 
	   WHEN a.preferred_name IN ('Andrew Davis','Joe Vo','Lauren Hohnbaum') OR a.level_08_name IN ('Andrew Davis','Joe Vo','Lauren Hohnbaum') OR a.level_07_name ='Chris Rosenau' THEN 'Tech Recruiting'
	   WHEN a.preferred_name IN ('Kathie Krus','Mel May') OR a.level_07_name IN ('Kathie Krus','Mel May') THEN 'Business Recruiting'
	   WHEN a.preferred_name = 'Sheree Ryan' OR a.level_07_name = 'Sheree Ryan' THEN 'PA Revenue, Ops & Finance Recruiting'
	   WHEN a.level_06_name = 'Travis Jensen' THEN 'New Market Recruiting'
	   WHEN (a.business_title LIKE ('%Technical%')) THEN 'Tech Recruiting'
	   WHEN b.offer_type ='Internal Mobility' THEN 'Internal Mobility'
	   ELSE 'Check'
	   END recruiting_team
	  ,a.business_title
	  ,a.manager
	  ,a.worker_sub_type
	  ,a.location
	  ,a.job_profile_group
	  ,a.job_category
	  ,a.job_family
	  ,a.job_level
	  ,a.brand
	  ,a.sup_org_ref_id
	  ,a.user_id
	  ,a.cost_center
	  ,a.active_status
	  ,a.city
	  ,a.state
	  ,a.company
	  ,a.supervisory_organization
	  ,a.supervisory_organization_reference_id
	  ,a.level_05_name
	  ,a.level_05_user_id
	  ,a.level_06_name
	  ,a.level_06_user_id
	  ,a.level_07_name
	  ,a.level_07_user_id
	  ,a.level_08_name
	  ,a.level_08_user_id
	  ,a.level_09_name
	  ,a.level_09_user_id
	  ,a.level_10_name
	  ,a.level_10_user_id

FROM recruiting_org a
LEFT JOIN offer_accept_data b
 ON a.employee_id = b.credited_recruiter_employee_id
 AND a.data_as_of = b.oa_or_rfh_trunc_date


GROUP BY 
       a.data_as_of
      ,a.preferred_name
	  ,a.employee_id
	  ,a.currently_active
	  ,a.role
	  ,b.offer_type
	  ,a.business_title
	  ,a.worker_sub_type
	  ,a.manager
	  ,a.location
	  ,a.job_profile_group
	  ,a.job_category
	  ,a.job_family
	  ,a.job_level
	  ,a.brand
	  ,a.sup_org_ref_id
	  ,a.user_id
	  ,a.cost_center
	  ,a.active_status
	  ,a.city
	  ,a.state
	  ,a.company
	  ,a.supervisory_organization
	  ,a.supervisory_organization_reference_id
	  ,a.level_05_name
	  ,a.level_05_user_id
	  ,a.level_06_name
	  ,a.level_06_user_id
	  ,a.level_07_name
	  ,a.level_07_user_id
	  ,a.level_08_name
	  ,a.level_08_user_id
	  ,a.level_09_name
	  ,a.level_09_user_id
	  ,a.level_10_name
	  ,a.level_10_user_id;

select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


CREATE or replace VIEW VW_BU_TABLEAU_CAPACITY_PLANNING_OPEN_REQUISITIONS as

WITH open_req as (      
       SELECT 
	   data_as_of
      ,requisition_status
      ,requisition_id
      ,initial_job_title
	  ,job_title
      ,job_profile_group as job_profile
      ,case
	   when job_category ='Sales (Commission Eligible)' then 'Sales'
	   else job_category
	   end as job_category
      ,job_family
      ,job_level
      ,job_profile_exempt
      ,management_level
      ,worker_sub_type
      ,hiring_manager
      ,hiring_manager_employee_id
      ,supervisory_organization
      ,sup_org_ref_id
      ,leader
      ,leader_direct
      ,leader_direct_level_2
	  ,IFNULL(REPLACE(to_varchar(primary_recruiters),', ',','),'No Recruiter Assigned') as primary_recruiters
	  ,IFNULL(REPLACE(to_varchar(primary_recruiters_email_addresses),', ',','),'No Recruiter Email') as primary_recruiters_email_addresses 
      ,CAST(ROUND(LENGTH(rm.primary_recruiters) - LENGTH(replace(to_varchar(rm.primary_recruiters),',',''))+1,5) AS DECIMAL(10,2)) as total_recruiters
	  ,CAST(ROUND(count(rm.requisition_id),5) as DECIMAL(5,2)) as req_ct
	  ,IFNULL(CAST(ROUND(count(rm.requisition_id),5) as DECIMAL(5,2))/CAST(ROUND(LENGTH(rm.primary_recruiters) - LENGTH(replace(to_varchar(rm.primary_recruiters),',',''))+1,5) AS DECIMAL(5,2)),1) as pro_rated_req_ct
     -- ,REPLACE(primary_recruiters, char(10)+char(10),', ')
	  ,primary_recruiters_managers
      ,primary_recruiters_recruiting_leaders
      ,recruiting_coordinators
      ,sourcers
      ,cost_center
      ,position_id
      ,anaplan_headcount_id
      ,new_or_replacement
      ,replacement_for_worker
	  ,location_name
      ,location_city
      ,location_state_code
      ,country
      ,company
      ,brand
      ,business_unit
	  ,division
      ,is_evergreen
      ,linked_evergreen_requisition
      ,linked_evergreen_req_id
      ,requisition_approval_date
      ,recruiting_start_date
      ,job_posted_externally
      ,job_posted_internally
	 
  FROM RCT.VW_BU_REQUISITION_MASTER rm
  WHERE rm.requisition_status IN ('Open')
  AND (rm.new_or_replacement <>'Immigration' OR rm.new_or_replacement IS NULL) 

  GROUP BY 
  	   data_as_of
      ,requisition_status
      ,requisition_id
      ,initial_job_title
	  ,job_title
      ,job_profile_group
      ,job_category
      ,job_family
      ,job_level
      ,job_profile_exempt
      ,management_level
      ,worker_sub_type
      ,hiring_manager
      ,hiring_manager_employee_id
      ,supervisory_organization
      ,sup_org_ref_id
      ,leader
      ,leader_direct
      ,leader_direct_level_2
      ,primary_recruiters
      ,primary_recruiters_managers
      ,primary_recruiters_recruiting_leaders
      ,recruiting_coordinators
      ,sourcers
      ,cost_center
      ,position_id
      ,anaplan_headcount_id
      ,new_or_replacement
      ,replacement_for_worker
	  ,location_name
      ,location_city
      ,location_state_code
      ,country
      ,company
      ,brand
      ,business_unit
	  ,division
      ,is_evergreen
      ,linked_evergreen_requisition
      ,linked_evergreen_req_id
      ,requisition_approval_date
      ,recruiting_start_date
      ,job_posted_externally
      ,job_posted_internally
	  ,primary_recruiters_email_addresses
)

, detail as	
      (SELECT 
	   a.data_as_of
	  ,flt.VALUE as distinct_recruiter_email
	  ,a.pro_rated_req_ct
	  ,a.primary_recruiters
	  ,a.primary_recruiters_email_addresses
      ,a.requisition_status
      ,a.requisition_id
      ,a.initial_job_title
	  ,a.job_title
      ,a.job_profile
      ,a.job_category
      ,a.job_family
      ,a.job_level
      ,a.job_profile_exempt
      ,a.management_level
      ,a.worker_sub_type
      ,a.hiring_manager
      ,a.hiring_manager_employee_id
      ,a.supervisory_organization
      ,a.sup_org_ref_id
	  ,b.level_04_name
	  ,b.level_04_user_id
 	  ,b.level_05_name
	  ,b.level_05_user_id
	  ,b.level_06_name
	  ,b.level_06_user_id
	  ,b.level_07_name
	  ,b.level_07_user_id
	  ,b.level_08_name
	  ,b.level_08_user_id
	  ,b.level_09_name
	  ,b.level_09_user_id
	  ,b.level_10_name
	  ,b.level_10_user_id
	  ,b.recruiting_lead_singular
	  ,b.recruiting_lead_single_employee_id
     -- ,a.primary_recruiters
      ,a.primary_recruiters_managers
      ,a.primary_recruiters_recruiting_leaders
      ,a.recruiting_coordinators
      ,a.sourcers
      ,a.cost_center
      ,a.position_id
      ,a.anaplan_headcount_id
      ,a.new_or_replacement
      ,a.replacement_for_worker
	  ,a.location_name
      ,a.location_city
      ,a.location_state_code
      ,a.country
      ,a.company
      ,a.brand
      ,a.division as product_category
      ,a.is_evergreen
      ,a.linked_evergreen_requisition
      ,a.linked_evergreen_req_id
      ,a.requisition_approval_date
      ,a.recruiting_start_date
      ,a.job_posted_externally
      ,a.job_posted_internally

    FROM open_req a
	LEFT JOIN RCT.VW_BU_SUPERVISORY_ORG_COALESCE b
	ON b.supervisory_organization_reference_id=a.sup_org_ref_id,
    LATERAL FLATTEN (input => split(a.primary_recruiters_email_addresses,';')) flt
    
)

--Open Requisitions 
	SELECT 
	      'Open Reqs' as activity
	      ,IFNULL(recruiting_org.preferred_name,'No Recruiter Assigned') as distinct_worker
		  ,recruiting_org.employee_id
	      ,a.distinct_recruiter_email
		  ,recruiting_org.worker_sub_type					   
	      ,CASE
		   WHEN recruiting_org.level_07_name='Chris Rosenau' AND recruiting_org.level_08_name = 'Mindy Fineout' THEN 'Analytic Recruiting'
		   WHEN recruiting_org.level_07_name='Chris Rosenau' AND recruiting_org.level_08_name <> 'Mindy Fineout' THEN 'Tech Recruiting' 
		   WHEN recruiting_org.preferred_name IN ('Kathie Krus','Mel May') OR recruiting_org.level_07_name IN ('Kathie Krus','Mel May') THEN 'Business Recruiting'
		   WHEN recruiting_org.preferred_name = 'Sheree Ryan' OR recruiting_org.level_07_name = 'Sheree Ryan' THEN 'PA Revenue, Ops & Finance Recruiting'
		   WHEN recruiting_org.level_06_name = 'Travis Jensen' THEN 'New Market Recruiting'
		   --WHEN (recruiting_org.preferred_name = 'Tina Marie Duccini' AND recruiting_org.level_06_name ='Ginny Cheng') THEN 'Executive Recruiting'
		   --WHEN (recruiting_org.preferred_name = 'Tina Marie Duccini' AND recruiting_org.level_06_name ='Crystal Tomczyk') THEN 'Executive Recruiting'
		   --WHEN recruiting_org.level_07_name = 'Tina Marie Duccini' THEN 'Executive Recruiting'
		   --WHEN recruiting_org.level_07_name = 'Megan Varner' THEN 'Internal Mobility'
		   --WHEN (recruiting_org.business_title LIKE ('%Technical%')) THEN 'Tech Recruiting'
		   ELSE 'Other'
		   END recruiting_team
		  ,recruiting_org.level_04_name as worker_level_04_name
		  ,recruiting_org.level_04_user_id as worker_level_04_user_id
		  ,recruiting_org.level_05_name as worker_level_05_name
	 	  ,recruiting_org.level_05_user_id as worker_level_05_user_id
		  ,recruiting_org.level_06_name as worker_level_06_name
		  ,recruiting_org.level_06_user_id as worker_level_06_user_id
		  ,recruiting_org.level_07_name as worker_level_07_name
		  ,recruiting_org.level_07_user_id as worker_level_07_user_id
		  ,recruiting_org.level_08_name as worker_level_08_name
		  ,recruiting_org.level_08_user_id as worker_level_08_user_id
		  ,recruiting_org.level_09_name as worker_level_09_name
		  ,recruiting_org.level_09_user_id as worker_level_09_user_id
		  ,recruiting_org.level_10_name as worker_level_10_name
		  ,recruiting_org.level_10_user_id as worker_level_10_user_id
		  ,a.pro_rated_req_ct
		  ,a.primary_recruiters
		  ,a.primary_recruiters_email_addresses
		  ,a.requisition_status as work_status
		  ,req_stage.current_stage					
		  ,a.requisition_id as work_id
		  ,a.initial_job_title
		  ,a.job_title
		  ,a.job_category
		  ,a.job_family
		  ,a.job_profile
		  ,a.job_level
		  ,CASE
		   WHEN a.worker_sub_type IN ('Full-Time','Part-Time','Regular') THEN 'Employee'
		   WHEN CHARINDEX('intern',lower(to_varchar(a.worker_sub_type)))>0 THEN 'Intern'
		   ELSE 'Contingent Worker'
		   END AS req_sub_type
		  ,CASE
		   WHEN a.new_or_replacement ='New' THEN 'New Requisition'
		   ELSE a.new_or_replacement
		   END as new_or_replacement
		  ,a.hiring_manager
		  ,a.supervisory_organization
		  ,a.sup_org_ref_id
		  ,a.level_04_name as job_level_04_name
		  ,a.level_04_user_id as job_level_04_user_id
		  ,a.level_05_name as job_level_05_name
	 	  ,a.level_05_user_id as job_level_05_user_id
		  ,a.level_06_name as job_level_06_name
		  ,a.level_06_user_id as job_level_06_user_id
		  ,a.level_07_name as job_level_07_name
		  ,a.level_07_user_id as job_level_07_user_id
		  ,a.level_08_name as job_level_08_name
		  ,a.level_08_user_id as job_level_08_user_id
		  ,a.level_09_name as job_level_09_name
		  ,a.level_09_user_id as job_level_09_user_id
		  ,a.level_10_name as job_level_10_name
		  ,a.level_10_user_id as job_level_10_user_id
		  ,a.primary_recruiters_managers
		  ,a.primary_recruiters_recruiting_leaders
		  ,a.recruiting_coordinators
		  ,a.sourcers
		  ,a.cost_center
		  ,a.anaplan_headcount_id
		  ,a.location_city
		  ,a.location_state_code
		  ,a.country
		  ,a.company
		  ,a.brand
		  ,a.product_category
		  ,a.is_evergreen
		  ,IFNULL(current_pipeline.candidate_pipeline,0) as candidate_pipeline
		  ,a.recruiting_start_date as "start_date"
		  ,datediff(day,a.recruiting_start_date,CURRENT_DATE()) as days_active
		  ,a.job_posted_externally
		  ,a.job_posted_internally
	
	FROM detail a
	LEFT JOIN ( SELECT a.preferred_name
				,a.email
				,a.employee_id
				,a.worker_sub_type	  
				,b.level_04_name
				,b.level_04_user_id
				,b.level_05_name
				,b.level_05_user_id
				,b.level_06_name
				,b.level_06_user_id
				,b.level_07_name
				,b.level_07_user_id
				,b.level_08_name
				,b.level_08_user_id
				,b.level_09_name
				,b.level_09_user_id
				,b.level_10_name
				,b.level_10_user_id
				FROM RCT.VW_MAP_WORKDAY_ACTIVE_EMPLOYEE a
				INNER JOIN (SELECT a.preferred_name,a.employee_id,MAX(a.hire_date) as max_dt
							FROM RCT.VW_MAP_WORKDAY_ACTIVE_EMPLOYEE a
							LEFT JOIN RCT.VW_BU_SUPERVISORY_ORG_COALESCE b
							 ON a.sup_org_ref_id= b.supervisory_organization_reference_id
							WHERE b.level_05_name ='Annie Rihn'
							 AND a.active_status ='Yes'
							GROUP BY a.preferred_name,a.employee_id) as max_wae
				 ON max_wae.employee_id = a.employee_id AND max_wae.max_dt = a.hire_date
				LEFT JOIN RCT.VW_BU_SUPERVISORY_ORG_COALESCE b
				 ON a.sup_org_ref_id= b.supervisory_organization_reference_id) recruiting_org
	ON recruiting_org.email = a.distinct_recruiter_email
	LEFT JOIN (SELECT a.requisition_id,COUNT(a.candidate_name) as candidate_pipeline
			   FROM RCT.VW_MAP_WORKDAY_APPLICATIONS AS a
			   INNER JOIN RCT.VW_MAP_WORKDAY_REQUISITIONS AS b
				ON a.requisition_id = b.requisition_id
				AND b.job_requisition_status IN ('Open')
			   WHERE a.candidate_stage NOT IN ('Rejected', 'Declined by Candidate')
			   GROUP BY a.requisition_id) current_pipeline
	ON current_pipeline.requisition_id = a.requisition_id

	--Current Requisition Stage
	LEFT JOIN (SELECT rm.requisition_id 
				,CASE
			     WHEN IFNULL(background_check.background_check_counts,0) > 0 THEN 'Offer Accepted/Background Check'
				 WHEN IFNULL(offer.offer_counts,0) > 0 THEN 'Offer'
				 WHEN IFNULL(onsite.onsite_counts,0) > 0 THEN 'Onsite Interview'
				 WHEN IFNULL(interview.interview_counts,0) > 0 OR IFNULL(assessment.assessment_counts,0) > 0 THEN 'Phone/Tech Screen'
				 WHEN IFNULL(recruiter_screens.recruiter_screen_counts ,0) > 0 THEN 'Recruiter Screens' 
				 WHEN IFNULL(screen.manager_review_counts,0) > 0 THEN 'Hiring Manager Review'
				 WHEN IFNULL(review.review_counts,0) > 0 THEN 'Review'
				 WHEN IFNULL(offer_declined.offer_declined_counts,0) > 0 THEN 'No Active Candidates'
				 ELSE 'No Active Candidates'
			     END AS current_stage
 			    ,IFNULL(review.review_counts,0) as review_ct
			    ,IFNULL(screen.manager_review_counts,0) as manager_review_ct
			    ,IFNULL(recruiter_screens.recruiter_screen_counts ,0) as recruiter_screen_ct
			    ,IFNULL(assessment.assessment_counts,0) as assessment_ct
			    ,IFNULL(interview.interview_counts,0) as interview_ct
			    ,IFNULL(onsite.onsite_counts,0) as onsite_ct
			    ,IFNULL(rejected.rejected_counts,0) as rejected_ct
			    ,IFNULL(offer.offer_counts,0) as offer_ct
		        ,IFNULL(declined.declined_counts,0) as declined_ct
			    ,IFNULL(background_check.background_check_counts,0) as background_check_ct
		  	    ,IFNULL(ready.ready_counts,0) as ready_cts
			    ,IFNULL(offer_declined.offer_declined_counts,0) as offer_decline_ct
			    ,IFNULL(offer_accept.offer_accept_counts,0) as offer_accept_ct

				FROM rct.vw_map_workday_requisitions rm
				LEFT JOIN (SELECT requisition_id,COUNT(distinct candidate_name) as offer_accept_counts
						   FROM rct.vw_map_workday_all_offers wao
						   WHERE funnel_activity ='Offer Accepted'
						   GROUP BY requisition_id) offer_accept
				ON offer_accept.requisition_id = rm.requisition_id
				LEFT JOIN (SELECT requisition_id,COUNT(distinct candidate_name) as offer_declined_counts
						   FROM rct.vw_map_workday_all_offers wao
						   WHERE funnel_activity ='Offer Declined'
						   GROUP BY requisition_id) offer_declined
				ON offer_declined.requisition_id = rm.requisition_id
				LEFT JOIN (SELECT requisition_id,funnel_activity,COUNT(DISTINCT ai.interview_id) as onsite_counts
						   FROM rct.vw_bu_all_interviews ai
						   WHERE ai.funnel_activity ='Onsite Interview'
						   GROUP BY requisition_id,funnel_activity) onsite
				ON onsite.requisition_id = rm.requisition_id
				LEFT JOIN (SELECT requisition_id,funnel_activity,COUNT(DISTINCT ai.interview_id) as recruiter_screen_counts
						   FROM rct.vw_bu_all_interviews ai
						   WHERE ai.funnel_activity ='Recruiter Screen'
						   GROUP BY requisition_id,funnel_activity) recruiter_screens
				ON recruiter_screens.requisition_id = rm.requisition_id
				LEFT JOIN (SELECT requisition_id, COUNT(DISTINCT wa.candidate_id) as manager_review_counts
						   FROM rct.vw_map_workday_applications wa
						   WHERE wa.candidate_stage ='Screen'
						   GROUP BY requisition_id) screen
				ON screen.requisition_id = rm.requisition_id 
				LEFT JOIN (SELECT requisition_id, COUNT(DISTINCT  wa.candidate_id) as interview_counts
						   FROM rct.vw_map_workday_applications wa
						   WHERE wa.candidate_stage ='Interview'
						   GROUP BY requisition_id) interview
				ON interview.requisition_id = rm.requisition_id 
				LEFT JOIN (SELECT requisition_id, COUNT(DISTINCT  wa.candidate_id) as review_counts
						   FROM rct.vw_map_workday_applications wa
						   WHERE wa.candidate_stage ='Review'
						   GROUP BY requisition_id) review
				ON review.requisition_id = rm.requisition_id 
				LEFT JOIN (SELECT requisition_id, COUNT(DISTINCT  wa.candidate_id) as assessment_counts
						   FROM rct.vw_map_workday_applications wa
						   WHERE wa.candidate_stage ='Assessment'
						   GROUP BY requisition_id) assessment
				ON assessment.requisition_id = rm.requisition_id 
				LEFT JOIN (SELECT requisition_id, COUNT(DISTINCT  wa.candidate_id) as background_check_counts
						   FROM vw_map_workday_applications wa
						   WHERE wa.candidate_stage ='Background Check'
						   GROUP BY requisition_id) background_check
				ON background_check.requisition_id = rm.requisition_id 
				LEFT JOIN (SELECT requisition_id, COUNT(DISTINCT  wa.candidate_id) as ready_counts
						   FROM rct.vw_map_workday_applications wa
						   WHERE wa.candidate_stage ='Ready'
						   GROUP BY requisition_id) ready
				ON ready.requisition_id = rm.requisition_id 
				LEFT JOIN (SELECT requisition_id, COUNT(DISTINCT  wa.candidate_id) as rejected_counts
						   FROM rct.vw_map_workday_applications wa
						   WHERE wa.candidate_stage ='Rejected'
						   GROUP BY requisition_id) rejected
				ON rejected.requisition_id = rm.requisition_id 
				LEFT JOIN (SELECT requisition_id, COUNT(DISTINCT  wa.candidate_id) as offer_counts
						   FROM rct.vw_map_workday_applications wa
						   WHERE wa.candidate_stage ='Offer'
						   GROUP BY requisition_id) offer
				ON offer.requisition_id = rm.requisition_id 
				LEFT JOIN (SELECT requisition_id, COUNT(DISTINCT  wa.candidate_id) as declined_counts
						   FROM rct.vw_map_workday_applications wa
						   WHERE wa.candidate_stage ='Declined by Candidate'
						   GROUP BY requisition_id) declined
				ON declined.requisition_id = rm.requisition_id 
				WHERE (rm.new_or_replacement <>'Immigration' OR rm.new_or_replacement IS NULL) and rm.requisition_status ='Open'
				) req_stage
	ON req_stage.requisition_id = a.requisition_id							

UNION ALL

--Anaplan Headcount
	SELECT 'Headcount' as activity
		   ,b.recruiting_lead_singular as distinct_worker
		   ,b.recruiting_lead_single_employee_id as employee_id
		   ,NULL as distinct_recruiter_email
	       ,NULL as worker_sub_type						 
	       ,CASE
		    WHEN (c.level_07_name = 'Chris Rosenau' AND b.recruiting_lead_singular != 'Mindy Fineout') OR b.recruiting_lead_singular IN ('Andrew Davis','Joe Vo','Lauren Hohnbaum','Tom Caster') THEN 'Tech Recruiting'
		    --WHEN b.recruiting_lead_singular = 'Tina Marie Duccini' THEN 'Executive Recruiting'
		    WHEN (c.level_07_name = 'Chris Rosenau' AND b.recruiting_lead_singular = 'Mindy Fineout') OR c.level_08_name = 'Mindy Fineout'  THEN 'Analytic Recruiting'
		    WHEN (b.recruiting_lead_singular IN ('Kathie Krus','Mel May') OR c.level_07_name IN ('Kathie Krus','Mel May')) THEN 'Business Recruiting'
		    WHEN (b.recruiting_lead_singular = 'Sheree Ryan' OR c.level_07_name = 'Sheree Ryan') THEN 'PA Revenue, Ops & Finance Recruiting'
		    WHEN c.level_06_name IN ('Travis Jensen') OR  b.recruiting_lead_singular ='Travis Jensen' THEN 'New Market Recruiting'
		    ELSE 'Other'
		    END recruiting_team
		   ,c.level_04_name as worker_level_04_name
		   ,c.level_04_user_id as worker_level_04_user_id
		   ,c.level_05_name as worker_level_05_name
		   ,c.level_05_user_id as worker_level_05_user_id
		   ,c.level_06_name as worker_level_06_name
		   ,c.level_06_user_id as worker_level_06_user_id
		   ,c.level_07_name as worker_level_07_name
		   ,c.level_07_user_id as worker_level_07_user_id
		   ,c.level_08_name as worker_level_08_name
		   ,c.level_08_user_id as worker_level_08_user_id
		   ,c.level_09_name as worker_level_09_name
		   ,c.level_09_user_id as worker_level_09_user_id
		   ,c.level_10_name as worker_level_10_name
		   ,c.level_10_user_id as worker_level_10_user_id
		   ,1.00000 as pro_rated_req_ct
		   ,NULL as primary_recruiters
		   ,NULL as primary_recruiters_email_addresses
		   ,a.headcount_status as work_status
		   ,NULL as current_stage			   
		   ,a.id as work_id
		   ,NULL as initial_job_title
		   ,a.business_title as job_title
		   ,NULL as job_category
		   ,NULL as job_family
		   --,a.job_profile
		   	,CASE 
			WHEN CHARINDEX('E',a.job_level) = 1 THEN 'Executive'
			WHEN a.employee_type ='Intern' THEN 'Intern'
			WHEN CHARINDEX(a.job_level,a.job_profile) > 0 
				THEN LEFT(a.job_profile,charindex(' '|| a.job_level,a.job_profile)) 
			WHEN (CHARINDEX(a.job_level,a.job_profile) = 0 OR a.job_level IS NULL) AND CHARINDEX('inactive',a.job_profile) > 0
				THEN 'Inactive Job Profiles'
			ELSE REPLACE(to_varchar(a.job_profile),' (inactive)','')
			END AS job_profile
		   ,a.job_level
		   ,CASE
		    WHEN a.employee_type IN ('Full-Time','Part-Time','Regular') THEN 'Employee'
		    WHEN CHARINDEX('intern',lower(to_varchar(a.employee_type)))>0 THEN 'Intern'
		    ELSE 'Contingent Worker'
		    END AS headcount_sub_type
		   ,CASE
		    WHEN LENGTH(a.replacement_for) > 0 THEN 'Replacement Headcount'
			ELSE 'New Headcount'
			END AS new_or_replacement
		   ,a.manager_name as hiring_manager
		   ,NULL as supervisory_organization
		   ,a.sup_org_code as sup_org_ref_id
		   ,b.level_04_name  as job_level_04_name
		   ,b.level_04_user_id as job_level_04_user_id
		   ,b.level_05_name as job_level_05_name
		   ,b.level_05_user_id as job_level_05_user_id
		   ,b.level_06_name as job_level_06_name
		   ,b.level_06_user_id as job_level_06_user_id
		   ,b.level_07_name as job_level_07_name
		   ,b.level_07_user_id as job_level_07_user_id
		   ,b.level_08_name as job_level_08_name
		   ,b.level_08_user_id as job_level_08_user_id
		   ,b.level_09_name as job_level_09_name
		   ,b.level_09_user_id as job_level_09_user_id
		   ,b.level_10_name as job_level_10_name
		   ,b.level_10_user_id as job_level_10_user_id
		   ,NULL as primary_recruiters_managers
		   ,NULL as primary_recruiters_recruiting_leaders
		   ,NULL as recruiting_coordinators
		   ,NULL as sourcers
		   ,a.cost_center_name as cost_center
		   ,a.headcount_id
		   ,SUBSTRING(location,1,CHARINDEX('-',location)-1) as location_city
		   ,SUBSTRING(location,CHARINDEX('-',location)+1,2) as location_state_code
		   ,NULL as country
		   ,a.company as company
		   ,a.brand
		   ,a.product_category
		   ,NULL as is_evergreen
		   ,NULL as candidate_pipeline
		   ,a.availability_date as start_date
		   ,datediff(day,a.availability_date,current_date()) as days_active
		   ,NULL as job_posted_externally
		   ,NULL as job_posted_internally

	FROM RCT.VW_MAP_ANAPLAN_OPEN_HEADCOUNT a
	LEFT JOIN RCT.VW_BU_SUPERVISORY_ORG_COALESCE b
		ON a.sup_org_code = b.supervisory_organization_reference_id
	LEFT JOIN RCT.VW_BU_ALL_RECRUITERS c
		ON c.employee_id =b.recruiting_lead_single_employee_id;
				
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


CREATE VIEW VW_BU_TABLEAU_EARLY_TALENT as
SELECT DISTINCT 

      cam.requisition_id
      ,cam.funnel_activity
      ,cam.funnel_activity_date
      ,cam.candidate_name
      ,cam.candidate_id
	  ,cam.candidate_email
      ,cam.application_id
      ,cam.app_id_for_eeo
	  ,app.workday_application_id
      ,cam.candidate_employee_id
      ,cam.source_category
      ,cam.source
      ,cam.application_date
	  ,CASE
		WHEN app.school_name_as_text LIKE ('%Berkeley%') and app.school_name_as_text LIKE ('%California%') OR app.school_name_as_text LIKE ('%Haas%') OR app.school_name_as_text LIKE ('%UC Berkeley%') THEN 'University of California - Berkeley'
		WHEN app.school_name_as_text LIKE ('%Davis%') and app.school_name_as_text LIKE ('%California%') THEN 'University of California - Davis'
		WHEN app.school_name_as_text LIKE ('%Irvine%') and app.school_name_as_text LIKE ('%California%') THEN 'University of California - Irvine'
		WHEN app.school_name_as_text LIKE ('%South%') and app.school_name_as_text LIKE ('%California%') THEN 'University of Southern California'
		WHEN app.school_name_as_text LIKE ('%Urbana%') and app.school_name_as_text LIKE ('%Illinois%') THEN 'University of Illinois - Urbana-Champaign'
		WHEN app.school_name_as_text LIKE ('%Carnegie Mellon%') THEN 'Carnegie Mellon University'
        WHEN app.school_name_as_text LIKE ('%Kellogg%') THEN 'Northwestern University'
		WHEN app.school_name_as_text LIKE ('%New York University%') THEN 'New York University'
		WHEN app.school_name_as_text LIKE ('%University of Michigan%') THEN 'University of Michigan'
		WHEN app.school_name_as_text LIKE ('%San Jose State%') OR app.school_name_as_text LIKE ('%San José State%')THEN 'San Jose State'
		WHEN app.school_name_as_text LIKE ('%University of Washington%') THEN 'University of Washington'
		WHEN app.school_name_as_text LIKE ('%Duke%') THEN 'Duke University'
		WHEN app.school_name_as_text LIKE ('%Raikes%') OR app.school_name_as_text LIKE ('%University of Nebraska%')  THEN 'University of Nebraska'
		WHEN app.school_name_as_text LIKE ('%Carey School%') THEN 'Arizona State University'
		WHEN app.school_name_as_text LIKE ('%University of Chicago%') THEN 'University of Chicago'
		WHEN COALESCE(ets.school_rollup,app.school,app.school_name_as_text) LIKE ('%HARVARD%') THEN 'Harvard University'
		WHEN COALESCE(ets.school_rollup,app.school,app.school_name_as_text) ='NOT FOUND IN WDR' THEN 'School Unknown'
		WHEN COALESCE(ets.school_rollup,app.school,app.school_name_as_text) IS NULL THEN 'School Unknown'
		ELSE COALESCE(ets.school_rollup,app.school,app.school_name_as_text)
		END AS school_rollup
	  ,app.school
      ,app.school_name_as_text
      ,app.degree
      ,app.field_of_study
      ,app.first_year_attended
      ,app.last_year_attended
	  ,datediff(year,app.first_year_attended,app.last_year_attended) as time_in_school
      ,first_recruiter_screen
      ,first_phone_interview
      ,first_tech_screen
      ,first_phone_interview_or_tech_screen
      ,first_onsite_interview
      ,first_offer_accept
      ,last_offer_decline
      ,first_accept_last_decline
	  ,case
	   when first_accept_last_decline between cast('2017-01-01' as date) and cast('2017-07-31' as date) then '2017 Season'
	   when first_accept_last_decline between cast('2017-08-01' as date) and cast('2018-07-31' as date) then '2017-2018 Season'
	   when first_accept_last_decline between cast('2018-08-01' as date) and cast('2019-07-31' as date) then '2018-2019 Season'  
	   when first_accept_last_decline between cast('2019-08-01' as date) and cast('2020-07-31' as date) then '2019-2020 Season'
	   when first_accept_last_decline between cast('2020-08-01' as date) and cast('2021-07-31' as date) then '2020-2021 Season'
	   end as talent_season
	  ,case
	   when first_accept_last_decline between cast('2017-01-01' as date) and cast('2017-07-31' as date) then '01-01-2017'
	   when first_accept_last_decline between cast('2017-08-01' as date) and cast('2018-07-31' as date) then '08-01-2017'
	   when first_accept_last_decline between cast('2018-08-01' as date) and cast('2019-07-31' as date) then '08-01-2018'  
	   when first_accept_last_decline between cast('2019-08-01' as date) and cast('2020-07-31' as date) then '08-01-2019'
	   when first_accept_last_decline between cast('2020-08-01' as date) and cast('2021-07-31' as date) then '08-01-2020'
	   end talent_season_min
	  ,case
	   when first_accept_last_decline between cast('2017-01-01' as date) and cast('2017-07-31' as date) then '07-31-2017'
	   when first_accept_last_decline between cast('2017-08-01' as date) and cast('2018-07-31' as date) then '07-31-2018'
	   when first_accept_last_decline between cast('2018-08-01' as date) and cast('2019-07-31' as date) then '07-31-2019'  
	   when first_accept_last_decline between cast('2019-08-01' as date) and cast('2020-07-31' as date) then '07-31-2020'
	   when first_accept_last_decline between cast('2020-08-01' as date) and cast('2021-07-31' as date) then '07-31-2021'
	   end talent_season_max
      ,orphan_offer_requisition_id
      ,orphan_offer_activity
      ,orphan_first_accept_last_decline
      ,orphan_offer_candidate_start_date
      ,orphan_offer_first_application_date
      ,orphan_onsite_requisition_id
      ,orphan_first_onsite_interview
      ,orphan_onsite_first_application_date
	  ,cam.candidate_start_date
	  ,ic.funnel_activity as intern_FTE_offer
	  ,case
	   when ic.funnel_activity IS NOT NULL THEN 1
	   end as offer_conversion_count
	  ,case
	   when ic.funnel_activity ='Offer Accepted'  THEN 1
	   end as offer_accept_conversion_ct
	  ,reqs.worker_sub_type
	  ,reqs.hiring_manager
      ,reqs.leader
	  ,reqs.leader_direct
	  ,reqs.leader_direct_level_2
	  ,reqs.cost_center
	  ,reqs.brand
	  ,reqs.new_or_replacement
	  ,reqs.location_city
	  ,reqs.location_state_code
	  ,reqs.country
	  ,case
	   when reqs.job_category IS NULL and reqs.worker_sub_type='Intern (Trainee)' then 'Intern'
	   when reqs.job_category LIKE ('%Sales%') then 'Sales'
	   else reqs.job_category
	   end as "job_category_rollup"
	  ,reqs.job_family
	  ,case 
	   when reqs.worker_sub_type IN ('Full-Time','Regular','Contractor') and reqs.job_level = 'INTERN' then NULL
	   when reqs.worker_sub_type = ('Intern (Trainee)') then 'Intern'
	   else reqs.job_level
	   end as job_level
	  ,COALESCE(ets.job_profile_rollup,reqs.job_profile_group) as job_profile
	  ,reqs.job_title
	  ,reqs.initial_job_title
	  ,reqs.supervisory_organization

  FROM rct.vw_bu_candidate_activity_master cam
  INNER JOIN rct.vw_bu_requisition_master reqs
	ON reqs.requisition_id=cam.requisition_id
  LEFT JOIN rct.vw_map_workday_applications app
	ON cam.app_id_for_eeo = app.workday_application_id
  LEFT JOIN recruitingdb.v_Early_Talent_Schools ets
	ON ets.app_id_for_eeo = cam.app_id_for_eeo
  LEFT JOIN rct.vw_bu_intern_conversions ic
    ON ic.candidate_email = cam.candidate_email
	AND ic.requisition_id = cam.requisition_id
	AND ic.funnel_activity_date = cam.funnel_activity_date

  WHERE cam.funnel_activity IN ('Offer Accepted','Offer Declined')
  AND cam.funnel_activity_date >= cast('2017-01-01' as date)
  AND (reqs.initial_job_title LIKE ('%University - %') OR reqs.initial_job_title LIKE ('%University Grad%') OR reqs.is_ur=1);
  
  
  select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


CREATE or replace VIEW VW_BU_TABLEAU_INTERNAL_MOBILITY_TO_FROM as
WITH employees_by_month_jp_cc AS (
			SELECT a.data_as_of
				, a.worker
				, a.preferred_name
				, a.employee_id
				, a.email
				, a.business_title
				, a.worker_sub_type
				, a.manager
				, a.supervisory_organization
				, a.location
				, a.job_code
				, b.job_profile
				, CASE 
						WHEN CHARINDEX('E',b.job_level) = 1 THEN 'Executive'
						WHEN CHARINDEX(b.job_level,b.job_profile) > 0 
							THEN LEFT(b.job_profile,charindex(' ' || b.job_level,b.job_profile)) 
						WHEN (CHARINDEX(b.job_level,b.job_profile) = 0 OR b.job_level IS NULL) AND CHARINDEX('inactive',b.job_profile) > 0
							THEN 'Inactive Job Profiles'
						ELSE REPLACE(to_varchar(b.job_profile),' (inactive)','')
						END AS job_profile_group
				, b.job_category
				, b.job_family
				, b.job_level
				, a.brand
				, a.sup_org_ref_id
				, a.user_id
				, a.cost_center_code
				, c.cost_center
				, c.product_category
				, a.active_status
				, a.hire_date
				, a.termination_date
				, b.management_level
				, a.city
				, a.state
				, a.country
				, a.company
			  FROM  RCT.VW_MAP_EMPLOYEES_BY_MONTH AS a
				LEFT JOIN RCT.VW_MAP_workday_job_profiles AS b
					ON a.job_code = b.job_code
				LEFT JOIN RCT.VW_MAP_workday_cost_centers AS c
					ON a.cost_center_code = c.code
	)


SELECT 'Funnel' AS activity_type 
	, 'Movement To' AS movement_type
	, CAM.application_id
	, CAM.candidate_email
	, CAM.requisition_id
	, COALESCE(CAM.candidate_employee_id, XFER.employee_id) AS candidate_employee_id
	, CAM.funnel_activity
	, CAM.funnel_activity_date
	, CAM.candidate_name
	, CAM.source_category
	, CAM.source
	, CASE WHEN CAM.source_category = 'Internal' 
		--AND XFER.worker_sub_type = 'Regular'
		AND JR.worker_sub_type = 'Regular'
		THEN 'Yes' ELSE 'No' END AS is_internal
	, CAM.application_date
	, CAM.first_recruiter_screen
	, CAM.first_phone_interview
	, CAM.first_tech_screen
	, CAM.first_phone_interview_or_tech_screen
	, CAM.first_onsite_interview
	, CAM.first_offer_accept
	, CAM.last_offer_decline
	, CAM.candidate_start_date
	, CAM.first_accept_last_decline
	, CAM.orphan_offer_requisition_id
	, CAM.orphan_offer_activity
	, CAM.orphan_first_accept_last_decline
	, CAM.orphan_offer_candidate_start_date
	, CAM.orphan_onsite_requisition_id
	, CAM.orphan_first_onsite_interview
	, CAM.orphan_onsite_first_application_date
	, CAM.req_cand_id
	, COALESCE(OFR.first_submitted_offer_initiator, OFR.first_offer_initiated_by, OFR.ready_for_hire_initiator) AS offering_recruiter
	
	, LEFT(XFER.job_level,1) AS candidate_level_type
	, RIGHT(XFER.job_level,1) AS candidate_level_number
	, LEFT(JR.job_level,1) AS job_level_type
	, RIGHT(JR.job_level,1) AS job_level_number
	
	, CASE WHEN XFER.job_level IS NULL OR JR.job_level IS NULL THEN NULL
			WHEN XFER.job_level = JR.job_level THEN 'Lateral'
			WHEN XFER.job_level = 'S5' AND JR.job_level = 'P1'
					OR XFER.job_level = 'P1' AND JR.job_level = 'S5'
				THEN 'Lateral'
			WHEN LEFT(XFER.job_level,1) = 'P' AND LEFT(JR.job_level,1) = 'M'
					AND RIGHT(XFER.job_level,1)-1 = RIGHT(JR.job_level,1)
				THEN 'Lateral'
			WHEN LEFT(XFER.job_level,1) = 'M' AND LEFT(JR.job_level,1) = 'P'
					AND RIGHT(XFER.job_level,1) = RIGHT(JR.job_level,1)-1
				THEN 'Lateral'
			WHEN LEFT(XFER.job_level,1) = LEFT(JR.job_level,1)
				AND RIGHT(XFER.job_level,1) < RIGHT(JR.job_level,1)
				THEN 'Promotion'
			WHEN LEFT(XFER.job_level,1)<>'E' AND LEFT(JR.job_level,1) = 'E'
				THEN 'Promotion'
			WHEN LEFT(XFER.job_level,1) = 'S' AND LEFT(JR.job_level,1) <> 'S'
				THEN 'Promotion'
			WHEN LEFT(XFER.job_level,1) = 'P' AND LEFT(JR.job_level,1) = 'M'
					AND RIGHT(XFER.job_level,1) <= RIGHT(JR.job_level,1)
				THEN 'Promotion'
			WHEN LEFT(XFER.job_level,1) = 'M' AND LEFT(JR.job_level,1) = 'P'
					AND RIGHT(XFER.job_level,1)+2 <= RIGHT(JR.job_level,1)
				THEN 'Promotion'
			WHEN LEFT(XFER.job_level,1) = LEFT(JR.job_level,1)
				AND RIGHT(XFER.job_level,1) > RIGHT(JR.job_level,1)
				THEN 'Reset'
			WHEN LEFT(XFER.job_level,1)<>'S' AND LEFT(JR.job_level,1) = 'S'
				THEN 'Reset'
			WHEN LEFT(XFER.job_level,1)='E' AND LEFT(JR.job_level,1) <> 'E'
				THEN 'Reset'
			WHEN LEFT(XFER.job_level,1) = 'P' AND LEFT(JR.job_level,1) = 'M'
					AND RIGHT(XFER.job_level,1) >= RIGHT(JR.job_level,1)+2
				THEN 'Reset'
			WHEN LEFT(XFER.job_level,1) = 'M' AND LEFT(JR.job_level,1) = 'P'
					AND RIGHT(XFER.job_level,1) >= RIGHT(JR.job_level,1)
				THEN 'Reset'
		END as promo_lateral_reset
	
	, JR.data_as_of
	, JR.is_evergreen
	, CAST(NULL AS int) AS active_internal_applications
	, CAST(NULL AS int) AS total_internal_applications


	, CASE
			WHEN CAM.funnel_activity = 'Offer Accepted' 
					AND CAM.application_date < JR.recruiting_start_date
				THEN DATEDIFF(day,CAM.application_date,CAM.funnel_activity_date)
			WHEN CAM.funnel_activity = 'Offer Accepted'
					AND CAM.application_date>= JR.recruiting_start_date
				THEN DATEDIFF(day,JR.recruiting_start_date,CAM.funnel_activity_date)
			END AS time_to_fill
	, NULL AS candidate_stage
	, NULL AS job_application_step
	, NULL AS offer_status


--Information about "a" side of transaction
	, JR.job_title AS a_job_title
	, JR.hiring_manager AS a_manager
	, JR.location_city AS a_city
	, JR.job_profile AS a_job_profile
	, JR.job_profile_group AS a_job_profile_group
	, JR.job_category AS a_job_category
	, JR.job_family AS a_job_family
	, JR.job_level AS a_job_level
	, JR.brand AS a_brand
	, JR.cost_center AS a_cost_center
	, JR.management_level AS a_management_level
	, JR.worker_sub_type AS a_worker_sub_type
	, JR.leader AS a_rich_direct
	, JR.leader_direct AS a_rich_direct_L2
	, JR.leader_direct_level_2 AS a_rich_direct_L3
	, JR.division AS a_product_category

--Information about "b" side of transaction
	, XFER.business_title AS b_job_title
	, XFER.manager AS b_manager
	, XFER.city AS b_city
	, XFER.job_profile AS b_job_profile
	, XFER.job_profile_group AS b_job_profile_group
	, XFER.job_category AS b_job_category
	, XFER.job_family AS b_job_family
	, XFER.job_level AS b_job_level
	, XFER.brand AS b_brand
	, XFER.cost_center AS b_cost_center
	, XFER.management_level AS b_management_level
	, XFER.worker_sub_type AS b_worker_sub_type
	, SO.level_04_name AS b_rich_direct
	, SO.level_05_name AS b_rich_direct_L2
	, SO.level_06_name AS b_rich_direct_L3
	, XFER.product_category AS b_product_category

FROM  RCT.VW_BU_CANDIDATE_ACTIVITY_MASTER AS CAM
	LEFT JOIN employees_by_month_jp_cc AS XFER
	ON (CAM.candidate_employee_id = XFER.employee_id
			OR LEFT(CAM.candidate_email,CHARINDEX('@',CAM.candidate_email  || '@')-1) = XFER.user_id)
	AND MONTH(CAM.application_date) = MONTH(XFER.data_as_of)
	AND YEAR(CAM.application_date) = YEAR(XFER.data_as_of)
	AND CAM.source_category = 'Internal'
	LEFT JOIN RCT.VW_BU_supervisory_org_coalesce AS SO
		ON XFER.sup_org_ref_id = SO.supervisory_organization_reference_id
	LEFT JOIN RCT.VW_BU_requisition_master AS JR
		ON CAM.requisition_id = JR.requisition_id
	LEFT JOIN RCT.vw_map_workday_all_offers AS OFR
		ON CAM.candidate_email = OFR.candidate_email
			AND CAM.requisition_id = OFR.requisition_id

WHERE ((CAM.source_category = 'Internal' 
			--AND XFER.worker_sub_type = 'Regular'
		)
	OR CAM.funnel_activity = 'Offer Accepted')
	AND JR.worker_sub_type = 'Regular'
	AND (JR.is_ur = 0 OR JR.is_ur IS NULL)


--------------------------------------------------
--------------------------------------------------
UNION ALL

SELECT 'Funnel' AS activity_type 
	, 'Movement From' AS movement_type
	, CAM.application_id
	, CAM.candidate_email
	, CAM.requisition_id
	, COALESCE(CAM.candidate_employee_id, XFER.employee_id) AS candidate_employee_id
	, CAM.funnel_activity
	, CAM.funnel_activity_date
	, CAM.candidate_name
	, CAM.source_category
	, CAM.source
	, CASE WHEN CAM.source_category = 'Internal' 
		--AND XFER.worker_sub_type = 'Regular'
		AND JR.worker_sub_type = 'Regular'
		THEN 'Yes' ELSE 'No' END AS is_internal
	, CAM.application_date
	, CAM.first_recruiter_screen
	, CAM.first_phone_interview
	, CAM.first_tech_screen
	, CAM.first_phone_interview_or_tech_screen
	, CAM.first_onsite_interview
	, CAM.first_offer_accept
	, CAM.last_offer_decline
	, CAM.candidate_start_date
	, CAM.first_accept_last_decline
	, CAM.orphan_offer_requisition_id
	, CAM.orphan_offer_activity
	, CAM.orphan_first_accept_last_decline
	, CAM.orphan_offer_candidate_start_date
	, CAM.orphan_onsite_requisition_id
	, CAM.orphan_first_onsite_interview
	, CAM.orphan_onsite_first_application_date
	, CAM.req_cand_id
	, COALESCE(OFR.first_submitted_offer_initiator, OFR.first_offer_initiated_by, OFR.ready_for_hire_initiator) AS offering_recruiter
	
	, LEFT(XFER.job_level,1) AS candidate_level_type
	, RIGHT(XFER.job_level,1) AS candidate_level_number
	, LEFT(JR.job_level,1) AS job_level_type
	, RIGHT(JR.job_level,1) AS job_level_number
	
	, CASE WHEN XFER.job_level IS NULL OR JR.job_level IS NULL THEN NULL
			WHEN XFER.job_level = JR.job_level THEN 'Lateral'
			WHEN XFER.job_level = 'S5' AND JR.job_level = 'P1'
					OR XFER.job_level = 'P1' AND JR.job_level = 'S5'
				THEN 'Lateral'
			WHEN LEFT(XFER.job_level,1) = 'P' AND LEFT(JR.job_level,1) = 'M'
					AND RIGHT(XFER.job_level,1)-1 = RIGHT(JR.job_level,1)
				THEN 'Lateral'
			WHEN LEFT(XFER.job_level,1) = 'M' AND LEFT(JR.job_level,1) = 'P'
					AND RIGHT(XFER.job_level,1) = RIGHT(JR.job_level,1)-1
				THEN 'Lateral'
			WHEN LEFT(XFER.job_level,1) = LEFT(JR.job_level,1)
				AND RIGHT(XFER.job_level,1) < RIGHT(JR.job_level,1)
				THEN 'Promotion'
			WHEN LEFT(XFER.job_level,1)<>'E' AND LEFT(JR.job_level,1) = 'E'
				THEN 'Promotion'
			WHEN LEFT(XFER.job_level,1) = 'S' AND LEFT(JR.job_level,1) <> 'S'
				THEN 'Promotion'
			WHEN LEFT(XFER.job_level,1) = 'P' AND LEFT(JR.job_level,1) = 'M'
					AND RIGHT(XFER.job_level,1) <= RIGHT(JR.job_level,1)
				THEN 'Promotion'
			WHEN LEFT(XFER.job_level,1) = 'M' AND LEFT(JR.job_level,1) = 'P'
					AND RIGHT(XFER.job_level,1)+2 <= RIGHT(JR.job_level,1)
				THEN 'Promotion'
			WHEN LEFT(XFER.job_level,1) = LEFT(JR.job_level,1)
				AND RIGHT(XFER.job_level,1) > RIGHT(JR.job_level,1)
				THEN 'Reset'
			WHEN LEFT(XFER.job_level,1)<>'S' AND LEFT(JR.job_level,1) = 'S'
				THEN 'Reset'
			WHEN LEFT(XFER.job_level,1)='E' AND LEFT(JR.job_level,1) <> 'E'
				THEN 'Reset'
			WHEN LEFT(XFER.job_level,1) = 'P' AND LEFT(JR.job_level,1) = 'M'
					AND RIGHT(XFER.job_level,1) >= RIGHT(JR.job_level,1)+2
				THEN 'Reset'
			WHEN LEFT(XFER.job_level,1) = 'M' AND LEFT(JR.job_level,1) = 'P'
					AND RIGHT(XFER.job_level,1) >= RIGHT(JR.job_level,1)
				THEN 'Reset'
		END as promo_lateral_reset
	
	, JR.data_as_of
	, JR.is_evergreen
	, CAST(NULL AS int) AS active_internal_applications
	, CAST(NULL AS int) AS total_internal_applications


	, CASE
			WHEN CAM.funnel_activity = 'Offer Accepted' 
					AND CAM.application_date < JR.recruiting_start_date
				THEN DATEDIFF(day,CAM.application_date,CAM.funnel_activity_date)
			WHEN CAM.funnel_activity = 'Offer Accepted'
					AND CAM.application_date>= JR.recruiting_start_date
				THEN DATEDIFF(day,JR.recruiting_start_date,CAM.funnel_activity_date)
			END AS time_to_fill
	, NULL AS candidate_stage
	, NULL AS job_application_step
	, NULL AS offer_status


--Information about "a" side of transaction
	, XFER.business_title AS a_job_title
	, XFER.manager AS a_manager
	, XFER.city AS a_city
	, XFER.job_profile AS a_job_profile
	, XFER.job_profile_group AS a_job_profile_group
	, XFER.job_category AS a_job_category
	, XFER.job_family AS a_job_family
	, XFER.job_level AS a_job_level
	, XFER.brand AS a_brand
	, XFER.cost_center AS a_cost_center
	, XFER.management_level AS a_management_level
	, XFER.worker_sub_type AS a_worker_sub_type
	, SO.level_04_name AS a_rich_direct
	, SO.level_05_name AS a_rich_direct_L2
	, SO.level_06_name AS a_rich_direct_L3
	, XFER.product_category AS a_product_category

--Information about "b" side of transaction
	, JR.job_title AS b_job_title
	, JR.hiring_manager AS b_manager
	, JR.location_city AS b_city
	, JR.job_profile AS b_job_profile
	, JR.job_profile_group AS b_job_profile_group
	, JR.job_category AS b_job_category
	, JR.job_family AS b_job_family
	, JR.job_level AS b_job_level
	, JR.brand AS b_brand
	, JR.cost_center AS b_cost_center
	, JR.management_level AS b_management_level
	, JR.worker_sub_type AS b_worker_sub_type
	, JR.leader AS b_rich_direct
	, JR.leader_direct AS b_rich_direct_L2
	, JR.leader_direct_level_2 AS b_rich_direct_L3
	, JR.division AS b_product_category

FROM RCT.VW_BU_CANDIDATE_ACTIVITY_MASTER AS CAM
	LEFT JOIN employees_by_month_jp_cc AS XFER
	ON (CAM.candidate_employee_id = XFER.employee_id
			OR LEFT(CAM.candidate_email,CHARINDEX('@',CAM.candidate_email || '@')-1) = XFER.user_id)
	AND MONTH(CAM.application_date) = MONTH(XFER.data_as_of)
	AND YEAR(CAM.application_date) = YEAR(XFER.data_as_of)
	AND CAM.source_category = 'Internal'
	LEFT JOIN RCT.VW_BU_supervisory_org_coalesce AS SO
		ON XFER.sup_org_ref_id = SO.supervisory_organization_reference_id
	LEFT JOIN RCT.VW_BU_requisition_master AS JR
		ON CAM.requisition_id = JR.requisition_id
	LEFT JOIN RCT.vw_map_workday_all_offers AS OFR
		ON CAM.candidate_email = OFR.candidate_email
			AND CAM.requisition_id = OFR.requisition_id

WHERE ((CAM.source_category = 'Internal' 
			--AND XFER.worker_sub_type = 'Regular'
		)
	OR CAM.funnel_activity = 'Offer Accepted')
	AND JR.worker_sub_type = 'Regular'
	AND (JR.is_ur = 0 OR JR.is_ur IS NULL)

UNION ALL

SELECT 'Current Pipeline' AS activity_type
	, 'Movement To' AS activity_type
	, CAM.workday_application_id AS application_id
	, CAM.candidate_email
	, CAM.requisition_id
	, COALESCE(CAM.candidate_employee_id, XFER.employee_id) AS candidate_employee_id
	, 'Current Pipeline' AS funnel_activity
	, JR.data_as_of AS funnel_activity_date
	, CAM.candidate_name
	, CAM.source_category
	, CAM.source
	, CASE WHEN CAM.source_category = 'Internal' 
		--AND XFER.worker_sub_type = 'Regular'
		AND JR.worker_sub_type = 'Regular'
		THEN 'Yes' ELSE 'No' END AS is_internal
	, NULL AS application_date
	, NULL AS first_recruiter_screen
	, NULL AS first_phone_interview
	, NULL AS first_tech_screen
	, NULL AS first_phone_interview_or_tech_screen
	, NULL AS first_onsite_interview
	, CAM.first_accept_or_rfh_date AS first_offer_accept
	, NULL AS last_offer_decline
	, NULL AS candidate_start_date
	, NULL AS first_accept_last_decline
	, NULL AS orphan_offer_requisition_id
	, NULL AS orphan_offer_activity
	, NULL AS orphan_first_accept_last_decline
	, NULL AS orphan_offer_candidate_start_date
	, NULL AS orphan_onsite_requisition_id
	, NULL AS orphan_first_onsite_interview
	, NULL AS orphan_onsite_first_application_date
	, NULL AS req_cand_id
	, NULL AS offering_recruiter
	
	, LEFT(XFER.job_level,1) AS candidate_level_type
	, RIGHT(XFER.job_level,1) AS candidate_level_number
	, LEFT(JR.job_level,1) AS job_level_type
	, RIGHT(JR.job_level,1) AS job_level_number
	
	, CASE WHEN XFER.job_level IS NULL OR JR.job_level IS NULL THEN NULL
			WHEN XFER.job_level = JR.job_level THEN 'Lateral'
			WHEN XFER.job_level = 'S5' AND JR.job_level = 'P1'
					OR XFER.job_level = 'P1' AND JR.job_level = 'S5'
				THEN 'Lateral'
			WHEN LEFT(XFER.job_level,1) = 'P' AND LEFT(JR.job_level,1) = 'M'
					AND RIGHT(XFER.job_level,1)-1 = RIGHT(JR.job_level,1)
				THEN 'Lateral'
			WHEN LEFT(XFER.job_level,1) = 'M' AND LEFT(JR.job_level,1) = 'P'
					AND RIGHT(XFER.job_level,1) = RIGHT(JR.job_level,1)-1
				THEN 'Lateral'
			WHEN LEFT(XFER.job_level,1) = LEFT(JR.job_level,1)
				AND RIGHT(XFER.job_level,1) < RIGHT(JR.job_level,1)
				THEN 'Promotion'
			WHEN LEFT(XFER.job_level,1)<>'E' AND LEFT(JR.job_level,1) = 'E'
				THEN 'Promotion'
			WHEN LEFT(XFER.job_level,1) = 'S' AND LEFT(JR.job_level,1) <> 'S'
				THEN 'Promotion'
			WHEN LEFT(XFER.job_level,1) = 'P' AND LEFT(JR.job_level,1) = 'M'
					AND RIGHT(XFER.job_level,1) <= RIGHT(JR.job_level,1)
				THEN 'Promotion'
			WHEN LEFT(XFER.job_level,1) = 'M' AND LEFT(JR.job_level,1) = 'P'
					AND RIGHT(XFER.job_level,1)+2 <= RIGHT(JR.job_level,1)
				THEN 'Promotion'
			WHEN LEFT(XFER.job_level,1) = LEFT(JR.job_level,1)
				AND RIGHT(XFER.job_level,1) > RIGHT(JR.job_level,1)
				THEN 'Reset'
			WHEN LEFT(XFER.job_level,1)<>'S' AND LEFT(JR.job_level,1) = 'S'
				THEN 'Reset'
			WHEN LEFT(XFER.job_level,1)='E' AND LEFT(JR.job_level,1) <> 'E'
				THEN 'Reset'
			WHEN LEFT(XFER.job_level,1) = 'P' AND LEFT(JR.job_level,1) = 'M'
					AND RIGHT(XFER.job_level,1) >= RIGHT(JR.job_level,1)+2
				THEN 'Reset'
			WHEN LEFT(XFER.job_level,1) = 'M' AND LEFT(JR.job_level,1) = 'P'
					AND RIGHT(XFER.job_level,1) >= RIGHT(JR.job_level,1)
				THEN 'Reset'
		END as promo_lateral_reset
	
	, JR.data_as_of
	, JR.is_evergreen
	, CAST(NULL AS int) AS active_internal_applications
	, CAST(NULL AS int) AS total_internal_applications

	, NULL AS time_to_fill
	, CAM.candidate_stage
	, CAM.job_application_step
	, CAM.offer_status
	
--Information about "a" side of transaction
	, JR.job_title AS a_job_title
	, JR.hiring_manager AS a_hiring_manager
	, JR.location_city AS a_city
	, JR.job_profile AS a_job_profile
	, JR.job_profile_group AS a_job_profile_group
	, JR.job_category AS a_job_category
	, JR.job_family AS a_job_family
	, JR.job_level AS a_job_level
	, JR.brand AS a_brand
	, JR.cost_center AS a_cost_center
	, JR.management_level AS a_management_level
	, JR.worker_sub_type AS a_worker_sub_type
	, JR.leader AS a_rich_direct
	, JR.leader_direct AS a_rich_direct_L2
	, JR.leader_direct_level_2 AS a_rich_direct_L3
	, JR.division AS a_product_category

--Information about "b" side of transaction
	, XFER.business_title AS b_job_title
	, XFER.manager AS b_manager
	, XFER.city AS b_city
	, JP.job_profile AS b_job_profile
	, CASE 
			WHEN CHARINDEX('E',JP.job_level) = 1 THEN 'Executive'
			WHEN CHARINDEX(JP.job_level,JP.job_profile) > 0 
				THEN LEFT(JP.job_profile,charindex(' ' || JP.job_level,JP.job_profile)) 
			WHEN (CHARINDEX(JP.job_level,JP.job_profile) = 0 OR JP.job_level IS NULL) AND CHARINDEX('inactive',JP.job_profile) > 0
				THEN 'Inactive Job Profiles'
			ELSE REPLACE(to_varchar(JP.job_profile),' (inactive)','')
			END AS b_job_profile_group
	, JP.job_category AS b_job_category
	, JP.job_family AS b_job_family
	, JP.job_level AS b_job_level
	, XFER.brand AS b_brand
	, CC.cost_center AS b_cost_center
	, XFER.management_level AS b_management_level
	, XFER.worker_sub_type AS b_worker_sub_type
	, SO.level_04_name AS b_rich_direct
	, SO.level_05_name AS b_rich_direct_l2
	, SO.level_06_name AS b_rich_direct_l3
	, CC.product_category AS b_product_category

FROM RCT.VW_map_workday_applications AS CAM
	LEFT JOIN RCT.VW_BU_all_employees AS XFER
		ON (CAM.candidate_employee_id = XFER.employee_id
			OR LEFT(CAM.candidate_email,CHARINDEX('@',CAM.candidate_email || '@')-1) = XFER.user_id)
	LEFT JOIN RCT.VW_BU_supervisory_org_coalesce AS SO
		ON XFER.sup_org_ref_id = SO.supervisory_organization_reference_id
	LEFT JOIN RCT.VW_map_workday_cost_centers AS CC
		ON XFER.cost_center_code = CC.code
	LEFT JOIN RCT.VW_map_workday_job_profiles AS JP
		ON XFER.job_code = JP.job_code
	LEFT JOIN RCT.VW_BU_requisition_master AS JR
		ON CAM.requisition_id = JR.requisition_id

WHERE ((CAM.source_category = 'Internal' 
			--AND XFER.worker_sub_type = 'Regular'
			))
	AND JR.worker_sub_type = 'Regular'
	AND (JR.is_ur = 0 OR JR.is_ur IS NULL)
	AND JR.requisition_status_summary = 'Open'
	AND CAM.candidate_stage <> 'Rejected'
	AND CAM.candidate_stage <> 'Declined By Candidate'

UNION ALL

SELECT 'Current Pipeline' AS activity_type
	, 'Movement From' AS activity_type
	, CAM.workday_application_id AS application_id
	, CAM.candidate_email
	, CAM.requisition_id
	, COALESCE(CAM.candidate_employee_id, XFER.employee_id) AS candidate_employee_id
	, 'Current Pipeline' AS funnel_activity
	, JR.data_as_of AS funnel_activity_date
	, CAM.candidate_name
	, CAM.source_category
	, CAM.source
	, CASE WHEN CAM.source_category = 'Internal' 
		--AND XFER.worker_sub_type = 'Regular'
		AND JR.worker_sub_type = 'Regular'
		THEN 'Yes' ELSE 'No' END AS is_internal
	, NULL AS application_date
	, NULL AS first_recruiter_screen
	, NULL AS first_phone_interview
	, NULL AS first_tech_screen
	, NULL AS first_phone_interview_or_tech_screen
	, NULL AS first_onsite_interview
	, CAM.first_accept_or_rfh_date AS first_offer_accept
	, NULL AS last_offer_decline
	, NULL AS candidate_start_date
	, NULL AS first_accept_last_decline
	, NULL AS orphan_offer_requisition_id
	, NULL AS orphan_offer_activity
	, NULL AS orphan_first_accept_last_decline
	, NULL AS orphan_offer_candidate_start_date
	, NULL AS orphan_onsite_requisition_id
	, NULL AS orphan_first_onsite_interview
	, NULL AS orphan_onsite_first_application_date
	, NULL AS req_cand_id
	, NULL AS offering_recruiter
	
	, LEFT(XFER.job_level,1) AS candidate_level_type
	, RIGHT(XFER.job_level,1) AS candidate_level_number
	, LEFT(JR.job_level,1) AS job_level_type
	, RIGHT(JR.job_level,1) AS job_level_number
	
	, CASE WHEN XFER.job_level IS NULL OR JR.job_level IS NULL THEN NULL
			WHEN XFER.job_level = JR.job_level THEN 'Lateral'
			WHEN XFER.job_level = 'S5' AND JR.job_level = 'P1'
					OR XFER.job_level = 'P1' AND JR.job_level = 'S5'
				THEN 'Lateral'
			WHEN LEFT(XFER.job_level,1) = 'P' AND LEFT(JR.job_level,1) = 'M'
					AND RIGHT(XFER.job_level,1)-1 = RIGHT(JR.job_level,1)
				THEN 'Lateral'
			WHEN LEFT(XFER.job_level,1) = 'M' AND LEFT(JR.job_level,1) = 'P'
					AND RIGHT(XFER.job_level,1) = RIGHT(JR.job_level,1)-1
				THEN 'Lateral'
			WHEN LEFT(XFER.job_level,1) = LEFT(JR.job_level,1)
				AND RIGHT(XFER.job_level,1) < RIGHT(JR.job_level,1)
				THEN 'Promotion'
			WHEN LEFT(XFER.job_level,1)<>'E' AND LEFT(JR.job_level,1) = 'E'
				THEN 'Promotion'
			WHEN LEFT(XFER.job_level,1) = 'S' AND LEFT(JR.job_level,1) <> 'S'
				THEN 'Promotion'
			WHEN LEFT(XFER.job_level,1) = 'P' AND LEFT(JR.job_level,1) = 'M'
					AND RIGHT(XFER.job_level,1) <= RIGHT(JR.job_level,1)
				THEN 'Promotion'
			WHEN LEFT(XFER.job_level,1) = 'M' AND LEFT(JR.job_level,1) = 'P'
					AND RIGHT(XFER.job_level,1)+2 <= RIGHT(JR.job_level,1)
				THEN 'Promotion'
			WHEN LEFT(XFER.job_level,1) = LEFT(JR.job_level,1)
				AND RIGHT(XFER.job_level,1) > RIGHT(JR.job_level,1)
				THEN 'Reset'
			WHEN LEFT(XFER.job_level,1)<>'S' AND LEFT(JR.job_level,1) = 'S'
				THEN 'Reset'
			WHEN LEFT(XFER.job_level,1)='E' AND LEFT(JR.job_level,1) <> 'E'
				THEN 'Reset'
			WHEN LEFT(XFER.job_level,1) = 'P' AND LEFT(JR.job_level,1) = 'M'
					AND RIGHT(XFER.job_level,1) >= RIGHT(JR.job_level,1)+2
				THEN 'Reset'
			WHEN LEFT(XFER.job_level,1) = 'M' AND LEFT(JR.job_level,1) = 'P'
					AND RIGHT(XFER.job_level,1) >= RIGHT(JR.job_level,1)
				THEN 'Reset'
		END as promo_lateral_reset
	
	, JR.data_as_of
	, JR.is_evergreen
	, CAST(NULL AS int) AS active_internal_applications
	, CAST(NULL AS int) AS total_internal_applications

	, NULL AS time_to_fill
	, CAM.candidate_stage
	, CAM.job_application_step
	, CAM.offer_status
	
--Information about "a" side of transaction
	, XFER.business_title AS a_job_title
	, XFER.manager AS a_manager
	, XFER.city AS a_city
	, JP.job_profile AS a_job_profile
	, CASE 
			WHEN CHARINDEX('E',JP.job_level) = 1 THEN 'Executive'
			WHEN CHARINDEX(JP.job_level,JP.job_profile) > 0 
				THEN LEFT(JP.job_profile,charindex(' ' || JP.job_level,JP.job_profile)) 
			WHEN (CHARINDEX(JP.job_level,JP.job_profile) = 0 OR JP.job_level IS NULL) AND CHARINDEX('inactive',JP.job_profile) > 0
				THEN 'Inactive Job Profiles'
			ELSE REPLACE(to_varchar(JP.job_profile),' (inactive)','')
			END AS a_job_profile_group
	, JP.job_category AS a_job_category
	, JP.job_family AS a_job_family
	, JP.job_level AS a_job_level
	, XFER.brand AS a_brand
	, CC.cost_center AS a_cost_center
	, XFER.management_level AS a_management_level
	, XFER.worker_sub_type AS a_worker_sub_type
	, SO.level_04_name AS a_rich_direct
	, SO.level_05_name AS a_rich_direct_l2
	, SO.level_06_name AS a_rich_direct_l3
	, CC.product_category AS a_product_category

--Information about "b" side of transaction
	, JR.job_title AS b_job_title
	, JR.hiring_manager AS b_hiring_manager
	, JR.location_city AS b_city
	, JR.job_profile AS b_job_profile
	, CASE 
			WHEN CHARINDEX('inactive',JR.job_profile) > 0
				THEN 'Inactive Job Profiles' 
			WHEN CHARINDEX(JR.job_level,JR.job_profile) > 0 
				THEN LEFT(JR.job_profile,charindex(' ' || JR.job_level,JR.job_profile)) 
			ELSE JR.job_profile
			END AS b_job_profile_group
	, JR.job_category AS b_job_category
	, JR.job_family AS b_job_family
	, JR.job_level AS b_job_level
	, JR.brand AS b_brand
	, JR.cost_center AS b_cost_center
	, JR.management_level AS b_management_level
	, JR.worker_sub_type AS b_worker_sub_type
	, JR.leader AS b_rich_direct
	, JR.leader_direct AS b_rich_direct_L2
	, JR.leader_direct_level_2 AS b_rich_direct_L3
	, JR.division AS b_product_category


FROM RCT.VW_map_workday_applications AS CAM
	LEFT JOIN RCT.VW_BU_all_employees AS XFER
		ON (CAM.candidate_employee_id = XFER.employee_id
			OR LEFT(CAM.candidate_email,CHARINDEX('@',CAM.candidate_email || '@')-1) = XFER.user_id)
	LEFT JOIN RCT.VW_BU_supervisory_org_coalesce AS SO
		ON XFER.sup_org_ref_id = SO.supervisory_organization_reference_id
	LEFT JOIN RCT.VW_map_workday_cost_centers AS CC
		ON XFER.cost_center_code = CC.code
	LEFT JOIN RCT.VW_map_workday_job_profiles AS JP
		ON XFER.job_code = JP.job_code
	LEFT JOIN RCT.VW_BU_requisition_master AS JR
		ON CAM.requisition_id = JR.requisition_id

WHERE ((CAM.source_category = 'Internal' 
			--AND XFER.worker_sub_type = 'Regular'
		))
	AND JR.worker_sub_type = 'Regular'
	AND (JR.is_ur = 0 OR JR.is_ur IS NULL)
	AND JR.requisition_status_summary = 'Open'
	AND CAM.candidate_stage <> 'Rejected'
	AND CAM.candidate_stage <> 'Declined By Candidate'

UNION ALL

SELECT 'Internal Postings' AS activity_type
	, 'Movement To' AS activity_type
	, NULL AS application_id
	, NULL AS candidate_email
	, JR.requisition_id
	, NULL AS candidate_employee_id
	, NULL AS funnel_activity
	, NULL AS funnel_activity_date
	, NULL AS candidate_name
	, NULL AS source_category
	, NULL AS source
	, NULL AS is_internal
	, NULL AS application_date
	, NULL AS first_recruiter_screen
	, NULL AS first_phone_interview
	, NULL AS first_tech_screen
	, NULL AS first_phone_interview_or_tech_screen
	, NULL AS first_onsite_interview
	, NULL AS first_offer_accept
	, NULL AS last_offer_decline
	, NULL AS candidate_start_date
	, NULL AS first_accept_last_decline
	, NULL AS orphan_offer_requisition_id
	, NULL AS orphan_offer_activity
	, NULL AS orphan_first_accept_last_decline
	, NULL AS orphan_offer_candidate_start_date
	, NULL AS orphan_onsite_requisition_id
	, NULL AS orphan_first_onsite_interview
	, NULL AS orphan_onsite_first_application_date
	, NULL AS req_cand_id
	, NULL AS offering_recruiter
	
	, NULL AS candidate_level_type
	, NULL AS candidate_level_number
	, LEFT(JR.job_level,1) AS job_level_type
	, RIGHT(JR.job_level,1) AS job_level_number
	
	, NULL AS promo_lateral_reset
	
	, JR.data_as_of
	, JR.is_evergreen
	, APPS.active_internal_applications
	, APPS.total_internal_applications
	, NULL AS time_to_fill
	, NULL AS candidate_stage
	, NULL AS job_application_step
	, NULL AS offer_status
	
--Information about "a" side of transaction
	, JR.job_title AS a_job_title
	, JR.hiring_manager AS a_hiring_manager
	, JR.location_city AS a_city
	, JR.job_profile AS a_job_profile
	, JR.job_profile_group AS a_job_profile_group
	, JR.job_category AS a_job_category
	, JR.job_family AS a_job_family
	, JR.job_level AS a_job_level
	, JR.brand AS a_brand
	, JR.cost_center AS a_cost_center
	, JR.management_level AS a_management_level
	, JR.worker_sub_type AS a_worker_sub_type
	, JR.leader AS a_rich_direct
	, JR.leader_direct AS a_rich_direct_L2
	, JR.leader_direct_level_2 AS a_rich_direct_L3
	, JR.division AS a_product_category

--Information about "b" side of transaction
	, NULL AS b_job_title
	, NULL AS b_manager
	, NULL AS b_city
	, NULL AS b_job_profile
	, NULL AS b_job_profile_group
	, NULL AS b_job_category
	, NULL AS b_job_family
	, NULL AS b_job_level
	, NULL AS b_brand
	, NULL AS b_cost_center
	, NULL AS b_management_level
	, NULL AS b_worker_sub_type
	, NULL AS b_rich_direct
	, NULL AS b_rich_direct_l2
	, NULL AS b_rich_direct_l3
	, NULL AS b_product_category

FROM RCT.VW_BU_requisition_master AS JR
	LEFT JOIN (SELECT a.requisition_id
						, SUM(CASE WHEN b.candidate_stage NOT IN ('Rejected', 'Declined By Candidate') THEN 1 ELSE 0 END) AS active_internal_applications
						, SUM(CASE WHEN b.candidate_stage IS NOT NULL THEN 1 ELSE 0 END) AS total_internal_applications
					FROM RCT.VW_MAP_workday_requisitions AS a
							LEFT JOIN RCT.VW_MAP_workday_applications AS b
								ON a.requisition_id = b.requisition_id
								AND b.source_category = 'Internal'
					GROUP BY a.requisition_id) AS APPS
	ON JR.requisition_id = APPS.requisition_id

WHERE JR.worker_sub_type = 'Regular'
	AND (JR.is_ur = 0 OR JR.is_ur IS NULL)
	AND JR.requisition_status_summary = 'Open'
	AND JR.job_posted_internally = 'Yes';
	
	
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


CREATE or replace VIEW VW_BU_TABLEAU_INTERVIEW as 
SELECT  DISTINCT
        
       ivd.ats
      ,ivd.interviewer_employee_id
      ,ivd.interviewer_preferred_name
      ,ivd.interviewer_email
      ,ivd.iv_event_id
      ,ivd.interview_date
	  ,tm.interview_duration
	  ,case ivd.interview_type
	   when 'Phone Interview' then 'Phone Interview & Tech Screen'
	   when 'Tech Screen' then 'Phone Interview & Tech Screen'
	   when 'Coding Assessment Review' then 'Phone Interview & Tech Screen' 
	   else ivd.interview_type
	   end as interview_type
      ,ivd.interview_session_type
	  ,cam.funnel_activity
      ,case ivd.interviewer_rating
	   when 'Yes' then 'Hire'
	   when 'Excellent' then 'Hire'
	   when 'Good' then 'Hire'
	   when 'Fair' then 'Maybe'
	   when 'No' then 'No Hire'
	   when 'Poor' then 'No Hire'
	   when 'NA' then NULL
	   else ivd.interviewer_rating
	   end as interviewer_rating
	  ,case
	   when screen.candidate_name IS NOT NULL then 'Yes'
	   else 'No'
	   end as screened 
	  ,case
	   when ons.candidate_name IS NOT NULL then 'Yes'
	   else 'No'
	   end as reached_onsite 
	  ,cam.first_accept_last_decline
	  ,cam.first_offer_accept
	  ,cam.last_offer_decline
	  ,cam.orphan_first_accept_last_decline
      ,ivd.interviewer_sup_org_id_iv_date as interviewer_sup_org_id
      ,ivd.interviewer_business_title_iv_date as interviewer_business_title
      ,ivd.interviewer_worker_sub_type_iv_date as interviewer_work_sub_type
      ,ivd.interviewer_location_iv_date as interviewer_location
      ,ivd.interviewer_job_profile_iv_date as interviewer_job_profile
      ,ivd.interviewer_management_level_iv_date as interviewer_management_level
      ,ivd.interviewer_job_category_iv_date as interviewer_job_category
	  , CASE
		WHEN CHARINDEX('intern',lower(cast(ivd.interviewer_worker_sub_type_iv_date as varchar))) > 0 THEN 'Intern'
		WHEN ivd.interviewer_worker_sub_type_iv_date NOT IN ('Regular', 'Full-Time', 'Part-Time') THEN 'Contingent Worker'
		WHEN CHARINDEX('sales',lower(cast(ivd.interviewer_job_category_iv_date as varchar))) > 0 THEN 'Sales'
		WHEN ivd.interviewer_job_category_iv_date IS NOT NULL AND lower(cast(ivd.interviewer_job_category_iv_date as varchar)) <> 'university' THEN ivd.interviewer_job_category_iv_date
		ELSE 'Unknown'
		END AS interviewer_job_category_biz_tech_sales
      ,ivd.interviewer_job_family_iv_date as interviewer_job_family
      ,ivd.interviewer_job_level_iv_date as interviewer_job_level
      ,ivd.interviewer_brand_iv_date as interviewer_brand
      ,ivd.interviewer_cost_center_iv_date as interviewer_cost_center
      ,ivd.candidate_email
      ,ivd.candidate_name
      ,ivd.requisition_id
	  ,ivd.iv_date_level_01_name
	  ,ivd.iv_date_level_02_name
	  ,ivd.iv_date_level_03_name
	  ,ivd.iv_date_level_04_name
	  ,ivd.iv_date_level_05_name
	  ,ivd.iv_date_level_06_name
	  ,ivd.iv_date_level_07_name
	  ,ivd.iv_date_level_08_name
	  ,ivd.iv_date_level_09_name
	  ,ivd.iv_date_level_10_name
	  ,cam.source
	  ,cam.source_category
	  ,rqm.job_title as req_job_title
	  ,rqm.initial_job_title as req_initial_job_title
	  ,rqm.worker_sub_type
	  ,rqm.job_family as req_job_family
	  ,rqm.job_level as req_job_level
	  ,rqm.job_profile_group as req_job_profile_group
	  ,rqm.hiring_manager as req_hiring_manager
	  ,rqm.hiring_manager_employee_id
	  , CASE
		WHEN CHARINDEX('intern',lower(cast(rqm.worker_sub_type as varchar))) > 0 THEN 'Intern'
		WHEN rqm.worker_sub_type NOT IN ('Regular', 'Full-Time', 'Part-Time') THEN 'Contingent Worker'
		WHEN CHARINDEX('sales',lower(cast(rqm.job_category as varchar))) > 0 THEN 'Sales'
		WHEN rqm.job_category IS NOT NULL AND lower(cast(rqm.job_category as varchar)) <> 'university' THEN rqm.job_category
		ELSE 'Unknown'
		END AS req_job_category_biz_tech_sales
	  ,rqm.new_or_replacement
	  ,rqm.brand
	  , CASE
			WHEN LEFT(rqm.location_city,6) = 'Remote' OR rqm.location_city = 'National'
				THEN 'Remote'
			WHEN LEFT(RIGHT(rqm.location_city,4),1)= ','
				THEN LEFT(rqm.location_city,Length(rqm.location_city)-4)
			ELSE rqm.location_city
			END AS req_city
	  ,rqm.leader as req_leader
	  ,rqm.leader_direct as req_leader_direct
	  ,rqm.leader_direct_level_2 as req_leader_direct_2
	  ,int_sess.nbr_sessions_with_feedback
	  ,int_sess.nbr_scheduled_sessions
	  ,(int_sess.nbr_scheduled_sessions-int_sess.nbr_sessions_with_feedback) as nbr_sessions_with_no_feedback

  FROM rct.vw_bu_interview_details ivd
  LEFT JOIN rct.vw_bu_requisition_master rqm
	ON ivd.requisition_id = rqm.requisition_id
  LEFT JOIN  rct.vw_bu_candidate_activity_master cam
	ON cam.interview_id = ivd.iv_event_id
  LEFT JOIN (SELECT wid.interviewer_employee_id,wid.interview_event_workday_id,DATEDIFF('minute',cast(wid.interview_start_date_with_time_zone as TIMESTAMP_TZ),cast(wid.interview_end_date_with_time_zone as TIMESTAMP_TZ)) as interview_duration
			 FROM rct.vw_bu_workday_interview_details wid) tm
	ON tm.interview_event_workday_id = ivd.iv_event_id
	AND tm.interviewer_employee_id = ivd.interviewer_employee_id
  --Check recruiting within recruiting
  LEFT JOIN (SELECT cam.candidate_email,cam.candidate_name,cam.candidate_employee_id,cam.interview_id, funnel_activity
			 FROM rct.vw_bu_candidate_activity_master cam
			 INNER JOIN (SELECT wae.preferred_name,employee_id,email,hire_date
						  FROM rct.vw_map_workday_active_employee wae
						  LEFT JOIN rct.vw_map_workday_supervisory_orgs wso
						  ON wae.sup_org_ref_id=wso.supervisory_organization_reference_id
						  WHERE wso.level_05_name ='Annie Rihn'
						  AND wae.active_status='Yes') recruiting
			  ON recruiting.employee_id=cam.candidate_employee_id
			 WHERE funnel_activity IN ('Phone Interview','Recruiter Screen','Tech Screen','Onsite Interview','Coding Assessment Review')
			 AND funnel_activity_date between cast('2017-01-01'as date) and to_timestamp(CURRENT_TIMESTAMP)) recruiting
	ON recruiting.interview_id=ivd.iv_event_id

  --Identify volume of interviewers and volume of feedback submitted
  LEFT JOIN (SELECT f0.iv_event_id
			   ,SUM(CASE WHEN f0.interviewer_rating IS NOT NULL THEN 1 ELSE 0 END) AS nbr_sessions_with_feedback 
			   ,COUNT(*) AS nbr_scheduled_sessions
				FROM rct.vw_bu_interview_details  AS f0
				WHERE f0.interview_session_type <> 'Lunch' OR f0.interview_session_type IS NULL
				GROUP By f0.iv_event_id) AS int_sess
		ON ivd.iv_event_id = int_sess.iv_event_id
	--Onsite Identifier
  LEFT JOIN (SELECT DISTINCT ivd.ats,ivd.interview_type,ivd.candidate_email,ivd.candidate_name,ivd.requisition_id
			 FROM rct.vw_bu_interview_details ivd
			 WHERE ivd.interview_type='Onsite Interview'
			 AND (UPPER(ivd.interview_session_type) NOT IN ('LUNCH') OR ivd.interview_session_type IS NULL)
			 AND interview_date between cast('2017-01-01'as date) and to_timestamp(CURRENT_TIMESTAMP)) ons
	ON ons.requisition_id=ivd.requisition_id
	AND ons.candidate_name=ivd.candidate_name
	AND ons.candidate_email=ivd.candidate_email
	--Phone & Tech Screen Identifier
  LEFT JOIN (SELECT DISTINCT ivd.ats,ivd.interview_type,ivd.candidate_email,ivd.candidate_name,ivd.requisition_id
			 FROM rct.vw_bu_interview_details ivd
			 WHERE ivd.interview_type IN ('Phone Interview','Tech Screen','Coding Assessment Review')
			 AND (UPPER(ivd.interview_session_type) NOT IN ('LUNCH') OR ivd.interview_session_type IS NULL)
			 AND interview_date between cast('2017-01-01'as date) and to_timestamp(CURRENT_TIMESTAMP)) screen
	ON screen.requisition_id=ivd.requisition_id
	AND screen.candidate_name=ivd.candidate_name
	AND screen.candidate_email=ivd.candidate_email

  WHERE
  ivd.interview_date between cast('2017-01-01'as date) and to_timestamp(CURRENT_TIMESTAMP)
  and (UPPER(ivd.interview_session_type) NOT IN ('LUNCH') OR ivd.interview_session_type IS NULL)
  and ivd.interview_type IS NOT NULL 
  and recruiting.interview_id IS NULL;

select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


CREATE OR REPLACE VIEW VW_BU_TABLEAU_MASTER as
WITH all_up AS (
		SELECT (SELECT TOP 1 data_as_of FROM rct.vw_map_workday_requisitions AS d) AS data_as_of
			, 'Candidate Activity' AS activity_type
			, a.candidate_email
			, a.requisition_id
			, a.funnel_activity
			, cast(a.funnel_activity_date as date) as funnel_activity_date
			, a.candidate_name
			, a.source_category
			, a.source
			, a.application_id
			, a.req_cand_id
			, a.activity_order
			, a.application_date
			, a.first_recruiter_screen
			, a.first_phone_interview
			, a.first_tech_screen
			, a.first_phone_interview_or_tech_screen
			, a.first_onsite_interview
			, a.first_offer_accept
			, a.last_offer_decline
			, a.first_accept_last_decline
			, a.candidate_start_date
			, NULL AS candidate_stage
			, NULL AS job_application_step
			, NULL AS business_process_step
			, NULL AS offer_status
			, a.requisition_id AS open_headcount_match_id
			, a.interview_has_feedback
			, a.orphan_offer_requisition_id
			, a.orphan_offer_activity
			, a.orphan_first_accept_last_decline
			, a.orphan_offer_candidate_start_date
			, a.orphan_onsite_requisition_id
			, a.orphan_first_onsite_interview
			, a.orphan_onsite_first_application_date
			, a.offer_decline_reason
			, a.candidate_employee_id
		FROM rct.vw_bu_candidate_activity_master AS a

		UNION ALL

		SELECT b.data_as_of
			, 'Open Headcount' AS activity_type
			, a.candidate_email
			, a.requisition_id
			, 'Current Pipeline' AS funnel_activity
			, cast(b.data_as_of as date) AS funnel_activity_date
			, a.candidate_name
			, a.source_category
			, a.source
			, a.workday_application_id AS application_id
			, NULL AS req_cand_id
			, NULL AS activity_order
			, a.funnel_activity_date AS application_date
			, NULL AS first_recruiter_screen
			, NULL AS first_phone_interview
			, NULL AS first_tech_screen
			, NULL AS first_phone_interview_or_tech_screen
			, NULL AS first_onsite_interview
			, a.first_accept_or_rfh_date AS first_offer_accept
			--, c.funnel_activity_date AS first_offer_accept
			, NULL AS last_offer_decline
			, NULL AS first_accept_last_decline
			, a.candidate_start_date
			, a.candidate_stage
			, a.job_application_step
			, a.business_process_step
			, a.offer_status
			, a.requisition_id AS open_headcount_match_id
			, NULL AS interview_has_feedback
			, NULL AS orphan_offer_requisition_id
			, NULL AS orphan_offer_activity
			, NULL AS orphan_first_accept_last_decline
			, NULL AS orphan_offer_candidate_start_date
			, NULL AS orphan_onsite_requisition_id
			, NULL AS orphan_first_onsite_interview
			, NULL AS orphan_onsite_first_application_date
			, NULL AS offer_decline_reason
			, a.candidate_employee_id
		FROM rct.vw_map_workday_applications AS a
			INNER JOIN rct.vw_map_workday_requisitions AS b
				ON a.requisition_id = b.requisition_id
				AND b.job_requisition_status IN ('Open', 'Frozen')
			--LEFT JOIN all_offer_accepts AS c
			--	ON a.workday_application_id = c.workday_application_id
		WHERE a.candidate_stage NOT IN ('Rejected', 'Declined by Candidate')

		UNION ALL

		SELECT a.data_as_of
			, 'Open Headcount' AS activity_type
			, NULL AS candidate_email
			, a.requisition_id
			, 'Open and Frozen Requisitions' AS funnel_activity
			, cast(a.data_as_of as date) AS funnel_activity_date
			, NULL AS candidate_name
			, NULL AS source_category
			, NULL AS source
			, NULL AS application_id
			, NULL AS req_cand_id
			, NULL AS activity_order
			, NULL AS application_date
			, NULL AS first_recruiter_screen
			, NULL AS first_phone_interview
			, NULL AS first_tech_screen
			, NULL AS first_phone_interview_or_tech_screen
			, NULL AS first_onsite_interview
			, NULL AS first_offer_accept
			, NULL AS last_offer_decline
			, NULL AS first_accept_last_decline
			, NULL AS candidate_start_date
			, NULL AS candidate_stage
			, NULL AS job_application_step
			, NULL AS business_process_step
			, NULL AS offer_status
			, a.requisition_id AS open_headcount_match_id
			, NULL AS interview_has_feedback
			, NULL AS orphan_offer_requisition_id
			, NULL AS orphan_offer_activity
			, NULL AS orphan_first_accept_last_decline
			, NULL AS orphan_offer_candidate_start_date
			, NULL AS orphan_onsite_requisition_id
			, NULL AS orphan_first_onsite_interview
			, NULL AS orphan_onsite_first_application_date
			, NULL AS offer_decline_reason
			, NULL AS candidate_employee_id
		FROM rct.vw_map_workday_requisitions AS a
			--requisition_master AS a
		WHERE a.job_requisition_status IN ('Open', 'Frozen')
			--a.requisition_status_summary IN ('Open', 'Frozen')
			--AND a.ats IN ('Workday', 'Clear')

		UNION ALL

		SELECT a.data_as_of
			, 'Open Headcount' AS activity_type
			, NULL AS candidate_email
			, a.requisition_id
			, 'New Requisitions' AS funnel_activity
			, cast(a.data_as_of as date) AS funnel_activity_date
			, NULL AS candidate_name
			, NULL AS source_category
			, NULL AS source
			, NULL AS application_id
			, NULL AS req_cand_id
			, NULL AS activity_order
			, NULL AS application_date
			, NULL AS first_recruiter_screen
			, NULL AS first_phone_interview
			, NULL AS first_tech_screen
			, NULL AS first_phone_interview_or_tech_screen
			, NULL AS first_onsite_interview
			, NULL AS first_offer_accept
			, NULL AS last_offer_decline
			, NULL AS first_accept_last_decline
			, NULL AS candidate_start_date
			, NULL AS candidate_stage
			, NULL AS job_application_step
			, NULL AS business_process_step
			, NULL AS offer_status
			, a.open_headcount_match_id
			, NULL AS interview_has_feedback
			, NULL AS orphan_offer_requisition_id
			, NULL AS orphan_offer_activity
			, NULL AS orphan_first_accept_last_decline
			, NULL AS orphan_offer_candidate_start_date
			, NULL AS orphan_onsite_requisition_id
			, NULL AS orphan_first_onsite_interview
			, NULL AS orphan_onsite_first_application_date
			, NULL AS offer_decline_reason
			, NULL AS candidate_employee_id
		FROM rct.vw_bu_requisition_master AS a
		WHERE a.recruiting_start_date >= '20170101'

		UNION ALL

		SELECT a.data_as_of AS data_as_of
			, 'Open Headcount' AS activity_type
			, NULL AS candidate_email
			, NULL AS requisition_id
			, CASE WHEN a.ats = 'Approved Unopened' THEN 'Approved Unopened Headcount' 
				WHEN a.ats = 'Requested Headcount' THEN a.ats
				END AS funnel_activity
			, cast(a.data_as_of as date) AS funnel_activity_date
			, NULL AS candidate_name
			, NULL AS source_category
			, NULL AS source
			, NULL AS application_id
			, NULL AS req_cand_id
			, NULL AS activity_order
			, NULL AS application_date
			, NULL AS first_recruiter_screen
			, NULL AS first_phone_interview
			, NULL AS first_tech_screen
			, NULL AS first_phone_interview_or_tech_screen
			, NULL AS first_onsite_interview
			, NULL AS first_offer_accept
			, NULL AS last_offer_decline
			, NULL AS first_accept_last_decline
			, NULL AS candidate_start_date
			, NULL AS candidate_stage
			, NULL AS job_application_step
			, NULL AS business_process_step
			, NULL AS offer_status
			, concat('AU-', a.position_id)  AS open_headcount_match_id
			, NULL AS interview_has_feedback
			, NULL AS orphan_offer_requisition_id
			, NULL AS orphan_offer_activity
			, NULL AS orphan_first_accept_last_decline
			, NULL AS orphan_offer_candidate_start_date
			, NULL AS orphan_onsite_requisition_id
			, NULL AS orphan_first_onsite_interview
			, NULL AS orphan_onsite_first_application_date
			, NULL AS offer_decline_reason
			, NULL AS candidate_employee_id
		FROM rct.vw_bu_requisition_master AS a
			WHERE (ats = 'Approved Unopened'
				OR ats = 'Requested Headcount')
	)

SELECT a.data_as_of
	, a.activity_type
	, a.candidate_email
	, a.requisition_id
	, a.funnel_activity
	, a.funnel_activity_date
	, a.candidate_name
	, CASE
			WHEN b.worker_sub_type NOT IN ('Full-Time','Part-Time','Regular')
				AND a.source_category = 'Internal' THEN NULL
			ELSE a.source_category
		END AS source_category
	, CASE
			WHEN b.worker_sub_type NOT IN ('Full-Time','Part-Time','Regular')
				AND a.source_category = 'Internal' THEN NULL
			ELSE a.source
		END AS source
	, a.application_id
	, a.req_cand_id
	, a.activity_order
	, a.application_date
	, a.first_recruiter_screen
	, a.first_phone_interview
	, a.first_tech_screen
	, a.first_phone_interview_or_tech_screen
	, a.first_onsite_interview
	, a.first_offer_accept
	, a.last_offer_decline
	, a.first_accept_last_decline
	, a.candidate_start_date
	, a.interview_has_feedback
	, a.orphan_offer_requisition_id
	, a.orphan_offer_activity
	, a.orphan_first_accept_last_decline
	, a.orphan_offer_candidate_start_date
	, a.orphan_onsite_requisition_id
	, a.orphan_first_onsite_interview
	, a.candidate_stage
	, a.job_application_step
	, a.business_process_step
	, a.offer_status
	, b.requisition_status
	, b.requisition_status_summary
	, b.job_title
	, b.job_profile
	, b.hiring_manager
	, b.brand
	, b.cost_center
	, b.division
--	, CASE
--		WHEN b.is_zhl = 1 THEN '02 Mortgage (MLOA)'
--		WHEN b.is_zo = 1 THEN '09 Zillow Offers'
----		WHEN b.requisition_status_summary IN ('Open', 'Frozen') THEN position_current_division
--		ELSE b.division
--		END AS division
	, b.job_family
	, b.job_level
	, b.new_or_replacement
	, b.location_name
	, b.location_city
	, b.recruiting_start_date
	, b.is_evergreen
	, b.location_state_code
	, b.primary_recruiters
	, b.primary_recruiters_managers
	, b.primary_recruiters_recruiting_leaders
	, b.country
	, b.job_posted_externally
	, b.position_id
	, b.anaplan_headcount_id
	, b.company
	, b.management_level
	, b.is_ur
	, b.is_zhl
	, b.is_zo
	/** DERIVED DIMENSIONS **/
	, CASE
			WHEN b.replacement_for_worker IS NOT NULL
				THEN concat('Backfill for ' , REPLACE(cast(replacement_for_worker as varchar), ' (Terminated)',''))
			WHEN a.funnel_activity = 'Requested Headcount' 
					THEN 'Requested'
			WHEN a.funnel_activity = 'Approved Unopened Headcount' AND
				(b.new_unopen_date_available <= a.data_as_of OR b.new_unopen_date_available IS NULL)
				THEN 'Available'
			WHEN a.funnel_activity = 'Approved Unopened Headcount' AND b.new_unopen_date_available > a.data_as_of THEN 'Future Available'
			ELSE ''
		END AS approved_unopened_position_detail
	, CASE
			WHEN b.replacement_for_worker IS NOT NULL
				THEN 'Backfill'
			WHEN a.funnel_activity = 'Requested Headcount' 
					THEN 'Requested'
			WHEN a.funnel_activity = 'Approved Unopened Headcount' AND
				(b.new_unopen_date_available <= a.data_as_of OR b.new_unopen_date_available IS NULL)
				THEN 'Available'
			WHEN a.funnel_activity = 'Approved Unopened Headcount' AND b.new_unopen_date_available > a.data_as_of THEN 'Future Available'
			END AS approved_unopened_new_or_replacement
	, b.new_unopen_date_available
			
	, CASE
			WHEN LEFT(b.location_name,6) = 'Remote' OR b.location_city IS NULL
				THEN 'Remote'
			ELSE b.location_city
			END AS city
	, CASE
			WHEN LEFT(b.location_name,6) = 'Remote' OR b.location_city IS NULL
				THEN 'ZRemote'
			ELSE b.location_city
			END AS city_sort
	, CASE
			WHEN b.worker_sub_type IN ('Full-Time','Part-Time','Regular') THEN 'Employee'
			WHEN CHARINDEX('intern',lower(cast(b.worker_sub_type as varchar)))>0 THEN 'Intern'
			WHEN b.worker_sub_type IS NULL 
				AND (funnel_activity = 'Approved Unopened Headcount'
						OR funnel_activity = 'Requested Headcount') THEN 'Employee'
			ELSE 'Contingent Worker'
			END AS worker_type
	, CASE
			WHEN a.offer_status = 'Offer Accepted' THEN a.offer_status
			WHEN a.candidate_stage = 'Interview' THEN a.job_application_step
			WHEN a.candidate_stage = 'Screen' THEN 'Hiring Manager Review'
			ELSE a.candidate_stage
			END AS current_candidate_status
	, CASE
			WHEN b.hiring_manager IS NOT NULL 
				THEN concat('Hiring Manager ',b.hiring_manager)
			END AS hiring_manager_text
	, CASE 
			WHEN a.funnel_activity IN ('Recruiter Screen', 'Tech Screen', 'Phone Interview', 'Onsite Interview')
				THEN 'Interview / Screen'
			END AS interview_or_screen
	, CASE 
			WHEN a.funnel_activity IN ('Recruiter Screen', 'Tech Screen', 'Phone Interview', 'Onsite Interview')
				THEN a.funnel_activity_date
			END AS interview_screen_date
	, CASE 
			WHEN a.funnel_activity IN ('Recruiter Screen', 'Tech Screen', 'Phone Interview', 'Onsite Interview')
				THEN a.funnel_activity
			END AS interview_type
	, CASE
			WHEN CHARINDEX('intern',lower(cast(b.worker_sub_type as varchar))) > 0 THEN 'Intern'
			WHEN b.worker_sub_type NOT IN ('Regular', 'Full-Time', 'Part-Time') THEN 'Contingent Worker'
			WHEN CHARINDEX('sales',lower(cast(b.job_category as varchar))) > 0 THEN 'Sales'
			WHEN b.job_category IS NOT NULL AND lower(cast(b.job_category as varchar)) <> 'university' THEN b.job_category
			ELSE 'Unknown'
			END AS job_category_biz_tech_sales
	, CASE
			WHEN CHARINDEX('intern',lower(cast(b.worker_sub_type as varchar))) > 0 THEN 'ZZIntern'
			WHEN b.worker_sub_type NOT IN ('Regular', 'Full-Time', 'Part-Time') THEN 'ZZContingent Worker'
			WHEN CHARINDEX('sales',lower(cast(b.job_category as varchar))) > 0 THEN 'Sales'
			WHEN b.job_category IS NOT NULL AND lower(cast(b.job_category as varchar)) <> 'university' THEN b.job_category
			ELSE 'ZZUnknown'
			END AS job_category_sort
	, CASE
			WHEN a.funnel_activity IN ('Offer Accepted', 'Offer Declined') 
				THEN a.funnel_activity
			END AS offer_accept_decline
	, CASE
			WHEN a.funnel_activity IN ('Offer Accepted', 'Offer Declined') 
				THEN a.funnel_activity_date
			END AS offer_accept_decline_date
	, CASE
			WHEN a.funnel_activity = 'Offer Accepted'
				THEN a.funnel_activity
			END AS offer_accept_label
	, CASE
			WHEN a.funnel_activity = 'Offer Declined'
				THEN a.funnel_activity
			END AS offer_decline_label
	, CASE
			WHEN b.requisition_status_summary IN ('Open', 'Frozen')
				THEN CASE
						WHEN b.is_evergreen = 'Yes' THEN concat(b.requisition_status_summary , ' - Evergreen')
						WHEN LEFT(b.requisition_status,6) = 'Open -' THEN 'Pending Start'
						ELSE b.requisition_status
					END
			END AS open_req_status
	, CASE
			WHEN a.funnel_activity IN ('Job Application', 'Recruiter Screen', 'Tech Screen', 'Phone Interview', 'Onsite Interview')
				AND COALESCE(cast(a.first_offer_accept as varchar),cast(a.last_offer_decline as varchar)) IS NOT NULL
				THEN 'Yes' 
				ELSE '' 
			END AS reached_offer
	, CASE
			WHEN a.funnel_activity IN ('Job Application', 'Recruiter Screen', 'Tech Screen', 'Phone Interview')
				AND a.first_onsite_interview >= a.funnel_activity_date
				THEN 'Yes' 
				ELSE '' 
			END AS reached_onsite
	, CASE
			WHEN b.replacement_for_worker IS NOT NULL
				THEN concat(CHAR(10), 'Backfill for ' ,b.replacement_for_worker)
			END AS replacement_for_text
	, UPPER(cast(a.source_category as varchar)) AS label_source_category
	, CASE 
			WHEN CHARINDEX('inactive',b.job_profile) > 0
				THEN 'Inactive Job Profiles' 
			WHEN CHARINDEX(b.job_level,b.job_profile) > 0 
				THEN LEFT(b.job_profile,charindex(concat(' ',b.job_level),b.job_profile)) 
			ELSE b.job_profile
			END AS job_profile_group

	/** SUPERVISORY ORG **/
	, c.level_01_name
	, c.level_01_user_id
	, c.level_02_name
	, c.level_02_user_id
	, c.level_03_name
	, c.level_03_user_id
	, c.level_04_name
	, c.level_04_user_id
	, c.level_05_name
	, c.level_05_user_id
	, c.level_06_name
	, c.level_06_user_id
	, c.level_07_name
	, c.level_07_user_id
	, c.level_08_name
	, c.level_08_user_id
	, c.level_09_name
	, c.level_09_user_id
	, c.level_10_name
	, c.level_10_user_id
	, c.supervisory_manager
	, c.supervisory_manager_user_id

	/****** ACTIVITY COUNT FORMULAS ******/
	, CASE
			WHEN a.funnel_activity = 'Job Application'
				THEN 1
				ELSE 0
				END AS job_application_count
	, CASE
			WHEN a.funnel_activity = 'Recruiter Screen' THEN 1
				ELSE 0
				END AS recruiter_screen_count
	, CASE
			WHEN a.funnel_activity = 'Phone Interview' THEN 1
				ELSE 0
				END AS phone_interview_count
	, CASE
			WHEN a.funnel_activity = 'Tech Screen' THEN 1
				ELSE 0
				END AS tech_screen_count
	, CASE
			WHEN a.funnel_activity IN ('Phone Interview', 'Tech Screen') THEN 1
				ELSE 0
				END AS phone_interview_or_tech_screen_count
	, CASE
			WHEN a.funnel_activity = 'Onsite Interview' THEN 1
				ELSE 0
				END AS onsite_interview_count
	, CASE
			WHEN a.funnel_activity = 'Offer Accepted'
				THEN 1
				ELSE 0
				END AS offer_accepted_count
	, CASE
			WHEN a.funnel_activity = 'Offer Declined'
				THEN 1
				ELSE 0
				END AS offer_declined_count
	, CASE
			WHEN a.funnel_activity IN ('Offer Accepted','Offer Declined') 
				THEN 1
				ELSE 0
				END AS offer_count
	, CASE
			WHEN a.funnel_activity IN ('Recruiter Screen', 'Phone Interview', 'Tech Screen', 'Onsite Interview') THEN 1
				ELSE 0
				END AS screen_or_interview_count
	, CASE
			WHEN a.funnel_activity = 'Open and Frozen Requisitions'
				THEN 1
				END AS open_and_frozen_requisition_count
	, CASE
			WHEN a.funnel_activity = 'Open and Frozen Requisitions'
					AND	b.requisition_status = 'Open'
				THEN 1
				ELSE 0
				END AS open_requisition_count
	, CASE
			WHEN a.funnel_activity = 'Open and Frozen Requisitions'
					AND	b.requisition_status IN ('Open - Offer Accepted','Open - Pending Start')
				THEN 1
				ELSE 0
				END AS pending_start_count
	, CASE
			WHEN a.funnel_activity = 'Approved Unopened Headcount'
				THEN 1
				END AS approved_unopened_count
	, CASE
			WHEN a.funnel_activity = 'Approved Unopened Headcount'
				THEN 1
				ELSE 0
				END AS headline_approved_unopened
	, CASE
			WHEN a.funnel_activity = 'Requested Headcount'
				THEN 1
				END AS requested_count
	, CASE
			WHEN a.funnel_activity = 'Requested Headcount'
				THEN 1
				ELSE 0
				END AS headline_requested
	, CASE
			WHEN a.funnel_activity = 'Open and Frozen Requisitions'
					AND	b.requisition_status = 'Open'
					AND NOT(b.is_evergreen = 'Yes')
				THEN 1
				ELSE 0
				END AS open_requisitions_excl_evergreen_count
	, CASE
			WHEN a.funnel_activity = 'Open and Frozen Requisitions'
				AND job_posted_externally = 'Yes'
				THEN 1
				END AS external_posting_count
	, CASE
			WHEN a.funnel_activity = 'Offer Accepted'
					AND CHARINDEX('internal',LOWER(cast(a.source_category as varchar))) >0
				THEN 1
				ELSE 0
				END AS internal_mobility_offer_accepted_count

	/** CYCLE TIMES **/
	, CASE
			WHEN a.funnel_activity = 'Offer Accepted'
					AND (a.orphan_onsite_first_application_date < a.application_date OR a.application_date IS NULL)
				THEN DATEDIFF(day,cast(a.orphan_onsite_first_application_date as date),cast(a.funnel_activity_date as date))
			WHEN a.funnel_activity = 'Offer Accepted'
					AND a.application_date IS NOT NULL
					AND a.application_date <= a.funnel_activity_date
				THEN DATEDIFF(day,cast(a.application_date as date),cast(a.funnel_activity_date as date)) 
				END AS days_offer_accept_from_application
	, CASE
			WHEN a.funnel_activity = 'Offer Accepted'
					AND COALESCE(a.first_onsite_interview, a.orphan_first_onsite_interview) IS NOT NULL
					AND COALESCE(a.first_onsite_interview, a.orphan_first_onsite_interview) <= a.funnel_activity_date
				THEN DATEDIFF(day, cast(COALESCE(a.first_onsite_interview, a.orphan_first_onsite_interview) as date),a.funnel_activity_date) 
				END AS days_offer_accept_from_first_onsite
	, CASE
			WHEN a.funnel_activity = 'Onsite Interview'
					AND a.activity_order = 1
					AND a.application_date IS NOT NULL
					AND a.application_date <= a.funnel_activity_date
				THEN DATEDIFF(day,cast(a.application_date as date),cast(a.funnel_activity_date as date)) 
				END AS days_first_onsite_from_application
	, CASE
			WHEN a.funnel_activity = 'Onsite Interview'
					AND a.activity_order = 1
					AND a.first_phone_interview IS NOT NULL
					AND a.first_phone_interview <= a.funnel_activity_date
				THEN DATEDIFF(day,cast(a.first_phone_interview as date),cast(a.funnel_activity_date as date)) 
				END AS days_first_onsite_from_phone_interview
	, CASE
			WHEN a.funnel_activity = 'Onsite Interview'
					AND a.activity_order = 1
					AND a.first_recruiter_screen IS NOT NULL
					AND a.first_recruiter_screen <= a.funnel_activity_date
				THEN DATEDIFF(day,cast(a.first_recruiter_screen as date),cast(a.funnel_activity_date as date)) 
				END AS days_first_onsite_from_recruiter_screen
	, CASE
			WHEN a.funnel_activity = 'Onsite Interview'
					AND a.activity_order = 1
					AND a.first_tech_screen IS NOT NULL
					AND a.first_tech_screen <= a.funnel_activity_date
				THEN DATEDIFF(day,cast(a.first_tech_screen as date),cast(a.funnel_activity_date as date)) 
				END AS days_first_onsite_from_tech_screen
	, CASE
			WHEN a.funnel_activity = 'Onsite Interview'
					AND a.activity_order = 1
					AND a.first_phone_interview_or_tech_screen IS NOT NULL
					AND a.first_phone_interview_or_tech_screen <= a.funnel_activity_date
				THEN DATEDIFF(day,cast(a.first_phone_interview_or_tech_screen as date),cast(a.funnel_activity_date as date)) 
				END AS days_first_onsite_from_phone_interview_or_tech_screen
	, CASE
			WHEN a.funnel_activity = 'Recruiter Screen'
					AND a.activity_order = 1
					AND a.application_date IS NOT NULL
					AND a.application_date <= a.funnel_activity_date
				THEN DATEDIFF(day,cast (a.application_date as date),cast(a.funnel_activity_date as date)) 
				END AS days_first_recruiter_screen_from_application
	/****** TIME OPEN AND TTF ******/
	, CASE
			WHEN b.requisition_status = 'Open'
					AND a.funnel_activity = 'Open and Frozen Requisitions'
					AND NOT(b.is_evergreen = 'Yes')
				THEN DATEDIFF(day,cast(b.recruiting_start_date as date),cast(a.data_as_of as date))
				END AS requisition_days_open_excl_evergreen
	, CASE
			WHEN b.requisition_status = 'Open'
					AND a.funnel_activity = 'Open and Frozen Requisitions'
				THEN DATEDIFF(day,cast(b.recruiting_start_date as date),cast(a.data_as_of as date))
				END AS requisition_days_open
	, CASE
			WHEN a.funnel_activity = 'Offer Accepted' 
					AND a.application_date < b.recruiting_start_date
				THEN DATEDIFF(day,cast(a.application_date as date),cast(a.funnel_activity_date as date))
			WHEN a.funnel_activity = 'Offer Accepted'
					AND a.application_date>= b.recruiting_start_date
				THEN DATEDIFF(day,cast(b.recruiting_start_date as date),cast(a.funnel_activity_date as date))
			END AS time_to_fill
	/****** ACTIVITY DATE DIMENSIONS ******/
	, CAST(DATEADD(month,DATEDIFF(month,'19990101',cast(a.funnel_activity_date as date)),'19990101')AS Date) 
			AS funnel_activity_month
	, concat(LEFT(MONTHNAME(cast(a.funnel_activity_date as date)),3),' ',YEAR(a.funnel_activity_date)) 
			AS funnel_activity_month_name
	, concat(YEAR(a.funnel_activity_date), Right(concat('00',CAST(DATE_PART(month,a.funnel_activity_date) AS VARCHAR)),2) )
			AS funnel_activity_month_sort
	, CAST(DATEADD(quarter,DATEDIFF(QUARTER,'19990101',a.funnel_activity_date),'19990101') AS date) 
			AS funnel_activity_quarter
	, concat(YEAR(a.funnel_activity_date),' Q',QUARTER(a.funnel_activity_date)) 
			AS funnel_activity_quarter_name
	, CAST(DATEADD(WEEK, DATEDIFF(WEEK,'0',DATEADD(DAY,'-1',a.funnel_activity_date)), '0') AS Date) 
			AS funnel_activity_week
	, concat(Left(MONTHNAME(DATEADD(WEEK, DATEDIFF(WEEK,'0',DATEADD(DAY,'-1',a.funnel_activity_date)), '0')),'3'),
				' ',DAY(DATEADD(WEEK, DATEDIFF(WEEK,'0',DATEADD(DAY,'-1',a.funnel_activity_date)), '0'))
				, ' - ' , Left(MONTHNAME(DATEADD(DAY,'6',DATEADD(WEEK, DATEDIFF(WEEK,'0',DATEADD(DAY,'-1',a.funnel_activity_date)), '0'))),'3')
				, ' ', DAY(DATEADD(DAY,'6',DATEADD(WEEK, DATEDIFF(WEEK,'0',DATEADD(DAY,'-1',a.funnel_activity_date)), '0')))
				, ' ', YEAR(DATEADD(DAY,'6',DATEADD(WEEK, DATEDIFF(WEEK,'0',DATEADD(DAY,'-1',a.funnel_activity_date)),' 0'))))
			AS funnel_activity_week_name
	, TO_VARCHAR(DATEADD(WEEK, DATEDIFF(WEEK,'0',DATEADD(DAY,'-1',a.funnel_activity_date)), '0'), '112')
			AS funnel_activity_week_sort
	, CAST(DATEADD(year,DATEDIFF(year,'19990101',a.funnel_activity_date),'19990101') AS date) 
			AS funnel_activity_year
	, YEAR(a.funnel_activity_date) 
			AS funnel_activity_year_name
	/****** RECAP DATE DATA ******/
	, d.data_as_of_year
	, d.data_as_of_year_start
	, d.last_completed_month_start
	, d.last_completed_quarter_start
	, d.last_completed_quarter_number
	, d.last_year_data_as_of_date
	, d.last_year_data_as_of_year
	, d.last_year_start
	, CASE 
			WHEN a.funnel_activity_date BETWEEN d.data_as_of_year_start AND d.data_as_of_date
			THEN 1
			ELSE 0
			END AS is_ytd
	, CASE 
			WHEN a.funnel_activity_date BETWEEN d.last_year_start AND d.last_year_data_as_of_date
			THEN 1
			ELSE 0
			END AS is_py_ytd
	, CASE
			WHEN a.funnel_activity_date BETWEEN d.data_as_of_year_start AND d.data_as_of_date
				OR a.funnel_activity_date BETWEEN d.last_year_start AND d.last_year_data_as_of_date
			THEN 1
			ELSE 0
			END AS is_yoy_ytd
	/****** NEW REQUISITIONS MEASURES ******/
	, CASE
			WHEN a.funnel_activity = 'New Requisitions' AND (b.is_evergreen IS NULL OR b.is_evergreen = 'No')
			THEN 1
			END AS new_requisition_count_excl_evergreen
	, CASE
			WHEN a.funnel_activity = 'New Requisitions' 
			THEN 1
			END AS new_requisition_count
	, a.offer_decline_reason
	, a.candidate_employee_id
FROM all_up AS a
	LEFT JOIN rct.vw_bu_data_as_of_dates AS d
		ON a.data_as_of = d.data_as_of_date
	LEFT JOIN rct.vw_bu_requisition_master AS b
		ON a.open_headcount_match_id = b.open_headcount_match_id
	LEFT JOIN rct.vw_bu_supervisory_org_coalesce AS c
		ON b.sup_org_ref_id = c.supervisory_organization_reference_id;
			
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


CREATE OR REPLACE VIEW VW_BU_TABLEAU_RECRUITER_METRICS as
	WITH data_as_of AS (
		SELECT MAX(a.data_as_of) AS data_as_of_date
			, MAX(b.working_day_running) AS data_as_of_day_running
		FROM rct.vw_bu_all_recruiters AS a
			INNER JOIN rct.vw_daily_calendar AS b
			ON a.data_as_of = b.calendar_day
		)
	
	, calendar_dates AS (

		SELECT a.calendar_day
		, a.working_day_running
		,DATEADD('day',1,last_day(ADD_MONTHS(a.calendar_day,-1))) AS month_start --get beginning of calendar_month
		, last_day(a.calendar_day) AS month_end --get end of calendar month
		, b.biz_month_start
		, b.biz_month_end
		, b.first_biz_day_running
		, b.last_biz_day_running
		, c.biz_day_plus_5
		, c.biz_day_plus_5_running
		, d.biz_day_plus_10
		, d.biz_day_plus_10_running
		, e.biz_day_plus_20
		, e.biz_day_plus_20_running
		, f.biz_day_minus_5
		, f.biz_day_minus_5_running
		, g.biz_day_minus_10
		, g.biz_day_minus_10_running
		, h.biz_day_minus_20
		, h.biz_day_minus_20_running
		FROM rct.vw_daily_calendar AS a
	    INNER JOIN (SELECT YEAR(calendar_day) calendar_day_yr,
		                   MONTH(calendar_day) calendar_day_month,
								MIN(b0.calendar_day) AS biz_month_start --get first day of the month that is not a weekend or holiday
								, MIN(b0.working_day_running) AS first_biz_day_running
								, MAX(b0.calendar_day) AS biz_month_end --get last day of the month that is not a weekend or holiday
								, MAX(b0.working_day_running) AS last_biz_day_running
							FROM rct.vw_daily_calendar AS b0
							WHERE
							b0.is_weekend = 0
								AND b0.is_holiday = 0
						    GROUP BY 1,2) AS b
		ON YEAR(a.calendar_day)=calendar_day_yr and MONTH(a.calendar_day)=calendar_day_month
		LEFT JOIN (SELECT working_day_running-5 as workingdayminus5,
		                  MAX(c0.calendar_day) AS biz_day_plus_5,
						  MAX(c0.working_day_running) AS biz_day_plus_5_running
						  FROM rct.vw_daily_calendar AS c0
				   GROUP BY 1) AS c
		ON a.working_day_running=c.workingdayminus5
		LEFT JOIN (SELECT d0.working_day_running - 10 as workingdayminus10,
						  MAX(d0.calendar_day) AS biz_day_plus_10,
						  MAX(d0.working_day_running) AS biz_day_plus_10_running
				   FROM rct.vw_daily_calendar AS d0
				   GROUP BY 1 ) AS d
		ON a.working_day_running=d.workingdayminus10
		LEFT JOIN (SELECT e0.working_day_running - 20 as workingdayminus20,
						  MAX(e0.calendar_day) AS biz_day_plus_20
						, MAX(e0.working_day_running) AS biz_day_plus_20_running
					FROM rct.vw_daily_calendar AS e0
					GROUP BY 1) AS e
        ON  a.working_day_running=e.workingdayminus20
		LEFT JOIN ( SELECT f0.working_day_running + 5 as workingdayplus5,
			              MIN(f0.calendar_day) AS biz_day_minus_5
						, MIN(f0.working_day_running) AS biz_day_minus_5_running
					FROM rct.vw_daily_calendar AS f0
					GROUP BY 1) AS f
		ON a.working_day_running=f.workingdayplus5
	    LEFT JOIN ( SELECT g0.working_day_running + 10 workdayplus10,
					MIN(g0.calendar_day) AS biz_day_minus_10
				  , MIN(g0.working_day_running) AS biz_day_minus_10_running
					FROM rct.vw_daily_calendar AS g0
					GROUP BY 1 ) AS g
		ON a.working_day_running=g.workdayplus10
	    LEFT JOIN ( SELECT h0.working_day_running + 20 AS workdayplus20,
						MIN(h0.calendar_day) AS biz_day_minus_20
						,MIN(h0.working_day_running) AS biz_day_minus_20_running
					FROM rct.vw_daily_calendar AS h0
					GROUP BY 1 ) AS h	
		ON a.working_day_running=h.workdayplus20
	)

	, recruiters_by_month AS (
		SELECT a.preferred_name AS recruiter
			, a.employee_id AS recruiter_employee_id
			, a.business_title AS recruiter_title
			, a.management_level AS recruiter_management_level
			, a.workers_manager AS recruiter_manager
			, a.data_as_of AS data_as_of_date
			, a.currently_active AS recruiter_currently_active
			, a.user_id AS recruiter_user_id
			, a.min_hire_date
			, a.level_04_name AS recruiter_level_04_name
			, a.level_04_user_id AS recruiter_level_04_user_id
			, a.level_05_name AS recruiter_level_05_name
			, a.level_05_user_id AS recruiter_level_05_user_id
			, a.level_06_name AS recruiter_level_06_name
			, a.level_06_user_id AS recruiter_level_06_user_id
			, a.level_07_name AS recruiter_level_07_name
			, a.level_07_user_id AS recruiter_level_07_user_id
			, a.level_08_name AS recruiter_level_08_name
			, a.level_08_user_id AS recruiter_level_08_user_id
			, a.level_09_name AS recruiter_level_09_name
			, a.level_09_user_id AS recruiter_level_09_user_id
			, a.nbr_employee_directs AS recruiter_nbr_employee_directs
			, a.nbr_contingent_directs AS recruiter_nbr_contingent_directs
			, b.calendar_day AS scorecard_month_start
			, last_day(b.calendar_day) as scorecard_month_end
		FROM rct.vw_bu_all_recruiters AS a
			CROSS JOIN rct.vw_daily_calendar AS b
		WHERE DAY(b.calendar_day) = 1
			AND b.calendar_day >= '2019-01-01'
			AND b.calendar_day <= '2020-12-31'
	)

	, recruiters_by_month_by_intv_type AS (
		SELECT 'Recruiter Screen' AS interview_type
		, a.*
		FROM recruiters_by_month AS a
		UNION ALL
		SELECT 'Phone Interview / Tech Screen' AS interview_type
		, a.*
		FROM recruiters_by_month AS a
		UNION ALL
		SELECT 'Onsite Interview' AS interview_type
		, a.*
		FROM recruiters_by_month AS a
	)

	, recruiter_review_data AS (
		SELECT a.application_date
		, a.candidate_email
		, a.candidate_name
		, a.requisition_id
		, a.job_title
		, a.hiring_manager
		, a.source_category
		, a.source
		, a.application_workday_id
		, b.working_day_running AS application_date_day_number
		, b.biz_day_plus_10 AS review_stage_10_day_deadline
		, b.biz_day_plus_10_running AS review_stage_10_day_deadline_day_number
		, b.biz_day_plus_20 AS review_stage_20_day_deadline
		, b.biz_day_plus_20_running AS review_stage_20_day_deadline_day_number
		, a.second_stage_created AS review_stage_completed_date  
		, c.working_day_running AS review_stage_completed_day_number 
		, a.recruiter AS credited_recruiter
		, a.recruiter_employee_id AS credited_recruiter_employee_id
		, a.current_candidate_stage
		, a.second_candidate_stage
		, a.application_created_by_candidate_yn

		FROM rct.vw_map_workday_review_stage AS a
			INNER JOIN calendar_dates as b --join to get deadline dates
				ON a.application_date = b.calendar_day
			LEFT JOIN rct.vw_daily_calendar AS c --get running day for the review stage completed
				ON a.second_stage_created = c.calendar_day
		WHERE a.application_created_by_candidate_yn = '1'
	)

	, /*interview_feedback AS (
		SELECT a.interview_event_workday_id
			, b.worker AS interviewer
			, a.interviewer_employee_id
			, a.interview_session_type
			, a.interviewer_rating
		FROM rct.vw_bu_workday_interview_details AS a
			INNER JOIN rct.vw_bu_all_recruiters AS b
				ON a.interviewer_employee_id = b.employee_id
		WHERE (a.funnel_activity = 'Onsite Interview'
				AND a.interview_session_type = 'Debrief')
			OR a.funnel_activity = 'Recruiter Screen'
	)*/
	interview_feedback AS (
		SELECT a.interview_event_workday_id
			, b.worker AS interviewer
			, a.interviewer_employee_id
			, a.interview_session_type
			, a.interviewer_rating
		FROM rct.vw_bu_workday_interview_details AS a
			INNER JOIN rct.vw_bu_all_recruiters AS b
				ON a.interviewer_employee_id = b.employee_id
		WHERE (a.funnel_activity = 'Onsite Interview'
				AND a.interview_session_type = 'Debrief')
			OR a.funnel_activity = 'Recruiter Screen'
	)


	, pits_feedback AS (
		SELECT a.interview_event_workday_id
			, a.interviewer_rating
			, ROW_NUMBER() OVER (PARTITION BY a.interview_event_workday_id ORDER BY a.moment_feedback_submitted DESC) AS row_nbr
		FROM rct.vw_bu_workday_interview_details AS a
		WHERE a.interviewer_rating IS NOT NULL
			AND a.funnel_activity IN ('Phone Interview', 'Tech Screen','Coding Assessment Review')
		)

	, interview_data AS (
		SELECT a.funnel_activity_date AS interview_date
		, CASE
				WHEN a.funnel_activity = 'Internal Mobility Screen'
					THEN 'Recruiter Screen'
				WHEN a.funnel_activity IN ('Phone Interview', 'Tech Screen','Coding Assessment Review')
					THEN 'Phone Interview / Tech Screen'
				ELSE a.funnel_activity
			END AS interview_type
		, a.candidate_email
		, a.candidate_name
		, a.requisition_id
		, d.job_posting_title AS job_title
		, d.hiring_manager
		, a.source_category
		, a.source
		, a.interview_event_workday_id AS event_workday_id
		, b.working_day_running AS interview_date_day_number
		, b.biz_day_plus_5 AS interview_5_day_deadline
		, b.biz_day_plus_5_running AS interview_5_day_deadline_day_number
		, b.biz_day_plus_10 AS interview_10_day_deadline
		, b.biz_day_plus_10_running AS interview_10_day_deadline_day_number
		, CAST(a.interview_event_date_and_time_completed AS DATE) AS interview_completed_date 
		, c.working_day_running AS interview_completed_day_number 
		, COALESCE(e.interviewer, a.interview_event_initiator) AS credited_recruiter
		, COALESCE(e.interviewer_employee_id, a.interview_event_initiator_employee_id) as credited_recruiter_employee_id
		, a.candidate_stage AS current_candidate_stage
		, e.interview_session_type
		, COALESCE(e.interviewer_rating, f.interviewer_rating) AS interviewer_rating
		FROM rct.vw_map_workday_all_interviews AS a
			INNER JOIN calendar_dates as b --join to get deadline dates
				ON a.funnel_activity_date = b.calendar_day
			INNER JOIN rct.vw_map_workday_requisitions AS d
				ON a.requisition_id = d.requisition_id
			LEFT JOIN rct.vw_daily_calendar AS c --get running day for the review stage completed
				ON CAST(a.interview_event_date_and_time_completed AS DATE) = c.calendar_day
			LEFT JOIN interview_feedback AS e  --interview_feedback 
				ON a.interview_event_workday_id = e.interview_event_workday_id
			LEFT JOIN pits_feedback AS f
				ON a.interview_event_workday_id = f.interview_event_workday_id
					AND f.row_nbr = 1
		WHERE a.interview_started_before_completed = 'Yes'
	)

	, offer_accept_data AS (
		SELECT a.candidate_email
		, a.candidate_name
		, a.candidate_start_date
		, a.requisition_id
		, a.job_posting_title AS job_title
		, a.hiring_manager
		, a.source_category
		, a.source
		, a.workday_application_id
		, a.candidate_stage AS current_candidate_stage
		, a.worker_type
		, a.worker_sub_type
		, offer_accept_date
		, ready_for_hire_date
		, CASE
				WHEN a.worker_type = 'Employee'
					THEN COALESCE(a.first_submitted_offer_initiator_employee_id,a.first_offer_initiated_by_employee_id, a.ready_for_hire_initiator_employee_id)
				WHEN a.worker_type = 'Contingent Worker'
					THEN a.ready_for_hire_initiator_employee_id
			END AS credited_recruiter_employee_id
		, COALESCE(offer_accept_date, ready_for_hire_date) AS oa_or_rfh_date
		, CASE
				WHEN a.worker_type = 'Employee'
					AND a.first_submitted_offer_initiator_employee_id IS NOT NULL
					THEN 'Yes'
				WHEN a.worker_type = 'Contingent Worker'
					THEN 'n/a'
				ELSE 'No'
			END AS offer_details_submitted_yn
		FROM rct.vw_map_workday_all_offers AS a
		WHERE a.funnel_activity = 'Offer Accepted'
	)

	, offer_decline_data AS (
		SELECT a.candidate_email
		, a.candidate_name
		, a.requisition_id
		, a.job_posting_title AS job_title
		, a.hiring_manager
		, a.source_category
		, a.source
		, a.workday_application_id
		, a.candidate_stage AS current_candidate_stage
		, a.worker_type
		, a.worker_sub_type
		, CAST(a.date_and_time_completed AS DATE) AS offer_decline_date
		, COALESCE (a.first_submitted_offer_initiator_employee_id
						, a.first_offer_initiated_by_employee_id) AS credited_recruiter_employee_id
		, CASE
				WHEN a.worker_type = 'Employee'
					AND a.first_submitted_offer_initiator_employee_id IS NOT NULL
					THEN 'Yes'
				WHEN a.worker_type = 'Contingent Worker'
					THEN 'n/a'
				ELSE 'No'
			END AS offer_details_submitted_yn
		FROM rct.vw_map_workday_all_offers AS a
		WHERE a.funnel_activity = 'Offer Declined'

		UNION ALL

		SELECT b.candidate_email
		, b.candidate_name
		, b.requisition_id
		, c.job_posting_title AS job_title
		, c.hiring_manager
		, NULL AS source_category
		, NULL AS source
		, b.workday_application_id
		, c.worker_type
		, c.worker_sub_type
		, 'Declined by Candidate' AS current_candidate_stage
		, b.funnel_activity_date AS offer_decline_date
		, b.offer_initiator_employee_id AS credited_recruiter_employee_id
		, NULL AS offer_details_submitted_yn
		FROM recruitingdb.v_manual_offer_declines AS b
		INNER JOIN rct.vw_map_workday_requisitions AS c
			ON b.requisition_id = c.requisition_id
	)

	, candidate_activity_onsites AS (
		SELECT a.interview_id
			, a.candidate_email
			, a.requisition_id
			, a.first_accept_last_decline
			, a.orphan_first_accept_last_decline
			, a.orphan_offer_requisition_id
			, COALESCE(b.offer_details_submitted_yn, c.offer_details_submitted_yn, d.offer_details_submitted_yn, e.offer_details_submitted_yn) AS offer_details_submitted_yn
		FROM rct.vw_bu_candidate_activity_master AS a

			LEFT JOIN offer_accept_data AS b
				ON a.candidate_email = b.candidate_email
					AND a.requisition_id = b.requisition_id
			LEFT JOIN offer_decline_data AS c
				ON a.candidate_email = c.candidate_email
					AND a.requisition_id = c.requisition_id
			LEFT JOIN offer_accept_data AS d
				ON a.candidate_email = d.candidate_email
					AND a.orphan_offer_requisition_id = d.requisition_id
			LEFT JOIN offer_decline_data AS e
				ON a.candidate_email = e.candidate_email
					AND a.orphan_offer_requisition_id = e.requisition_id

		WHERE a.funnel_activity = 'Onsite Interview'
			AND a.funnel_activity_date >= '2019-01-01'
	)
------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------

--Review Stage 10-Day
SELECT 'Time in Stage' AS metric_category
	, 'Applications' AS metric_stage
	, 'Resume Review' AS metric_group
	, 'RR 10 DAY' AS metric_name
	, 'Resume Review' AS activity
	, a.scorecard_month_start
	, a.scorecard_month_end
	, a.data_as_of_date
	, b.candidate_email
	, b.candidate_name
	, b.requisition_id
	, b.job_title
	, b.hiring_manager
	, b.source_category
	, b.source
	, b.application_workday_id AS unique_id
	, b.current_candidate_stage
	, CAST(NULL AS DATE) AS candidate_start_date
	, a.recruiter AS credited_recruiter
	, a.recruiter_employee_id AS credited_recruiter_employee_id
	, e.working_day_running AS data_as_of_day_running
	, e.biz_day_minus_10 AS activity_thru_date
	, d.biz_day_plus_10 AS month_close_date
	, b.application_date AS first_activity_date
	, b.application_date_day_number AS first_activity_day_number
	, b.review_stage_10_day_deadline AS deadline_date
	, b.review_stage_completed_date AS second_activity_date
	, b.review_stage_completed_day_number AS second_activity_day_number
	, COALESCE(b.review_stage_completed_day_number,e.working_day_running+1) - b.application_date_day_number AS days_elapsed
	, CASE
			WHEN COALESCE(b.review_stage_completed_day_number,e.working_day_running+1) - b.application_date_day_number <=10 
				AND b.review_stage_completed_date IS NOT NULL
				AND a.data_as_of_date >= b.review_stage_10_day_deadline
				THEN 'PASS'
			WHEN COALESCE(b.review_stage_completed_day_number,e.working_day_running+1) - b.application_date_day_number > 10 
				AND a.data_as_of_date >= b.review_stage_10_day_deadline
				THEN 'FAIL'
			WHEN b.review_stage_completed_date IS NOT NULL
				AND a.data_as_of_date < b.review_stage_10_day_deadline
				THEN 'COMPLETE'
			WHEN b.review_stage_completed_date IS NULL 
				AND a.data_as_of_date < b.review_stage_10_day_deadline
				THEN 'INCOMPLETE'
		END AS metric_status
	, CASE 
			WHEN b.application_date IS NOT NULL 
				THEN 1 
			ELSE 0
		END AS metric_count
	, CASE
			WHEN COALESCE(b.review_stage_completed_day_number,e.working_day_running+1) - b.application_date_day_number <=10 
				AND b.review_stage_completed_date IS NOT NULL
				AND a.data_as_of_date >= b.review_stage_10_day_deadline
				THEN 1 
		END AS pass_count
	, CASE
			WHEN COALESCE(b.review_stage_completed_day_number,e.working_day_running+1) - b.application_date_day_number > 10 
				AND a.data_as_of_date >= b.review_stage_10_day_deadline
				THEN 1
		END AS fail_count
	, CASE
			WHEN b.review_stage_completed_date IS NOT NULL
				AND a.data_as_of_date < b.review_stage_10_day_deadline
				THEN 1 
		END AS complete_count
	, CASE
			WHEN b.review_stage_completed_date IS NULL 
				AND a.data_as_of_date < b.review_stage_10_day_deadline
				THEN 1 
		END AS incomplete_count

	, CASE
			WHEN a.data_as_of_date >= a.scorecard_month_start 
				THEN 1 
			ELSE 0
		END AS include_month
	, CAST(10 AS INT) AS tis_target_days
	, CAST(0.90 AS decimal(3,2)) AS tis_target_pct
	, NULL AS offer_on_requisition_id
	, NULL AS interview_session_type
	, NULL AS interviewer_rating
	, CAST(NULL AS DATE) AS offer_accept_date
	, CAST(NULL AS DATE) AS ready_for_hire_date
	, NULL AS offer_details_submitted_yn
	, NULL AS worker_type
	, NULL AS worker_sub_type
	, a.recruiter_currently_active
	, a.recruiter_title
	, a.recruiter_management_level
	, a.recruiter_user_id
	, a.recruiter_manager
	, a.recruiter_level_04_name
	, a.recruiter_level_04_user_id
	, a.recruiter_level_05_name
	, a.recruiter_level_05_user_id
	, a.recruiter_level_06_name
	, a.recruiter_level_06_user_id
	, a.recruiter_level_07_name
	, a.recruiter_level_07_user_id
	, a.recruiter_level_08_name
	, a.recruiter_level_08_user_id
	, a.recruiter_level_09_name
	, a.recruiter_level_09_user_id
	, a.recruiter_nbr_employee_directs
	, a.recruiter_nbr_contingent_directs

FROM recruiters_by_month AS a
	LEFT JOIN recruiter_review_data AS b
		ON a.recruiter_employee_id = b.credited_recruiter_employee_id
			AND	a.scorecard_month_start <= b.application_date
			AND a.scorecard_month_end >= b.application_date
			AND b.application_date > a.min_hire_date
	LEFT JOIN calendar_dates AS c
		ON a.scorecard_month_start = c.calendar_day
	LEFT JOIN calendar_dates AS d
		ON a.scorecard_month_end = d.calendar_day
	LEFT JOIN calendar_dates AS e
		ON a.data_as_of_date = e.calendar_day


UNION ALL

--Review Stage 20-Day
SELECT 'Time in Stage' AS metric_category
	, 'Applications' AS metric_stage
	, 'Resume Review' AS metric_group
	, 'RR 20 DAY' AS metric_name
	, 'Resume Review' AS activity
	, a.scorecard_month_start
	, a.scorecard_month_end
	, a.data_as_of_date
	, b.candidate_email
	, b.candidate_name
	, b.requisition_id
	, b.job_title
	, b.hiring_manager
	, b.source_category
	, b.source
	, b.application_workday_id AS unique_id
	, b.current_candidate_stage
	, CAST(NULL AS DATE) AS candidate_start_date
	, a.recruiter AS credited_recruiter
	, a.recruiter_employee_id AS credited_recruiter_employee_id
	, e.working_day_running AS data_as_of_day_running
	, e.biz_day_minus_20 AS activity_thru_date
	, d.biz_day_plus_20 AS month_close_date
	, b.application_date AS first_activity_date
	, b.application_date_day_number AS first_activity_day_number
	, b.review_stage_20_day_deadline AS deadline_date
	, b.review_stage_completed_date AS second_activity_date
	, b.review_stage_completed_day_number AS second_activity_day_number
	, COALESCE(b.review_stage_completed_day_number,e.working_day_running+1) - b.application_date_day_number AS days_elapsed
	, CASE
			WHEN COALESCE(b.review_stage_completed_day_number,e.working_day_running+1) - b.application_date_day_number <=20 
				AND b.review_stage_completed_date IS NOT NULL
				AND a.data_as_of_date >= b.review_stage_20_day_deadline
				THEN 'PASS'
			WHEN COALESCE(b.review_stage_completed_day_number,e.working_day_running+1) - b.application_date_day_number > 20 
				AND a.data_as_of_date >= b.review_stage_20_day_deadline
				THEN 'FAIL'
			WHEN b.review_stage_completed_date IS NOT NULL
				AND a.data_as_of_date < b.review_stage_20_day_deadline
				THEN 'COMPLETE'
			WHEN b.review_stage_completed_date IS NULL 
				AND a.data_as_of_date < b.review_stage_20_day_deadline
				THEN 'INCOMPLETE'
		END AS metric_status
	, CASE 
			WHEN b.application_date IS NOT NULL 
				THEN 1 
			ELSE 0
		END AS metric_count
	, CASE
			WHEN COALESCE(b.review_stage_completed_day_number,e.working_day_running+1) - b.application_date_day_number <=20 
				AND b.review_stage_completed_date IS NOT NULL
				AND a.data_as_of_date >= b.review_stage_20_day_deadline
				THEN 1 
		END AS pass_count
	, CASE
			WHEN COALESCE(b.review_stage_completed_day_number,e.working_day_running+1) - b.application_date_day_number > 20 
				AND a.data_as_of_date >= b.review_stage_20_day_deadline
				THEN 1
		END AS fail_count
	, CASE
			WHEN b.review_stage_completed_date IS NOT NULL
				AND a.data_as_of_date < b.review_stage_20_day_deadline
				THEN 1 
		END AS complete_count
	, CASE
			WHEN b.review_stage_completed_date IS NULL 
				AND a.data_as_of_date < b.review_stage_20_day_deadline
				THEN 1 
		END AS incomplete_count

	, CASE
			WHEN a.data_as_of_date >= a.scorecard_month_start 
				THEN 1 
			ELSE 0
		END AS include_month
	, CAST(20 AS INT) AS tis_target_days
	, CAST(0.99 AS decimal(3,2)) AS tis_target_pct
	, NULL AS offer_on_requisition_id
	, NULL AS interview_session_type
	, NULL AS interviewer_rating
	, CAST(NULL AS DATE) AS offer_accept_date
	, CAST(NULL AS DATE) AS ready_for_hire_date
	, NULL AS offer_details_submitted_yn
	, NULL AS worker_type
	, NULL AS worker_sub_type
	, a.recruiter_currently_active
	, a.recruiter_title
	, a.recruiter_management_level
	, a.recruiter_user_id
	, a.recruiter_manager
	, a.recruiter_level_04_name
	, a.recruiter_level_04_user_id
	, a.recruiter_level_05_name
	, a.recruiter_level_05_user_id
	, a.recruiter_level_06_name
	, a.recruiter_level_06_user_id
	, a.recruiter_level_07_name
	, a.recruiter_level_07_user_id
	, a.recruiter_level_08_name
	, a.recruiter_level_08_user_id
	, a.recruiter_level_09_name
	, a.recruiter_level_09_user_id
	, a.recruiter_nbr_employee_directs
	, a.recruiter_nbr_contingent_directs

FROM recruiters_by_month AS a
	LEFT JOIN recruiter_review_data AS b
		ON a.recruiter_employee_id = b.credited_recruiter_employee_id
			AND	a.scorecard_month_start <= b.application_date
			AND a.scorecard_month_end >= b.application_date
			AND b.application_date > a.min_hire_date

	LEFT JOIN calendar_dates AS c
		ON a.scorecard_month_start = c.calendar_day
	LEFT JOIN calendar_dates AS d
		ON a.scorecard_month_end = d.calendar_day
	LEFT JOIN calendar_dates AS e
		ON a.data_as_of_date = e.calendar_day


UNION ALL
--INTERVIEW 5-DAY
SELECT 'Time in Stage' AS metric_category
	, 'Scheduled '|| a.interview_type || 's' AS metric_stage
	, a.interview_type AS metric_group
	, 'INTV 5 DAY' AS metric_name
	, a.interview_type AS activity
	, a.scorecard_month_start
	, a.scorecard_month_end
	, a.data_as_of_date
	, b.candidate_email
	, b.candidate_name
	, b.requisition_id
	, b.job_title
	, b.hiring_manager
	, b.source_category
	, b.source
	, b.event_workday_id AS unique_id
	, b.current_candidate_stage
	, CAST(NULL AS DATE) AS candidate_start_date
	, a.recruiter AS credited_recruiter
	, a.recruiter_employee_id AS credited_recruiter_employee_id
	, e.working_day_running AS data_as_of_day_running
	, e.biz_day_minus_5 AS activity_thru_date
	, d.biz_day_plus_5 AS month_close_date
	, b.interview_date AS first_activity_date
	, b.interview_date_day_number AS first_activity_day_number
	, b.interview_5_day_deadline AS deadline_date
	, b.interview_completed_date AS second_activity_date
	, b.interview_completed_day_number AS second_activity_day_number
	, COALESCE(b.interview_completed_day_number,e.working_day_running+1) - b.interview_date_day_number AS days_elapsed
	, CASE
			WHEN COALESCE(b.interview_completed_day_number,e.working_day_running+1) - b.interview_date_day_number <=5 
				AND b.interview_completed_date IS NOT NULL
				AND a.data_as_of_date >= b.interview_5_day_deadline
				THEN 'PASS'
			WHEN COALESCE(b.interview_completed_day_number,e.working_day_running+1) - b.interview_date_day_number > 5 
				AND a.data_as_of_date >= b.interview_5_day_deadline
				THEN 'FAIL'
			WHEN b.interview_completed_date IS NOT NULL
				AND a.data_as_of_date < b.interview_5_day_deadline
				THEN 'COMPLETE'
			WHEN b.interview_completed_date IS NULL
				AND a.data_as_of_date < b.interview_5_day_deadline
			THEN 'INCOMPLETE'
		END AS metric_status
	, CASE 
			WHEN b.interview_date IS NOT NULL 
				THEN 1 
			ELSE 0
		END AS metric_count
	, CASE
			WHEN COALESCE(b.interview_completed_day_number,e.working_day_running+1) - b.interview_date_day_number <=5 
				AND b.interview_completed_date IS NOT NULL
				AND a.data_as_of_date >= b.interview_5_day_deadline
				THEN 1 
		END AS pass_count
	, CASE
			WHEN COALESCE(b.interview_completed_day_number,e.working_day_running+1) - b.interview_date_day_number > 5 
				AND a.data_as_of_date >= b.interview_5_day_deadline
				THEN 1
		END AS fail_count
	, CASE
			WHEN b.interview_completed_date IS NOT NULL
				AND a.data_as_of_date < b.interview_5_day_deadline
				THEN 1 
		END AS complete_count
	, CASE
			WHEN b.interview_completed_date IS NULL
				AND a.data_as_of_date < b.interview_5_day_deadline
				THEN 1 
		END AS incomplete_count
	, CASE
			WHEN a.data_as_of_date >= a.scorecard_month_start 
				THEN 1 
			ELSE 0
		END AS include_month
	, CAST(5 AS INT) AS tis_target_days
	, CAST(0.90 AS decimal(3,2)) AS tis_target_pct
	, NULL AS offer_on_requisition_id
	, NULL AS interview_session_type
	, b.interviewer_rating
	, CAST(NULL AS DATE) AS offer_accept_date
	, CAST(NULL AS DATE) AS ready_for_hire_date
	, NULL AS offer_details_submitted_yn
	, NULL AS worker_type	
	, NULL AS worker_sub_type
	, a.recruiter_currently_active
	, a.recruiter_title
	, a.recruiter_management_level
	, a.recruiter_user_id
	, a.recruiter_manager
	, a.recruiter_level_04_name
	, a.recruiter_level_04_user_id
	, a.recruiter_level_05_name
	, a.recruiter_level_05_user_id
	, a.recruiter_level_06_name
	, a.recruiter_level_06_user_id
	, a.recruiter_level_07_name
	, a.recruiter_level_07_user_id
	, a.recruiter_level_08_name
	, a.recruiter_level_08_user_id
	, a.recruiter_level_09_name
	, a.recruiter_level_09_user_id
	, a.recruiter_nbr_employee_directs
	, a.recruiter_nbr_contingent_directs

FROM recruiters_by_month_by_intv_type AS a
	LEFT JOIN interview_data AS b
		ON a.recruiter_employee_id = b.credited_recruiter_employee_id
			AND	a.scorecard_month_start <= b.interview_date
			AND a.scorecard_month_end >= b.interview_date
			AND a.interview_type = b.interview_type
			AND b.interview_type IS NOT NULL
			AND b.interview_date <= a.data_as_of_date --this is NOT temporary
	LEFT JOIN calendar_dates AS c
		ON a.scorecard_month_start = c.calendar_day
	LEFT JOIN calendar_dates AS d
		ON a.scorecard_month_end = d.calendar_day
	LEFT JOIN calendar_dates AS e
		ON a.data_as_of_date = e.calendar_day

UNION ALL
--INTERVIEW 10-DAY
SELECT 'Time in Stage' AS metric_category
	, 'Scheduled ' || a.interview_type || 's' AS metric_stage
	, a.interview_type AS metric_group
	, 'INTV 10 DAY' AS metric_name
	, NULL AS activity
	, a.scorecard_month_start
	, a.scorecard_month_end
	, a.data_as_of_date
	, b.candidate_email
	, b.candidate_name
	, b.requisition_id
	, b.job_title
	, b.hiring_manager
	, b.source_category
	, b.source
	, b.event_workday_id AS unique_id
	, b.current_candidate_stage
	, CAST(NULL AS DATE) AS candidate_start_date
	, a.recruiter AS credited_recruiter
	, a.recruiter_employee_id AS credited_recruiter_employee_id
	, e.working_day_running AS data_as_of_day_running
	, e.biz_day_minus_10 AS activity_thru_date
	, d.biz_day_plus_10 AS month_close_date
	, b.interview_date AS first_activity_date
	, b.interview_date_day_number AS first_activity_day_number
	, b.interview_10_day_deadline AS deadline_date
	, b.interview_completed_date AS second_activity_date
	, b.interview_completed_day_number AS second_activity_day_number
	, COALESCE(b.interview_completed_day_number,e.working_day_running+1) - b.interview_date_day_number AS days_elapsed

	, CASE
			WHEN COALESCE(b.interview_completed_day_number,e.working_day_running+1) - b.interview_date_day_number <=10 
				AND b.interview_completed_date IS NOT NULL
				AND a.data_as_of_date >= b.interview_10_day_deadline
				THEN 'PASS'
			WHEN COALESCE(b.interview_completed_day_number,e.working_day_running+1) - b.interview_date_day_number > 10 
				AND a.data_as_of_date >= b.interview_10_day_deadline
				THEN 'FAIL'
			WHEN b.interview_completed_date IS NOT NULL
				AND a.data_as_of_date < b.interview_10_day_deadline
				THEN 'COMPLETE'
			WHEN b.interview_completed_date IS NULL
				AND a.data_as_of_date < b.interview_10_day_deadline
			THEN 'INCOMPLETE'
		END AS metric_status
	, CASE 
			WHEN b.interview_date IS NOT NULL 
				THEN 1 
			ELSE 0
		END AS metric_count
	, CASE
			WHEN COALESCE(b.interview_completed_day_number,e.working_day_running+1) - b.interview_date_day_number <=10 
				AND b.interview_completed_date IS NOT NULL
				AND a.data_as_of_date >= b.interview_10_day_deadline
				THEN 1 
		END AS pass_count
	, CASE
			WHEN COALESCE(b.interview_completed_day_number,e.working_day_running+1) - b.interview_date_day_number > 10 
				AND a.data_as_of_date >= b.interview_10_day_deadline
				THEN 1
		END AS fail_count
	, CASE
			WHEN b.interview_completed_date IS NOT NULL
				AND a.data_as_of_date < b.interview_10_day_deadline
				THEN 1 
		END AS complete_count
	, CASE
			WHEN b.interview_completed_date IS NULL
				AND a.data_as_of_date < b.interview_10_day_deadline
				THEN 1 
		END AS incomplete_count
	, CASE
			WHEN a.data_as_of_date >= a.scorecard_month_start 
				THEN 1 
			ELSE 0
		END AS include_month
	, CAST(10 AS INT) AS tis_target_days
	, CAST(0.99 AS decimal(3,2)) AS tis_target_pct
	, NULL AS offer_on_requisition_id
	, NULL AS interview_session_type
	, b.interviewer_rating
	, CAST(NULL AS DATE) AS offer_accept_date
	, CAST(NULL AS DATE) AS ready_for_hire_date
	, NULL AS offer_details_submitted_yn
	, NULL AS worker_type
	, NULL AS worker_sub_type
	, a.recruiter_currently_active
	, a.recruiter_title
	, a.recruiter_management_level
	, a.recruiter_user_id
	, a.recruiter_manager
	, a.recruiter_level_04_name
	, a.recruiter_level_04_user_id
	, a.recruiter_level_05_name
	, a.recruiter_level_05_user_id
	, a.recruiter_level_06_name
	, a.recruiter_level_06_user_id
	, a.recruiter_level_07_name
	, a.recruiter_level_07_user_id
	, a.recruiter_level_08_name
	, a.recruiter_level_08_user_id
	, a.recruiter_level_09_name
	, a.recruiter_level_09_user_id
	, a.recruiter_nbr_employee_directs
	, a.recruiter_nbr_contingent_directs

FROM recruiters_by_month_by_intv_type AS a
	LEFT JOIN interview_data AS b
		ON a.recruiter_employee_id = b.credited_recruiter_employee_id
			AND	a.scorecard_month_start <= b.interview_date
			AND a.scorecard_month_end >= b.interview_date
			AND a.interview_type = b.interview_type
			AND b.interview_type IS NOT NULL
			AND b.interview_date <= a.data_as_of_date --this is NOT temporary
	LEFT JOIN calendar_dates AS c
		ON a.scorecard_month_start = c.calendar_day
	LEFT JOIN calendar_dates AS d
		ON a.scorecard_month_end = d.calendar_day
	LEFT JOIN calendar_dates AS e
		ON a.data_as_of_date = e.calendar_day

UNION ALL
--OFFER ACCEPTS
SELECT 'Funnel Metrics' AS metric_category
	, 'Offer' AS metric_stage
	, 'Offers Accepted' AS metric_group
	, 'OA' AS metric_name
	, 'Offer Accepted' AS activity
	, a.scorecard_month_start
	, a.scorecard_month_end
	, a.data_as_of_date
	, b.candidate_email
	, b.candidate_name
	, b.requisition_id
	, b.job_title
	, b.hiring_manager
	, b.source_category
	, b.source
	, b.workday_application_id AS unique_id
	, b.current_candidate_stage
	, b.candidate_start_date
	, a.recruiter AS credited_recruiter
	, a.recruiter_employee_id AS credited_recruiter_employee_id
	, NULL AS data_as_of_day_running
	, a.data_as_of_date AS activity_thru_date
	, a.scorecard_month_end AS month_close_date
	, b.oa_or_rfh_date AS first_activity_date
	, NULL AS first_activity_day_number
	, a.data_as_of_date AS deadline_date
	, NULL AS second_activity_date
	, NULL AS second_activity_day_number
	, NULL AS days_elapsed
	, NULL AS metric_status
	, CASE
			WHEN b.oa_or_rfh_date IS NOT NULL
				THEN 1
			ELSE 0 
		END AS metric_count
	, CASE 
			WHEN b.worker_type = 'Employee' AND b.offer_accept_date IS NOT NULL 
				THEN 1 
			WHEN b.worker_type = 'Contingent Worker' AND b.ready_for_hire_date IS NOT NULL
				THEN 1
			ELSE 0
		END AS pass_count
	, CASE 
			WHEN b.worker_type = 'Employee' AND b.offer_accept_date IS NULL 
				THEN 1  
			ELSE 0
		END AS fail_count
	, NULL AS complete_count
	, NULL AS incomplete_count
	, CASE
			WHEN a.data_as_of_date >= a.scorecard_month_start 
				THEN 1 
			ELSE 0
		END AS include_month
	, NULL AS tis_target_days
	, NULL AS tis_target_pct
	, NULL AS offer_on_requisition_id
	, NULL AS interview_session_type
	, NULL AS interviewer_rating
	, b.offer_accept_date
	, b.ready_for_hire_date
	, b.offer_details_submitted_yn
	, b.worker_type
	, b.worker_sub_type
	, a.recruiter_currently_active
	, a.recruiter_title
	, a.recruiter_management_level
	, a.recruiter_user_id
	, a.recruiter_manager
	, a.recruiter_level_04_name
	, a.recruiter_level_04_user_id
	, a.recruiter_level_05_name
	, a.recruiter_level_05_user_id
	, a.recruiter_level_06_name
	, a.recruiter_level_06_user_id
	, a.recruiter_level_07_name
	, a.recruiter_level_07_user_id
	, a.recruiter_level_08_name
	, a.recruiter_level_08_user_id
	, a.recruiter_level_09_name
	, a.recruiter_level_09_user_id
	, a.recruiter_nbr_employee_directs
	, a.recruiter_nbr_contingent_directs

FROM recruiters_by_month AS a
	LEFT JOIN offer_accept_data AS b
		ON a.recruiter_employee_id = b.credited_recruiter_employee_id
			AND	a.scorecard_month_start <= b.oa_or_rfh_date
			AND a.scorecard_month_end >= b.oa_or_rfh_date

UNION ALL
--OFFER DECLINES
SELECT 'Funnel Metrics' AS metric_category
	, 'Offer' AS metric_stage
	, 'Offers Declined' AS metric_group
	, 'OD' AS metric_name
	, 'Offer Declined' AS activity
	, a.scorecard_month_start
	, a.scorecard_month_end
	, a.data_as_of_date
	, b.candidate_email
	, b.candidate_name
	, b.requisition_id
	, b.job_title
	, b.hiring_manager
	, b.source_category
	, b.source
	, b.workday_application_id AS unique_id
	, b.current_candidate_stage
	, CAST(NULL AS DATE) AS candidate_start_date
	, a.recruiter AS credited_recruiter
	, a.recruiter_employee_id AS credited_recruiter_employee_id
	, NULL AS data_as_of_day_running
	, a.data_as_of_date AS activity_thru_date
	, a.scorecard_month_end AS month_close_date
	, b.offer_decline_date AS first_activity_date
	, NULL AS first_activity_day_number
	, a.data_as_of_date AS deadline_date
	, NULL AS second_activity_date
	, NULL AS second_activity_day_number
	, NULL AS days_elapsed
	, NULL AS metric_status
	, CASE 
			WHEN b.offer_decline_date IS NOT NULL 
				THEN 1 
			ELSE 0
		END AS metric_count
	, 1 AS pass_count
	, NULL AS fail_count
	, NULL AS complete_count
	, NULL AS incomplete_count
	, CASE
			WHEN a.data_as_of_date >= a.scorecard_month_start 
				THEN 1 
			ELSE 0
		END AS include_month
	, NULL AS tis_target_days
	, NULL AS tis_target_pct
	, NULL AS offer_on_requisition_id
	, NULL AS interview_session_type
	, NULL AS interviewer_rating
	, CAST(NULL AS DATE) AS offer_accept_date
	, CAST(NULL AS DATE) AS ready_for_hire_date
	, b.offer_details_submitted_yn
	, b.worker_type
	, b.worker_sub_type
	, a.recruiter_currently_active
	, a.recruiter_title
	, a.recruiter_management_level
	, a.recruiter_user_id
	, a.recruiter_manager
	, a.recruiter_level_04_name
	, a.recruiter_level_04_user_id
	, a.recruiter_level_05_name
	, a.recruiter_level_05_user_id
	, a.recruiter_level_06_name
	, a.recruiter_level_06_user_id
	, a.recruiter_level_07_name
	, a.recruiter_level_07_user_id
	, a.recruiter_level_08_name
	, a.recruiter_level_08_user_id
	, a.recruiter_level_09_name
	, a.recruiter_level_09_user_id
	, a.recruiter_nbr_employee_directs
	, a.recruiter_nbr_contingent_directs

FROM recruiters_by_month AS a
	LEFT JOIN offer_decline_data AS b
		ON a.recruiter_employee_id = b.credited_recruiter_employee_id
			AND	a.scorecard_month_start <= b.offer_decline_date
			AND a.scorecard_month_end >= b.offer_decline_date

UNION ALL
----Onsite to Offer
SELECT 'Funnel Metrics' AS metric_category
	, 'Interview' AS metric_stage
	, 'Onsite to Offer' AS metric_group
	, 'O2O' AS metric_name
	, NULL AS activity
	, a.scorecard_month_start
	, a.scorecard_month_end
	, a.data_as_of_date
	, b.candidate_email
	, b.candidate_name
	, b.requisition_id
	, b.job_title
	, b.hiring_manager
	, b.source_category
	, b.source
	, b.event_workday_id AS unique_id
	, b.current_candidate_stage
	, CAST(NULL AS DATE) AS candidate_start_date
	, a.recruiter AS credited_recruiter
	, a.recruiter_employee_id AS credited_recruiter_employee_id
	, NULL AS data_as_of_day_running
	, a.data_as_of_date AS activity_thru_date
	, a.scorecard_month_end AS month_close_date
	, b.interview_date AS first_activity_date
	, NULL AS first_activity_day_number
	, a.data_as_of_date AS deadline_date
	, COALESCE(f.first_accept_last_decline, f.orphan_first_accept_last_decline) AS second_activity_date
	, NULL AS second_activity_day_number
	, NULL AS days_elapsed
	, NULL AS metric_status
	, CASE 
			WHEN b.interview_date IS NOT NULL 
				THEN 1 
			ELSE 0
		END AS metric_count
	, CASE
			WHEN f.first_accept_last_decline IS NOT NULL OR f.orphan_first_accept_last_decline IS NOT NULL
			THEN 1
		END AS pass_count
	, NULL AS fail_count
	, NULL AS complete_count
	, NULL AS incomplete_count
	, CASE
			WHEN a.data_as_of_date >= a.scorecard_month_start 
				THEN 1 
			ELSE 0
		END AS include_month
	, NULL AS tis_target_days
	, NULL AS tis_target_pct
	, CASE
			WHEN f.first_accept_last_decline IS NOT NULL THEN f.requisition_id
			ELSE f.orphan_offer_requisition_id
			END AS offer_on_requisition_id
	, b.interview_session_type
	, b.interviewer_rating
	, CAST(NULL AS DATE) AS offer_accept_date
	, CAST(NULL AS DATE) AS ready_for_hire_date
	, f.offer_details_submitted_yn
	, NULL AS worker_type
	, NULL AS worker_sub_type
	, a.recruiter_currently_active
	, a.recruiter_title
	, a.recruiter_management_level
	, a.recruiter_user_id
	, a.recruiter_manager
	, a.recruiter_level_04_name
	, a.recruiter_level_04_user_id
	, a.recruiter_level_05_name
	, a.recruiter_level_05_user_id
	, a.recruiter_level_06_name
	, a.recruiter_level_06_user_id
	, a.recruiter_level_07_name
	, a.recruiter_level_07_user_id
	, a.recruiter_level_08_name
	, a.recruiter_level_08_user_id
	, a.recruiter_level_09_name
	, a.recruiter_level_09_user_id
	, a.recruiter_nbr_employee_directs
	, a.recruiter_nbr_contingent_directs
FROM recruiters_by_month AS a
	LEFT JOIN interview_data AS b
		ON a.recruiter_employee_id = b.credited_recruiter_employee_id
			AND	a.scorecard_month_start <= b.interview_date
			AND a.scorecard_month_end >= b.interview_date
			AND b.interview_type = 'Onsite Interview'
			AND b.interview_completed_date IS NOT NULL
			AND b.interview_date <= a.data_as_of_date --this is NOT temporary
	LEFT JOIN calendar_dates AS e
		ON b.interview_date = e.calendar_day
	LEFT JOIN candidate_activity_onsites AS f
		ON b.event_workday_id = f.interview_id


UNION ALL
--CLEAR OFFER ACCEPTS
SELECT 'Funnel Metrics' AS metric_category
	, 'Offer' AS metric_stage
	, 'Offers Accepted' AS metric_group
	, 'OA' AS metric_name
	, 'Offer Accepted' AS activity
	, a.scorecard_month_start
	, a.scorecard_month_end
	, a.data_as_of_date
	, b.candidate_email
	, b.candidate_name
	, b.requisition_id_for_dashboards AS requisition_id
	, b.job_title
	, b.hiring_manager
	, b.source_category
	, b.source
	, b.application_id AS unique_id
	, CASE WHEN b.requisition_id_for_dashboards IS NOT NULL THEN 'Ready for Hire' END AS current_candidate_stage
	, b.candidate_start_date
	, a.recruiter AS credited_recruiter
	, a.recruiter_employee_id AS credited_recruiter_employee_id
	, NULL AS data_as_of_day_running
	, a.data_as_of_date AS activity_thru_date
	, a.scorecard_month_end AS month_close_date
	, b.funnel_activity_date AS first_activity_date
	, NULL AS first_activity_day_number
	, a.data_as_of_date AS deadline_date
	, NULL AS second_activity_date
	, NULL AS second_activity_day_number
	, NULL AS days_elapsed
	, NULL AS metric_status
	, CASE WHEN b.requisition_id_for_dashboards IS NOT NULL THEN 1 END AS metric_count
	, CASE WHEN b.requisition_id_for_dashboards IS NOT NULL THEN 1 END AS pass_count
	, CASE WHEN b.requisition_id_for_dashboards IS NOT NULL THEN 0 END AS fail_count
	, NULL AS complete_count
	, NULL AS incomplete_count
	, CASE
			WHEN a.data_as_of_date >= a.scorecard_month_start 
				THEN 1 
			ELSE 0
		END AS include_month
	, NULL AS tis_target_days
	, NULL AS tis_target_pct
	, NULL AS offer_on_requisition_id
	, NULL AS interview_session_type
	, NULL AS interviewer_rating
	, b.funnel_activity_date AS offer_accept_date
	, b.funnel_activity_date AS ready_for_hire_date
	, CASE WHEN b.requisition_id_for_dashboards IS NOT NULL THEN 'Yes' END AS offer_details_submitted_yn
	, CASE WHEN b.requisition_id_for_dashboards IS NOT NULL THEN 'Regular' END AS worker_type
	, CASE WHEN b.requisition_id_for_dashboards IS NOT NULL THEN 'Regular' END AS worker_sub_type
	, a.recruiter_currently_active
	, a.recruiter_title
	, a.recruiter_management_level
	, a.recruiter_user_id
	, a.recruiter_manager
	, a.recruiter_level_04_name
	, a.recruiter_level_04_user_id
	, a.recruiter_level_05_name
	, a.recruiter_level_05_user_id
	, a.recruiter_level_06_name
	, a.recruiter_level_06_user_id
	, a.recruiter_level_07_name
	, a.recruiter_level_07_user_id
	, a.recruiter_level_08_name
	, a.recruiter_level_08_user_id
	, a.recruiter_level_09_name
	, a.recruiter_level_09_user_id
	, a.recruiter_nbr_employee_directs
	, a.recruiter_nbr_contingent_directs

FROM recruiters_by_month AS a
	LEFT JOIN recruitingdb.v_clear_offer_accepts AS b
		ON a.recruiter_employee_id = b.credited_recruiter_employee_id
			AND	a.scorecard_month_start <= b.funnel_activity_date
			AND a.scorecard_month_end >= b.funnel_activity_date;			
			
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


create or replace view vw_bu_tableau_recruiter_metrics_rs_eff AS
	WITH data_as_of AS (
		SELECT MAX(a.data_as_of) AS data_as_of_date
			, MAX(b.working_day_running) AS data_as_of_day_running
		from rct.vw_bu_all_recruiters as a
			inner join rct.vw_map_daily_calendar as b
			ON a.data_as_of = b.calendar_day
		)
	
	, calendar_dates AS (

		SELECT a.calendar_day
		, a.working_day_running
		,dateadd('day',1,last_day(add_months(a.calendar_day,-1))) as month_start --get beginning of calendar_month
		, last_day(a.calendar_day) as month_end --get end of calendar month
		, b.biz_month_start
		, b.biz_month_end
		, b.first_biz_day_running
		, b.last_biz_day_running
		, c.biz_day_plus_5
		, c.biz_day_plus_5_running
		, d.biz_day_plus_10
		, d.biz_day_plus_10_running
		, e.biz_day_plus_20
		, e.biz_day_plus_20_running
		, f.biz_day_minus_5
		, f.biz_day_minus_5_running
		, g.biz_day_minus_10
		, g.biz_day_minus_10_running
		, h.biz_day_minus_20
		, h.biz_day_minus_20_running
		from rct.vw_map_daily_calendar as a
	    inner join (select year(calendar_day) calendar_day_yr,
		                   month(calendar_day) calendar_day_month,
								min(b0.calendar_day) as biz_month_start --get first day of the month that is not a weekend or holiday
								, min(b0.working_day_running) as first_biz_day_running
								, max(b0.calendar_day) as biz_month_end --get last day of the month that is not a weekend or holiday
								, max(b0.working_day_running) as last_biz_day_running
							from rct.vw_map_daily_calendar as b0
							where
							b0.is_weekend = 0
								and b0.is_holiday = 0
						    group by 1,2) as b
		on year(a.calendar_day)=calendar_day_yr and month(a.calendar_day)=calendar_day_month
		left join (select working_day_running-5 as workingdayminus5,
								   
		                  max(c0.calendar_day) as biz_day_plus_5,
						  max(c0.working_day_running) as biz_day_plus_5_running
						  from rct.vw_map_daily_calendar as c0
				   group by 1) as c
		on a.working_day_running=c.workingdayminus5
		left join (select d0.working_day_running - 10 as workingdayminus10,
						  max(d0.calendar_day) as biz_day_plus_10,
						  max(d0.working_day_running) as biz_day_plus_10_running
				   from rct.vw_map_daily_calendar as d0
				   group by 1 ) as d
		on a.working_day_running=d.workingdayminus10
		left join (select e0.working_day_running - 20 as workingdayminus20,
						  max(e0.calendar_day) as biz_day_plus_20
						, max(e0.working_day_running) as biz_day_plus_20_running
					from rct.vw_map_daily_calendar as e0
					group by 1) as e
        on  a.working_day_running=e.workingdayminus20
		left join ( select f0.working_day_running + 5 as workingdayplus5,
			              min(f0.calendar_day) as biz_day_minus_5
						, min(f0.working_day_running) as biz_day_minus_5_running
					from rct.vw_map_daily_calendar as f0
					group by 1) as f
		on a.working_day_running=f.workingdayplus5
	    left join ( select g0.working_day_running + 10 workdayplus10,
					min(g0.calendar_day) as biz_day_minus_10
				  , min(g0.working_day_running) as biz_day_minus_10_running
					from rct.vw_map_daily_calendar as g0
					group by 1 ) as g
		on a.working_day_running=g.workdayplus10
	    left join ( select h0.working_day_running + 20 as workdayplus20,
						min(h0.calendar_day) as biz_day_minus_20
						,min(h0.working_day_running) as biz_day_minus_20_running
					from rct.vw_map_daily_calendar as h0
					group by 1 ) as h	
		on a.working_day_running=h.workdayplus20
	)

	, recruiters_by_month AS (
		SELECT a.preferred_name AS recruiter
			, a.employee_id AS recruiter_employee_id
			, a.business_title AS recruiter_title
			, a.management_level AS recruiter_management_level
			, a.workers_manager AS recruiter_manager
			, a.data_as_of AS data_as_of_date
			, a.currently_active AS recruiter_currently_active
			, a.user_id as recruiter_user_id
			, a.min_hire_date
			, a.level_04_name AS recruiter_level_04_name
			, a.level_04_user_id AS recruiter_level_04_user_id
			, a.level_05_name AS recruiter_level_05_name
			, a.level_05_user_id AS recruiter_level_05_user_id
			, a.level_06_name AS recruiter_level_06_name
			, a.level_06_user_id AS recruiter_level_06_user_id
			, a.level_07_name AS recruiter_level_07_name
			, a.level_07_user_id AS recruiter_level_07_user_id
			, a.level_08_name AS recruiter_level_08_name
			, a.level_08_user_id AS recruiter_level_08_user_id
			, a.level_09_name AS recruiter_level_09_name
			, a.level_09_user_id AS recruiter_level_09_user_id
			, a.nbr_employee_directs AS recruiter_nbr_employee_directs
			, a.nbr_contingent_directs AS recruiter_nbr_contingent_directs
			, b.calendar_day AS scorecard_month_start
			, last_day(b.calendar_day) as scorecard_month_end
		from rct.vw_bu_all_recruiters as a
			cross join rct.vw_map_daily_calendar as b
		where day(b.calendar_day) = 1
		    and b.calendar_day >= '2019-01-01'
			and b.calendar_day <= '2019-12-31'
	)

	, recruiters_by_month_by_intv_type AS (
		SELECT 'Recruiter Screen' AS interview_type
		, a.*
		FROM recruiters_by_month AS a
		UNION ALL
		SELECT 'Phone Interview / Tech Screen' AS interview_type
		, a.*
		FROM recruiters_by_month AS a
		UNION ALL
		SELECT 'Onsite Interview' AS interview_type
		, a.*
		FROM recruiters_by_month AS a
	)

	, recruiter_review_data AS (
		SELECT a.application_date
		, a.candidate_email
		, a.candidate_name
		, a.requisition_id
		, a.job_title
		, a.hiring_manager
		, a.source_category
		, a.source
		, a.application_workday_id
		, b.working_day_running AS application_date_day_number
		, b.biz_day_plus_10 AS review_stage_10_day_deadline
		, b.biz_day_plus_10_running AS review_stage_10_day_deadline_day_number
		, b.biz_day_plus_20 AS review_stage_20_day_deadline
		, b.biz_day_plus_20_running AS review_stage_20_day_deadline_day_number
		, a.second_stage_created AS review_stage_completed_date  
		, c.working_day_running AS review_stage_completed_day_number 
		, a.recruiter AS credited_recruiter
		, a.recruiter_employee_id AS credited_recruiter_employee_id
		, a.current_candidate_stage
		, a.second_candidate_stage
		, a.application_created_by_candidate_yn

		from rct.vw_map_workday_review_stage as a
			INNER JOIN calendar_dates as b --join to get deadline dates
				ON a.application_date = b.calendar_day
				left join rct.vw_map_daily_calendar as c --get running day for the review stage completed
                on a.second_stage_created = c.calendar_day
		WHERE a.application_created_by_candidate_yn = '1'
	)

	, interview_feedback AS (
		SELECT a.interview_event_workday_id
			, b.worker AS interviewer
			, a.interviewer_employee_id
			, a.interview_session_type
			, a.interviewer_rating
		from rct.vw_bu_workday_interview_details as a
			inner join rct.vw_bu_all_recruiters as b
				ON a.interviewer_employee_id = b.employee_id
		WHERE (a.funnel_activity = 'Onsite Interview'
				AND a.interview_session_type = 'Debrief')
			OR a.funnel_activity = 'Recruiter Screen'
	)

	, pits_feedback AS (
		SELECT a.interview_event_workday_id
			, a.interviewer_rating
			, ROW_NUMBER() OVER (PARTITION BY a.interview_event_workday_id ORDER BY a.moment_feedback_submitted DESC) AS row_nbr
		from rct.vw_bu_workday_interview_details as a
		WHERE a.interviewer_rating IS NOT NULL
			AND a.funnel_activity IN ('Phone Interview', 'Tech Screen','Coding Assessment Review')
		)

	, feedback_counts AS (
		SELECT a.interview_event_workday_id
			, a.funnel_activity AS interview_type
			, a.funnel_activity_date AS interview_date
			, a.interview_event_date_and_time_completed
			, a.candidate_email
			, a.requisition_id
			, SUM(CASE
				WHEN b.interview_session_type <> 'Lunch'
					AND b.interviewer_rating IS NOT NULL
					THEN 1
					ELSE 0
					END) AS total_nbr_rating
			, SUM(CASE
				WHEN b.interview_session_type = 'Debrief'
					AND b.interviewer_rating = 'Hire'
					THEN 1
					ELSE 0
					END) AS nbr_debrief_hire_rating
			, SUM(CASE
				WHEN b.interview_session_type = 'Debrief'
					AND b.interviewer_rating = 'No Hire'
					THEN 1
					ELSE 0
					END) AS nbr_debrief_no_hire_rating
			, SUM(CASE
				WHEN b.interview_session_type = 'Debrief'
					AND b.interviewer_rating IS NOT NULL
					THEN 1
					ELSE 0
					END) AS total_debrief_rating
			, SUM(CASE
				WHEN b.interview_session_type NOT IN ('Debrief', 'Lunch')
					AND b.interviewer_rating = 'Hire'
					THEN 1
					ELSE 0
					END) AS nbr_interviewer_hire_rating
			, SUM(CASE
				WHEN b.interview_session_type NOT IN ('Debrief', 'Lunch')
					AND b.interviewer_rating = 'No Hire'
					THEN 1
					ELSE 0
					END) AS nbr_interviewer_no_hire_rating
		from rct.vw_map_workday_all_interviews as a
			left join rct.vw_bu_interview_details as b
			ON a.interview_event_workday_id = b.iv_event_id
		GROUP BY a.interview_event_workday_id
			, a.funnel_activity
			, a.funnel_activity_date
			, a.interview_event_date_and_time_completed
			, a.candidate_email
			, a.requisition_id
		)

	, interview_data AS (
		SELECT a.funnel_activity_date AS interview_date
		, CASE
				WHEN a.funnel_activity = 'Internal Mobility Screen'
					THEN 'Recruiter Screen'
				WHEN a.funnel_activity IN ('Phone Interview', 'Tech Screen','Coding Assessment Review')
					THEN 'Phone Interview / Tech Screen'
				ELSE a.funnel_activity
			END AS interview_type
		, a.candidate_email
		, a.candidate_name
		, a.requisition_id
		, d.job_posting_title AS job_title
		, d.hiring_manager
		, a.source_category
		, a.source
		, a.interview_event_workday_id AS event_workday_id
		, b.working_day_running AS interview_date_day_number
		, b.biz_day_plus_5 AS interview_5_day_deadline
		, b.biz_day_plus_5_running AS interview_5_day_deadline_day_number
		, b.biz_day_plus_10 AS interview_10_day_deadline
		, b.biz_day_plus_10_running AS interview_10_day_deadline_day_number
		, CAST(a.interview_event_date_and_time_completed AS DATE) AS interview_completed_date 
		, c.working_day_running AS interview_completed_day_number 
		, COALESCE(e.interviewer, a.interview_event_initiator) AS credited_recruiter
		, COALESCE(e.interviewer_employee_id, a.interview_event_initiator_employee_id) as credited_recruiter_employee_id
		, a.candidate_stage AS current_candidate_stage
		, e.interview_session_type
		, COALESCE(e.interviewer_rating, f.interviewer_rating) AS interviewer_rating
		, a.interview_event_date_and_time_completed
		from rct.vw_map_workday_all_interviews as a
			INNER JOIN calendar_dates as b --join to get deadline dates
				ON a.funnel_activity_date = b.calendar_day
			inner join rct.vw_map_workday_requisitions as d
				ON a.requisition_id = d.requisition_id
			left join rct.vw_map_daily_calendar as c --get running day for the review stage completed
				ON CAST(a.interview_event_date_and_time_completed AS DATE) = c.calendar_day
			LEFT JOIN interview_feedback AS e
				ON a.interview_event_workday_id = e.interview_event_workday_id
			LEFT JOIN pits_feedback AS f
				ON a.interview_event_workday_id = f.interview_event_workday_id
					AND f.row_nbr = 1
		WHERE a.interview_started_before_completed = 'Yes'
	)

	, offer_accept_data AS (
		SELECT a.candidate_email
		, a.candidate_name
		, a.candidate_start_date
		, a.requisition_id
		, a.job_posting_title AS job_title
		, a.hiring_manager
		, a.source_category
		, a.source
		, a.workday_application_id
		, a.candidate_stage AS current_candidate_stage
		, a.worker_type
		, a.worker_sub_type
		, offer_accept_date
		, ready_for_hire_date
		, CASE
				WHEN a.worker_type = 'Employee'
					THEN COALESCE(a.first_submitted_offer_initiator_employee_id,a.first_offer_initiated_by_employee_id, a.ready_for_hire_initiator_employee_id)
				WHEN a.worker_type = 'Contingent Worker'
					THEN a.ready_for_hire_initiator_employee_id
			END AS credited_recruiter_employee_id
		, COALESCE(offer_accept_date, ready_for_hire_date) AS oa_or_rfh_date
		, CASE
				WHEN a.worker_type = 'Employee'
					AND a.first_submitted_offer_initiator_employee_id IS NOT NULL
					THEN 'Yes'
				WHEN a.worker_type = 'Contingent Worker'
					THEN 'n/a'
				ELSE 'No'
			END AS offer_details_submitted_yn
		from rct.vw_map_workday_all_offers as a
		WHERE a.funnel_activity = 'Offer Accepted'
	)

	, offer_decline_data AS (
		SELECT a.candidate_email
		, a.candidate_name
		, a.requisition_id
		, a.job_posting_title AS job_title
		, a.hiring_manager
		, a.source_category
		, a.source
		, a.workday_application_id
		, a.candidate_stage AS current_candidate_stage
		, a.worker_type
		, a.worker_sub_type
		, CAST(a.date_and_time_completed AS DATE) AS offer_decline_date
		, COALESCE (a.first_submitted_offer_initiator_employee_id
						, a.first_offer_initiated_by_employee_id) AS credited_recruiter_employee_id
		, CASE
				WHEN a.worker_type = 'Employee'
					AND a.first_submitted_offer_initiator_employee_id IS NOT NULL
					THEN 'Yes'
				WHEN a.worker_type = 'Contingent Worker'
					THEN 'n/a'
				ELSE 'No'
			END AS offer_details_submitted_yn
		from rct.vw_map_workday_all_offers as a
		WHERE a.funnel_activity = 'Offer Declined'

		UNION ALL

		SELECT b.candidate_email
		, b.candidate_name
		, b.requisition_id
		, c.job_posting_title AS job_title
		, c.hiring_manager
		, NULL AS source_category
		, NULL AS source
		, b.workday_application_id
		, c.worker_type
		, c.worker_sub_type
		, 'Declined by Candidate' AS current_candidate_stage
		, b.funnel_activity_date AS offer_decline_date
		, b.offer_initiator_employee_id AS credited_recruiter_employee_id
		, NULL AS offer_details_submitted_yn
		from recruitingdb.v_manual_offer_declines as b
		inner join rct.vw_map_workday_requisitions as c
			ON b.requisition_id = c.requisition_id
	)


	, candidate_activity_interview_to_offer AS (
		SELECT a.interview_id
			, a.candidate_email
			, a.requisition_id
			, a.first_accept_last_decline
			, a.orphan_first_accept_last_decline
			, a.orphan_offer_requisition_id
			, COALESCE(b.offer_details_submitted_yn, c.offer_details_submitted_yn, d.offer_details_submitted_yn, e.offer_details_submitted_yn) AS offer_details_submitted_yn
		from workday_report.t_candidate_activity_master as a

			LEFT JOIN offer_accept_data AS b
				ON a.candidate_email = b.candidate_email
					AND a.requisition_id = b.requisition_id
			LEFT JOIN offer_decline_data AS c
				ON a.candidate_email = c.candidate_email
					AND a.requisition_id = c.requisition_id
			LEFT JOIN offer_accept_data AS d
				ON a.candidate_email = d.candidate_email
					AND a.orphan_offer_requisition_id = d.requisition_id
			LEFT JOIN offer_decline_data AS e
				ON a.candidate_email = e.candidate_email
					AND a.orphan_offer_requisition_id = e.requisition_id

		WHERE a.funnel_activity_date >= '2019-01-01'
	)
------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------

--Review Stage 10-Day


SELECT 'Time in Stage' AS metric_category
	, 'Applications' AS metric_stage
	, 'Resume Review' AS metric_group
	, 'RR 10 DAY' AS metric_name
	, 'Resume Review' AS activity
	, a.scorecard_month_start
	, a.scorecard_month_end
	, a.data_as_of_date
	, b.candidate_email
	, b.candidate_name
	, b.requisition_id
	, b.job_title
	, b.hiring_manager
	, b.source_category
	, b.source
	, b.application_workday_id AS unique_id
	, b.current_candidate_stage
	, CAST(NULL AS DATE) AS candidate_start_date
	, a.recruiter AS credited_recruiter
	, a.recruiter_employee_id AS credited_recruiter_employee_id
	, e.working_day_running AS data_as_of_day_running
	, e.biz_day_minus_10 AS activity_thru_date
	, d.biz_day_plus_10 AS month_close_date
	, b.application_date AS first_activity_date
	, b.application_date_day_number AS first_activity_day_number
	, b.review_stage_10_day_deadline AS deadline_date
	, b.review_stage_completed_date AS second_activity_date
	, b.review_stage_completed_day_number AS second_activity_day_number
	, COALESCE(b.review_stage_completed_day_number,e.working_day_running+1) - b.application_date_day_number AS days_elapsed
	, CASE
			WHEN COALESCE(b.review_stage_completed_day_number,e.working_day_running+1) - b.application_date_day_number <=10 
				AND b.review_stage_completed_date IS NOT NULL
				AND a.data_as_of_date >= b.review_stage_10_day_deadline
				THEN 'PASS'
			WHEN COALESCE(b.review_stage_completed_day_number,e.working_day_running+1) - b.application_date_day_number > 10 
				AND a.data_as_of_date >= b.review_stage_10_day_deadline
				THEN 'FAIL'
			WHEN b.review_stage_completed_date IS NOT NULL
				AND a.data_as_of_date < b.review_stage_10_day_deadline
				THEN 'COMPLETE'
			WHEN b.review_stage_completed_date IS NULL 
				AND a.data_as_of_date < b.review_stage_10_day_deadline
				THEN 'INCOMPLETE'
		END AS metric_status
	, CASE 
			WHEN b.application_date IS NOT NULL 
				THEN 1 
			ELSE 0
		END AS metric_count
	, CASE
			WHEN COALESCE(b.review_stage_completed_day_number,e.working_day_running+1) - b.application_date_day_number <=10 
				AND b.review_stage_completed_date IS NOT NULL
				AND a.data_as_of_date >= b.review_stage_10_day_deadline
				THEN 1 
		END AS pass_count
	, CASE
			WHEN COALESCE(b.review_stage_completed_day_number,e.working_day_running+1) - b.application_date_day_number > 10 
				AND a.data_as_of_date >= b.review_stage_10_day_deadline
				THEN 1
		END AS fail_count
	, CASE
			WHEN b.review_stage_completed_date IS NOT NULL
				AND a.data_as_of_date < b.review_stage_10_day_deadline
				THEN 1 
		END AS complete_count
	, CASE
			WHEN b.review_stage_completed_date IS NULL 
				AND a.data_as_of_date < b.review_stage_10_day_deadline
				THEN 1 
		END AS incomplete_count

	, CASE
			WHEN a.data_as_of_date >= a.scorecard_month_start 
				THEN 1 
			ELSE 0
		END AS include_month
	, CAST(10 AS INT) AS tis_target_days
	, CAST(0.90 AS decimal(3,2)) AS tis_target_pct
	, NULL AS offer_on_requisition_id
	, NULL AS interview_session_type
	, NULL AS interviewer_rating
	, CAST(NULL AS DATE) AS offer_accept_date
	, CAST(NULL AS DATE) AS ready_for_hire_date
	, NULL AS offer_details_submitted_yn
	, NULL AS worker_type
	, NULL AS worker_sub_type
	, a.recruiter_currently_active
	, a.recruiter_title
	, a.recruiter_management_level
	, a.recruiter_user_id
	, a.recruiter_manager
	, a.recruiter_level_04_name
	, a.recruiter_level_04_user_id
	, a.recruiter_level_05_name
	, a.recruiter_level_05_user_id
	, a.recruiter_level_06_name
	, a.recruiter_level_06_user_id
	, a.recruiter_level_07_name
	, a.recruiter_level_07_user_id
	, a.recruiter_level_08_name
	, a.recruiter_level_08_user_id
	, a.recruiter_level_09_name
	, a.recruiter_level_09_user_id
	, a.recruiter_nbr_employee_directs
	, a.recruiter_nbr_contingent_directs

FROM recruiters_by_month AS a
	LEFT JOIN recruiter_review_data AS b
		ON a.recruiter_employee_id = b.credited_recruiter_employee_id
			AND	a.scorecard_month_start <= b.application_date
			AND a.scorecard_month_end >= b.application_date
			AND b.application_date > a.min_hire_date
	LEFT JOIN calendar_dates AS c
		ON a.scorecard_month_start = c.calendar_day
	LEFT JOIN calendar_dates AS d
		ON a.scorecard_month_end = d.calendar_day
	LEFT JOIN calendar_dates AS e
		ON a.data_as_of_date = e.calendar_day


UNION ALL

--Review Stage 20-Day
SELECT 'Time in Stage' AS metric_category
	, 'Applications' AS metric_stage
	, 'Resume Review' AS metric_group
	, 'RR 20 DAY' AS metric_name
	, 'Resume Review' AS activity
	, a.scorecard_month_start
	, a.scorecard_month_end
	, a.data_as_of_date
	, b.candidate_email
	, b.candidate_name
	, b.requisition_id
	, b.job_title
	, b.hiring_manager
	, b.source_category
	, b.source
	, b.application_workday_id AS unique_id
	, b.current_candidate_stage
	, CAST(NULL AS DATE) AS candidate_start_date
	, a.recruiter AS credited_recruiter
	, a.recruiter_employee_id AS credited_recruiter_employee_id
	, e.working_day_running AS data_as_of_day_running
	, e.biz_day_minus_20 AS activity_thru_date
	, d.biz_day_plus_20 AS month_close_date
	, b.application_date AS first_activity_date
	, b.application_date_day_number AS first_activity_day_number
	, b.review_stage_20_day_deadline AS deadline_date
	, b.review_stage_completed_date AS second_activity_date
	, b.review_stage_completed_day_number AS second_activity_day_number
	, COALESCE(b.review_stage_completed_day_number,e.working_day_running+1) - b.application_date_day_number AS days_elapsed
	, CASE
			WHEN COALESCE(b.review_stage_completed_day_number,e.working_day_running+1) - b.application_date_day_number <=20 
				AND b.review_stage_completed_date IS NOT NULL
				AND a.data_as_of_date >= b.review_stage_20_day_deadline
				THEN 'PASS'
			WHEN COALESCE(b.review_stage_completed_day_number,e.working_day_running+1) - b.application_date_day_number > 20 
				AND a.data_as_of_date >= b.review_stage_20_day_deadline
				THEN 'FAIL'
			WHEN b.review_stage_completed_date IS NOT NULL
				AND a.data_as_of_date < b.review_stage_20_day_deadline
				THEN 'COMPLETE'
			WHEN b.review_stage_completed_date IS NULL 
				AND a.data_as_of_date < b.review_stage_20_day_deadline
				THEN 'INCOMPLETE'
		END AS metric_status
	, CASE 
			WHEN b.application_date IS NOT NULL 
				THEN 1 
			ELSE 0
		END AS metric_count
	, CASE
			WHEN COALESCE(b.review_stage_completed_day_number,e.working_day_running+1) - b.application_date_day_number <=20 
				AND b.review_stage_completed_date IS NOT NULL
				AND a.data_as_of_date >= b.review_stage_20_day_deadline
				THEN 1 
		END AS pass_count
	, CASE
			WHEN COALESCE(b.review_stage_completed_day_number,e.working_day_running+1) - b.application_date_day_number > 20 
				AND a.data_as_of_date >= b.review_stage_20_day_deadline
				THEN 1
		END AS fail_count
	, CASE
			WHEN b.review_stage_completed_date IS NOT NULL
				AND a.data_as_of_date < b.review_stage_20_day_deadline
				THEN 1 
		END AS complete_count
	, CASE
			WHEN b.review_stage_completed_date IS NULL 
				AND a.data_as_of_date < b.review_stage_20_day_deadline
				THEN 1 
		END AS incomplete_count

	, CASE
			WHEN a.data_as_of_date >= a.scorecard_month_start 
				THEN 1 
			ELSE 0
		END AS include_month
	, CAST(20 AS INT) AS tis_target_days
	, CAST(0.99 AS decimal(3,2)) AS tis_target_pct
	, NULL AS offer_on_requisition_id
	, NULL AS interview_session_type
	, NULL AS interviewer_rating
	, CAST(NULL AS DATE) AS offer_accept_date
	, CAST(NULL AS DATE) AS ready_for_hire_date
	, NULL AS offer_details_submitted_yn
	, NULL AS worker_type
	, NULL AS worker_sub_type
	, a.recruiter_currently_active
	, a.recruiter_title
	, a.recruiter_management_level
	, a.recruiter_user_id
	, a.recruiter_manager
	, a.recruiter_level_04_name
	, a.recruiter_level_04_user_id
	, a.recruiter_level_05_name
	, a.recruiter_level_05_user_id
	, a.recruiter_level_06_name
	, a.recruiter_level_06_user_id
	, a.recruiter_level_07_name
	, a.recruiter_level_07_user_id
	, a.recruiter_level_08_name
	, a.recruiter_level_08_user_id
	, a.recruiter_level_09_name
	, a.recruiter_level_09_user_id
	, a.recruiter_nbr_employee_directs
	, a.recruiter_nbr_contingent_directs

FROM recruiters_by_month AS a
	LEFT JOIN recruiter_review_data AS b
		ON a.recruiter_employee_id = b.credited_recruiter_employee_id
			AND	a.scorecard_month_start <= b.application_date
			AND a.scorecard_month_end >= b.application_date
			AND b.application_date > a.min_hire_date

	LEFT JOIN calendar_dates AS c
		ON a.scorecard_month_start = c.calendar_day
	LEFT JOIN calendar_dates AS d
		ON a.scorecard_month_end = d.calendar_day
	LEFT JOIN calendar_dates AS e
		ON a.data_as_of_date = e.calendar_day


UNION ALL
--INTERVIEW 5-DAY
SELECT 'Time in Stage' AS metric_category
	, 'Scheduled '|| a.interview_type || 's' AS metric_stage
	, a.interview_type AS metric_group
	, 'INTV 5 DAY' AS metric_name
	, a.interview_type AS activity
	, a.scorecard_month_start
	, a.scorecard_month_end
	, a.data_as_of_date
	, b.candidate_email
	, b.candidate_name
	, b.requisition_id
	, b.job_title
	, b.hiring_manager
	, b.source_category
	, b.source
	, b.event_workday_id AS unique_id
	, b.current_candidate_stage
	, CAST(NULL AS DATE) AS candidate_start_date
	, a.recruiter AS credited_recruiter
	, a.recruiter_employee_id AS credited_recruiter_employee_id
	, e.working_day_running AS data_as_of_day_running
	, e.biz_day_minus_5 AS activity_thru_date
	, d.biz_day_plus_5 AS month_close_date
	, b.interview_date AS first_activity_date
	, b.interview_date_day_number AS first_activity_day_number
	, b.interview_5_day_deadline AS deadline_date
	, b.interview_completed_date AS second_activity_date
	, b.interview_completed_day_number AS second_activity_day_number
	, COALESCE(b.interview_completed_day_number,e.working_day_running+1) - b.interview_date_day_number AS days_elapsed
	, CASE
			WHEN COALESCE(b.interview_completed_day_number,e.working_day_running+1) - b.interview_date_day_number <=5 
				AND b.interview_completed_date IS NOT NULL
				AND a.data_as_of_date >= b.interview_5_day_deadline
				THEN 'PASS'
			WHEN COALESCE(b.interview_completed_day_number,e.working_day_running+1) - b.interview_date_day_number > 5 
				AND a.data_as_of_date >= b.interview_5_day_deadline
				THEN 'FAIL'
			WHEN b.interview_completed_date IS NOT NULL
				AND a.data_as_of_date < b.interview_5_day_deadline
				THEN 'COMPLETE'
			WHEN b.interview_completed_date IS NULL
				AND a.data_as_of_date < b.interview_5_day_deadline
			THEN 'INCOMPLETE'
		END AS metric_status
	, CASE 
			WHEN b.interview_date IS NOT NULL 
				THEN 1 
			ELSE 0
		END AS metric_count
	, CASE
			WHEN COALESCE(b.interview_completed_day_number,e.working_day_running+1) - b.interview_date_day_number <=5 
				AND b.interview_completed_date IS NOT NULL
				AND a.data_as_of_date >= b.interview_5_day_deadline
				THEN 1 
		END AS pass_count
	, CASE
			WHEN COALESCE(b.interview_completed_day_number,e.working_day_running+1) - b.interview_date_day_number > 5 
				AND a.data_as_of_date >= b.interview_5_day_deadline
				THEN 1
		END AS fail_count
	, CASE
			WHEN b.interview_completed_date IS NOT NULL
				AND a.data_as_of_date < b.interview_5_day_deadline
				THEN 1 
		END AS complete_count
	, CASE
			WHEN b.interview_completed_date IS NULL
				AND a.data_as_of_date < b.interview_5_day_deadline
				THEN 1 
		END AS incomplete_count
	, CASE
			WHEN a.data_as_of_date >= a.scorecard_month_start 
				THEN 1 
			ELSE 0
		END AS include_month
	, CAST(5 AS INT) AS tis_target_days
	, CAST(0.90 AS decimal(3,2)) AS tis_target_pct
	, NULL AS offer_on_requisition_id
	, NULL AS interview_session_type
	, b.interviewer_rating
	, CAST(NULL AS DATE) AS offer_accept_date
	, CAST(NULL AS DATE) AS ready_for_hire_date
	, NULL AS offer_details_submitted_yn
	, NULL AS worker_type	
	, NULL AS worker_sub_type
	, a.recruiter_currently_active
	, a.recruiter_title
	, a.recruiter_management_level
	, a.recruiter_user_id
	, a.recruiter_manager
	, a.recruiter_level_04_name
	, a.recruiter_level_04_user_id
	, a.recruiter_level_05_name
	, a.recruiter_level_05_user_id
	, a.recruiter_level_06_name
	, a.recruiter_level_06_user_id
	, a.recruiter_level_07_name
	, a.recruiter_level_07_user_id
	, a.recruiter_level_08_name
	, a.recruiter_level_08_user_id
	, a.recruiter_level_09_name
	, a.recruiter_level_09_user_id
	, a.recruiter_nbr_employee_directs
	, a.recruiter_nbr_contingent_directs

FROM recruiters_by_month_by_intv_type AS a
	LEFT JOIN interview_data AS b
		ON a.recruiter_employee_id = b.credited_recruiter_employee_id
			AND	a.scorecard_month_start <= b.interview_date
			AND a.scorecard_month_end >= b.interview_date
			AND a.interview_type = b.interview_type
			AND b.interview_type IS NOT NULL
			AND b.interview_date <= a.data_as_of_date --this is NOT temporary
	LEFT JOIN calendar_dates AS c
		ON a.scorecard_month_start = c.calendar_day
	LEFT JOIN calendar_dates AS d
		ON a.scorecard_month_end = d.calendar_day
	LEFT JOIN calendar_dates AS e
		ON a.data_as_of_date = e.calendar_day

UNION ALL
--INTERVIEW 10-DAY
SELECT 'Time in Stage' AS metric_category
	, 'Scheduled '|| a.interview_type || 's' AS metric_stage
	, a.interview_type AS metric_group
	, 'INTV 10 DAY' AS metric_name
	, NULL AS activity
	, a.scorecard_month_start
	, a.scorecard_month_end
	, a.data_as_of_date
	, b.candidate_email
	, b.candidate_name
	, b.requisition_id
	, b.job_title
	, b.hiring_manager
	, b.source_category
	, b.source
	, b.event_workday_id AS unique_id
	, b.current_candidate_stage
	, CAST(NULL AS DATE) AS candidate_start_date
	, a.recruiter AS credited_recruiter
	, a.recruiter_employee_id AS credited_recruiter_employee_id
	, e.working_day_running AS data_as_of_day_running
	, e.biz_day_minus_10 AS activity_thru_date
	, d.biz_day_plus_10 AS month_close_date
	, b.interview_date AS first_activity_date
	, b.interview_date_day_number AS first_activity_day_number
	, b.interview_10_day_deadline AS deadline_date
	, b.interview_completed_date AS second_activity_date
	, b.interview_completed_day_number AS second_activity_day_number
	, COALESCE(b.interview_completed_day_number,e.working_day_running+1) - b.interview_date_day_number AS days_elapsed

	, CASE
			WHEN COALESCE(b.interview_completed_day_number,e.working_day_running+1) - b.interview_date_day_number <=10 
				AND b.interview_completed_date IS NOT NULL
				AND a.data_as_of_date >= b.interview_10_day_deadline
				THEN 'PASS'
			WHEN COALESCE(b.interview_completed_day_number,e.working_day_running+1) - b.interview_date_day_number > 10 
				AND a.data_as_of_date >= b.interview_10_day_deadline
				THEN 'FAIL'
			WHEN b.interview_completed_date IS NOT NULL
				AND a.data_as_of_date < b.interview_10_day_deadline
				THEN 'COMPLETE'
			WHEN b.interview_completed_date IS NULL
				AND a.data_as_of_date < b.interview_10_day_deadline
			THEN 'INCOMPLETE'
		END AS metric_status
	, CASE 
			WHEN b.interview_date IS NOT NULL 
				THEN 1 
			ELSE 0
		END AS metric_count
	, CASE
			WHEN COALESCE(b.interview_completed_day_number,e.working_day_running+1) - b.interview_date_day_number <=10 
				AND b.interview_completed_date IS NOT NULL
				AND a.data_as_of_date >= b.interview_10_day_deadline
				THEN 1 
		END AS pass_count
	, CASE
			WHEN COALESCE(b.interview_completed_day_number,e.working_day_running+1) - b.interview_date_day_number > 10 
				AND a.data_as_of_date >= b.interview_10_day_deadline
				THEN 1
		END AS fail_count
	, CASE
			WHEN b.interview_completed_date IS NOT NULL
				AND a.data_as_of_date < b.interview_10_day_deadline
				THEN 1 
		END AS complete_count
	, CASE
			WHEN b.interview_completed_date IS NULL
				AND a.data_as_of_date < b.interview_10_day_deadline
				THEN 1 
		END AS incomplete_count
	, CASE
			WHEN a.data_as_of_date >= a.scorecard_month_start 
				THEN 1 
			ELSE 0
		END AS include_month
	, CAST(10 AS INT) AS tis_target_days
	, CAST(0.99 AS decimal(3,2)) AS tis_target_pct
	, NULL AS offer_on_requisition_id
	, NULL AS interview_session_type
	, b.interviewer_rating
	, CAST(NULL AS DATE) AS offer_accept_date
	, CAST(NULL AS DATE) AS ready_for_hire_date
	, NULL AS offer_details_submitted_yn
	, NULL AS worker_type
	, NULL AS worker_sub_type
	, a.recruiter_currently_active
	, a.recruiter_title
	, a.recruiter_management_level
	, a.recruiter_user_id
	, a.recruiter_manager
	, a.recruiter_level_04_name
	, a.recruiter_level_04_user_id
	, a.recruiter_level_05_name
	, a.recruiter_level_05_user_id
	, a.recruiter_level_06_name
	, a.recruiter_level_06_user_id
	, a.recruiter_level_07_name
	, a.recruiter_level_07_user_id
	, a.recruiter_level_08_name
	, a.recruiter_level_08_user_id
	, a.recruiter_level_09_name
	, a.recruiter_level_09_user_id
	, a.recruiter_nbr_employee_directs
	, a.recruiter_nbr_contingent_directs

FROM recruiters_by_month_by_intv_type AS a
	LEFT JOIN interview_data AS b
		ON a.recruiter_employee_id = b.credited_recruiter_employee_id
			AND	a.scorecard_month_start <= b.interview_date
			AND a.scorecard_month_end >= b.interview_date
			AND a.interview_type = b.interview_type
			AND b.interview_type IS NOT NULL
			AND b.interview_date <= a.data_as_of_date --this is NOT temporary
	LEFT JOIN calendar_dates AS c
		ON a.scorecard_month_start = c.calendar_day
	LEFT JOIN calendar_dates AS d
		ON a.scorecard_month_end = d.calendar_day
	LEFT JOIN calendar_dates AS e
		ON a.data_as_of_date = e.calendar_day

UNION ALL
--OFFER ACCEPTS
SELECT 'Funnel Metrics' AS metric_category
	, 'Offer' AS metric_stage
	, 'Offers Accepted' AS metric_group
	, 'OA' AS metric_name
	, 'Offer Accepted' AS activity
	, a.scorecard_month_start
	, a.scorecard_month_end
	, a.data_as_of_date
	, b.candidate_email
	, b.candidate_name
	, b.requisition_id
	, b.job_title
	, b.hiring_manager
	, b.source_category
	, b.source
	, b.workday_application_id AS unique_id
	, b.current_candidate_stage
	, b.candidate_start_date
	, a.recruiter AS credited_recruiter
	, a.recruiter_employee_id AS credited_recruiter_employee_id
	, NULL AS data_as_of_day_running
	, a.data_as_of_date AS activity_thru_date
	, a.scorecard_month_end AS month_close_date
	, b.oa_or_rfh_date AS first_activity_date
	, NULL AS first_activity_day_number
	, a.data_as_of_date AS deadline_date
	, NULL AS second_activity_date
	, NULL AS second_activity_day_number
	, NULL AS days_elapsed
	, NULL AS metric_status
	, CASE
			WHEN b.oa_or_rfh_date IS NOT NULL
				THEN 1
			ELSE 0 
		END AS metric_count
	, CASE 
			WHEN b.worker_type = 'Employee' AND b.offer_accept_date IS NOT NULL 
				THEN 1 
			WHEN b.worker_type = 'Contingent Worker' AND b.ready_for_hire_date IS NOT NULL
				THEN 1
			ELSE 0
		END AS pass_count
	, CASE 
			WHEN b.worker_type = 'Employee' AND b.offer_accept_date IS NULL 
				THEN 1  
			ELSE 0
		END AS fail_count
	, NULL AS complete_count
	, NULL AS incomplete_count
	, CASE
			WHEN a.data_as_of_date >= a.scorecard_month_start 
				THEN 1 
			ELSE 0
		END AS include_month
	, NULL AS tis_target_days
	, NULL AS tis_target_pct
	, NULL AS offer_on_requisition_id
	, NULL AS interview_session_type
	, NULL AS interviewer_rating
	, b.offer_accept_date
	, b.ready_for_hire_date
	, b.offer_details_submitted_yn
	, b.worker_type
	, b.worker_sub_type
	, a.recruiter_currently_active
	, a.recruiter_title
	, a.recruiter_management_level
	, a.recruiter_user_id
	, a.recruiter_manager
	, a.recruiter_level_04_name
	, a.recruiter_level_04_user_id
	, a.recruiter_level_05_name
	, a.recruiter_level_05_user_id
	, a.recruiter_level_06_name
	, a.recruiter_level_06_user_id
	, a.recruiter_level_07_name
	, a.recruiter_level_07_user_id
	, a.recruiter_level_08_name
	, a.recruiter_level_08_user_id
	, a.recruiter_level_09_name
	, a.recruiter_level_09_user_id
	, a.recruiter_nbr_employee_directs
	, a.recruiter_nbr_contingent_directs

FROM recruiters_by_month AS a
	LEFT JOIN offer_accept_data AS b
		ON a.recruiter_employee_id = b.credited_recruiter_employee_id
			AND	a.scorecard_month_start <= b.oa_or_rfh_date
			AND a.scorecard_month_end >= b.oa_or_rfh_date

UNION ALL
--OFFER DECLINES
SELECT 'Funnel Metrics' AS metric_category
	, 'Offer' AS metric_stage
	, 'Offers Declined' AS metric_group
	, 'OD' AS metric_name
	, 'Offer Declined' AS activity
	, a.scorecard_month_start
	, a.scorecard_month_end
	, a.data_as_of_date
	, b.candidate_email
	, b.candidate_name
	, b.requisition_id
	, b.job_title
	, b.hiring_manager
	, b.source_category
	, b.source
	, b.workday_application_id AS unique_id
	, b.current_candidate_stage
	, CAST(NULL AS DATE) AS candidate_start_date
	, a.recruiter AS credited_recruiter
	, a.recruiter_employee_id AS credited_recruiter_employee_id
	, NULL AS data_as_of_day_running
	, a.data_as_of_date AS activity_thru_date
	, a.scorecard_month_end AS month_close_date
	, b.offer_decline_date AS first_activity_date
	, NULL AS first_activity_day_number
	, a.data_as_of_date AS deadline_date
	, NULL AS second_activity_date
	, NULL AS second_activity_day_number
	, NULL AS days_elapsed
	, NULL AS metric_status
	, CASE 
			WHEN b.offer_decline_date IS NOT NULL 
				THEN 1 
			ELSE 0
		END AS metric_count
	, 1 AS pass_count
	, NULL AS fail_count
	, NULL AS complete_count
	, NULL AS incomplete_count
	, CASE
			WHEN a.data_as_of_date >= a.scorecard_month_start 
				THEN 1 
			ELSE 0
		END AS include_month
	, NULL AS tis_target_days
	, NULL AS tis_target_pct
	, NULL AS offer_on_requisition_id
	, NULL AS interview_session_type
	, NULL AS interviewer_rating
	, CAST(NULL AS DATE) AS offer_accept_date
	, CAST(NULL AS DATE) AS ready_for_hire_date
	, b.offer_details_submitted_yn
	, b.worker_type
	, b.worker_sub_type
	, a.recruiter_currently_active
	, a.recruiter_title
	, a.recruiter_management_level
	, a.recruiter_user_id
	, a.recruiter_manager
	, a.recruiter_level_04_name
	, a.recruiter_level_04_user_id
	, a.recruiter_level_05_name
	, a.recruiter_level_05_user_id
	, a.recruiter_level_06_name
	, a.recruiter_level_06_user_id
	, a.recruiter_level_07_name
	, a.recruiter_level_07_user_id
	, a.recruiter_level_08_name
	, a.recruiter_level_08_user_id
	, a.recruiter_level_09_name
	, a.recruiter_level_09_user_id
	, a.recruiter_nbr_employee_directs
	, a.recruiter_nbr_contingent_directs

FROM recruiters_by_month AS a
	LEFT JOIN offer_decline_data AS b
		ON a.recruiter_employee_id = b.credited_recruiter_employee_id
			AND	a.scorecard_month_start <= b.offer_decline_date
			AND a.scorecard_month_end >= b.offer_decline_date

UNION ALL
----Onsite to Offer
SELECT 'Funnel Metrics' AS metric_category
	, 'Interview' AS metric_stage
	, 'Onsite to Offer' AS metric_group
	, 'O2O' AS metric_name
	, NULL AS activity
	, a.scorecard_month_start
	, a.scorecard_month_end
	, a.data_as_of_date
	, b.candidate_email
	, b.candidate_name
	, b.requisition_id
	, b.job_title
	, b.hiring_manager
	, b.source_category
	, b.source
	, b.event_workday_id AS unique_id
	, b.current_candidate_stage
	, CAST(NULL AS DATE) AS candidate_start_date
	, a.recruiter AS credited_recruiter
	, a.recruiter_employee_id AS credited_recruiter_employee_id
	, NULL AS data_as_of_day_running
	, a.data_as_of_date AS activity_thru_date
	, a.scorecard_month_end AS month_close_date
	, b.interview_date AS first_activity_date
	, NULL AS first_activity_day_number
	, a.data_as_of_date AS deadline_date
	, COALESCE(f.first_accept_last_decline, f.orphan_first_accept_last_decline) AS second_activity_date
	, NULL AS second_activity_day_number
	, NULL AS days_elapsed
	, NULL AS metric_status
	, CASE 
			WHEN b.interview_date IS NOT NULL 
				THEN 1 
			ELSE 0
		END AS metric_count
	, CASE
			WHEN f.first_accept_last_decline IS NOT NULL OR f.orphan_first_accept_last_decline IS NOT NULL
			THEN 1
		END AS pass_count
	, NULL AS fail_count
	, NULL AS complete_count
	, NULL AS incomplete_count
	, CASE
			WHEN a.data_as_of_date >= a.scorecard_month_start 
				THEN 1 
			ELSE 0
		END AS include_month
	, NULL AS tis_target_days
	, NULL AS tis_target_pct
	, CASE
			WHEN f.first_accept_last_decline IS NOT NULL THEN f.requisition_id
			ELSE f.orphan_offer_requisition_id
			END AS offer_on_requisition_id
	, b.interview_session_type
	, b.interviewer_rating
	, CAST(NULL AS DATE) AS offer_accept_date
	, CAST(NULL AS DATE) AS ready_for_hire_date
	, f.offer_details_submitted_yn
	, NULL AS worker_type
	, NULL AS worker_sub_type
	, a.recruiter_currently_active
	, a.recruiter_title
	, a.recruiter_management_level
	, a.recruiter_user_id
	, a.recruiter_manager
	, a.recruiter_level_04_name
	, a.recruiter_level_04_user_id
	, a.recruiter_level_05_name
	, a.recruiter_level_05_user_id
	, a.recruiter_level_06_name
	, a.recruiter_level_06_user_id
	, a.recruiter_level_07_name
	, a.recruiter_level_07_user_id
	, a.recruiter_level_08_name
	, a.recruiter_level_08_user_id
	, a.recruiter_level_09_name
	, a.recruiter_level_09_user_id
	, a.recruiter_nbr_employee_directs
	, a.recruiter_nbr_contingent_directs
FROM recruiters_by_month AS a
	LEFT JOIN interview_data AS b
		ON a.recruiter_employee_id = b.credited_recruiter_employee_id
			AND	a.scorecard_month_start <= b.interview_date
			AND a.scorecard_month_end >= b.interview_date
			AND b.interview_type = 'Onsite Interview'
			AND b.interview_completed_date IS NOT NULL
			AND b.interview_date <= a.data_as_of_date --this is NOT temporary
	LEFT JOIN calendar_dates AS e
		ON b.interview_date = e.calendar_day
	LEFT JOIN candidate_activity_interview_to_offer AS f
		ON b.event_workday_id = f.interview_id


UNION ALL
--CLEAR OFFER ACCEPTS
SELECT 'Funnel Metrics' AS metric_category
	, 'Offer' AS metric_stage
	, 'Offers Accepted' AS metric_group
	, 'OA' AS metric_name
	, 'Offer Accepted' AS activity
	, a.scorecard_month_start
	, a.scorecard_month_end
	, a.data_as_of_date
	, b.candidate_email
	, b.candidate_name
	, b.requisition_id_for_dashboards AS requisition_id
	, b.job_title
	, b.hiring_manager
	, b.source_category
	, b.source
	, b.application_id AS unique_id
	, CASE WHEN b.requisition_id_for_dashboards IS NOT NULL THEN 'Ready for Hire' END AS current_candidate_stage
	, b.candidate_start_date
	, a.recruiter AS credited_recruiter
	, a.recruiter_employee_id AS credited_recruiter_employee_id
	, NULL AS data_as_of_day_running
	, a.data_as_of_date AS activity_thru_date
	, a.scorecard_month_end AS month_close_date
	, b.funnel_activity_date AS first_activity_date
	, NULL AS first_activity_day_number
	, a.data_as_of_date AS deadline_date
	, NULL AS second_activity_date
	, NULL AS second_activity_day_number
	, NULL AS days_elapsed
	, NULL AS metric_status
	, CASE WHEN b.requisition_id_for_dashboards IS NOT NULL THEN 1 END AS metric_count
	, CASE WHEN b.requisition_id_for_dashboards IS NOT NULL THEN 1 END AS pass_count
	, CASE WHEN b.requisition_id_for_dashboards IS NOT NULL THEN 0 END AS fail_count
	, NULL AS complete_count
	, NULL AS incomplete_count
	, CASE
			WHEN a.data_as_of_date >= a.scorecard_month_start 
				THEN 1 
			ELSE 0
		END AS include_month
	, NULL AS tis_target_days
	, NULL AS tis_target_pct
	, NULL AS offer_on_requisition_id
	, NULL AS interview_session_type
	, NULL AS interviewer_rating
	, b.funnel_activity_date AS offer_accept_date
	, b.funnel_activity_date AS ready_for_hire_date
	, CASE WHEN b.requisition_id_for_dashboards IS NOT NULL THEN 'Yes' END AS offer_details_submitted_yn
	, CASE WHEN b.requisition_id_for_dashboards IS NOT NULL THEN 'Regular' END AS worker_type
	, CASE WHEN b.requisition_id_for_dashboards IS NOT NULL THEN 'Regular' END AS worker_sub_type
	, a.recruiter_currently_active
	, a.recruiter_title
	, a.recruiter_management_level
	, a.recruiter_user_id
	, a.recruiter_manager
	, a.recruiter_level_04_name
	, a.recruiter_level_04_user_id
	, a.recruiter_level_05_name
	, a.recruiter_level_05_user_id
	, a.recruiter_level_06_name
	, a.recruiter_level_06_user_id
	, a.recruiter_level_07_name
	, a.recruiter_level_07_user_id
	, a.recruiter_level_08_name
	, a.recruiter_level_08_user_id
	, a.recruiter_level_09_name
	, a.recruiter_level_09_user_id
	, a.recruiter_nbr_employee_directs
	, a.recruiter_nbr_contingent_directs

FROM recruiters_by_month AS a
	left join recruitingdb.v_clear_offer_accepts as b
		ON a.recruiter_employee_id = b.credited_recruiter_employee_id
			AND	a.scorecard_month_start <= b.funnel_activity_date
			AND a.scorecard_month_end >= b.funnel_activity_date

UNION ALL

SELECT 'Funnel Metrics' AS metric_category
	, 'Recruiter Screen Effectiveness' AS metric_stage
	, 'Recruiter Screen Effectiveness' AS metric_group
	, 'RSE' AS metric_name
	, NULL AS activity
	, a.scorecard_month_start
	, a.scorecard_month_end
	, a.data_as_of_date
	, b.candidate_email
	, b.candidate_name
	, b.requisition_id
	, b.job_title
	, b.hiring_manager
	, b.source_category
	, b.source
	, b.event_workday_id AS unique_id
	, b.current_candidate_stage
	, CAST(NULL AS DATE) AS candidate_start_date
	, a.recruiter AS credited_recruiter
	, a.recruiter_employee_id AS credited_recruiter_employee_id
	, NULL AS data_as_of_day_running
	, a.data_as_of_date AS activity_thru_date
	, a.scorecard_month_end AS month_close_date
	, b.interview_date AS first_activity_date
	, NULL AS first_activity_day_number
	, a.data_as_of_date AS deadline_date
	, COALESCE(f.interview_date, g.first_accept_last_decline, g.orphan_first_accept_last_decline) AS second_activity_date
	, NULL AS second_activity_day_number
	, NULL AS days_elapsed

	, CASE
			WHEN b.interviewer_rating = 'Hire'
				AND (g.first_accept_last_decline IS NOT NULL
						OR g.orphan_first_accept_last_decline IS NOT NULL
						OR f.nbr_debrief_hire_rating > 0
						OR h.nbr_debrief_hire_rating > 0
						OR (f.interview_type <> 'Onsite Interview' AND f.nbr_interviewer_hire_rating >0)
						OR (h.interview_type <> 'Onsite Interview' AND h.nbr_interviewer_hire_rating >0)
					)
				THEN 'PASS'
		END AS metric_status
	, CASE 
			WHEN b.interviewer_rating = 'Hire'
				AND (g.first_accept_last_decline IS NOT NULL
						OR g.orphan_first_accept_last_decline IS NOT NULL
						OR f.total_debrief_rating > 0
						OR h.total_debrief_rating > 0
						OR (f.interview_type <> 'Onsite Interview' AND f.total_nbr_rating >0)
						OR (h.interview_type <> 'Onsite Interview' AND h.total_nbr_rating >0)
					)
				THEN 1
				ELSE 0
		END AS metric_count
	, CASE
			WHEN b.interviewer_rating = 'Hire'
				AND (g.first_accept_last_decline IS NOT NULL
						OR g.orphan_first_accept_last_decline IS NOT NULL
						OR f.nbr_debrief_hire_rating > 0
						OR h.nbr_debrief_hire_rating > 0
						OR (f.interview_type <> 'Onsite Interview' AND f.nbr_interviewer_hire_rating >0)
						OR (h.interview_type <> 'Onsite Interview' AND h.nbr_interviewer_hire_rating >0)
					)
				THEN 1 
					ELSE 0
		END AS pass_count
	, NULL AS fail_count
	, NULL AS complete_count
	, NULL AS incomplete_count
	, CASE
			WHEN a.data_as_of_date >= a.scorecard_month_start 
				THEN 1 
			ELSE 0
		END AS include_month
	, NULL AS tis_target_days
	, NULL AS tis_target_pct
	, NULL AS offer_on_requisition_id
	, NULL AS interview_session_type
	, b.interviewer_rating
	, CAST(NULL AS DATE) AS offer_accept_date
	, CAST(NULL AS DATE) AS ready_for_hire_date
	, NULL AS offer_details_submitted_yn
	, NULL AS worker_type
	, NULL AS worker_sub_type
	, a.recruiter_currently_active
	, a.recruiter_title
	, a.recruiter_management_level
	, a.recruiter_user_id
	, a.recruiter_manager
	, a.recruiter_level_04_name
	, a.recruiter_level_04_user_id
	, a.recruiter_level_05_name
	, a.recruiter_level_05_user_id
	, a.recruiter_level_06_name
	, a.recruiter_level_06_user_id
	, a.recruiter_level_07_name
	, a.recruiter_level_07_user_id
	, a.recruiter_level_08_name
	, a.recruiter_level_08_user_id
	, a.recruiter_level_09_name
	, a.recruiter_level_09_user_id
	, a.recruiter_nbr_employee_directs
	, a.recruiter_nbr_contingent_directs

FROM recruiters_by_month AS a
	LEFT JOIN interview_data AS b
		ON a.recruiter_employee_id = b.credited_recruiter_employee_id
			AND	a.scorecard_month_start <= b.interview_date
			AND a.scorecard_month_end >= b.interview_date
			AND b.interview_type = 'Recruiter Screen'
			AND b.interview_date <= a.data_as_of_date --this is NOT temporary
	LEFT JOIN candidate_activity_interview_to_offer AS g
		ON b.event_workday_id = g.interview_id
	LEFT JOIN calendar_dates AS c
		ON a.scorecard_month_start = c.calendar_day
	LEFT JOIN calendar_dates AS d
		ON a.scorecard_month_end = d.calendar_day
	LEFT JOIN calendar_dates AS e
		ON a.data_as_of_date = e.calendar_day

    left join  (select f0.*,row_number() over (partition by candidate_email,requisition_id order by interview_event_date_and_time_completed) rnk 
					from feedback_counts as f0
					where						(f0.total_debrief_rating > 0 or (f0.interview_type <> 'Onsite Interview' and f0.total_nbr_rating > 0))
					) as f					--next interview activity
	on b.candidate_email =f.candidate_email and b.requisition_id=f.requisition_id and b.interview_event_date_and_time_completed < f.interview_event_date_and_time_completed and f.rnk=1
	left join (select h0.* ,row_number() over(partition by candidate_email,requisition_id order by interview_event_date_and_time_completed) rnk
					from feedback_counts as h0																								
					where (h0.nbr_debrief_hire_rating > 0
								or (h0.interview_type <> 'Onsite Interview' and h0.nbr_interviewer_hire_rating > 0))
					) as h --next activity with hire rating
	on b.candidate_email=h.candidate_email and b.requisition_id=h.requisition_id and b.interview_event_date_and_time_completed < h.interview_event_date_and_time_completed and h.rnk=1;
	
	
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


create view vw_bu_tableau_req_loads as

with all_recruiters as (
			select a.data_as_of
			, a.preferred_name as worker
			, a.employee_id
			, a.workers_manager
			, case when a.recruiting_leader_restated is not null then recruiting_leader_restated
					when a.level_06_from_the_top is null and a.nbr_employee_directs > 0 then a.preferred_name
					when a.level_06_from_the_top is null and a.nbr_employee_directs = 0 then a.workers_manager
					else a.level_06_from_the_top
				end as recruiting_leader
			, case when a.recruiting_leader_direct_restated is not null then a.recruiting_leader_direct_restated
					when a.level_06_from_the_top is null and a.nbr_employee_directs > 0 then a.preferred_name
					when a.level_06_from_the_top is null and a.nbr_employee_directs = 0 then a.workers_manager
					when a.level_07_from_the_top is null and a.nbr_employee_directs > 0 then a.preferred_name
					when a.level_07_from_the_top is null and a.nbr_employee_directs = 0 then a.workers_manager
					else a.level_07_from_the_top
				end as recruiting_leader_direct
			, a.business_title
			, a.management_level
			, a.nbr_contingent_directs
			, a.nbr_employee_directs
			, a.worker_sub_type
			from rct.vw_map_workday_recruiters_monthly_snapshot as a
			where a.currently_active = 'Yes'
		union
			select a.data_as_of
			, a.preferred_name as worker
			, a.employee_id
			, a.workers_manager
			, case when a.level_06_from_the_top is null and a.nbr_employee_directs > 0 then a.preferred_name
					when a.level_06_from_the_top is null and a.nbr_employee_directs = 0 then a.workers_manager
					else a.level_06_from_the_top
				end as recruiting_leader
			, case when a.level_06_from_the_top is null and a.nbr_employee_directs > 0 then a.preferred_name
					when a.level_06_from_the_top is null and a.nbr_employee_directs = 0 then a.workers_manager
					when a.level_07_from_the_top is null and a.nbr_employee_directs > 0 then a.preferred_name
					when a.level_07_from_the_top is null and a.nbr_employee_directs = 0 then a.workers_manager
					else a.level_07_from_the_top
				end as recruiting_leader_direct
			, a.business_title
			, a.management_level
			, a.nbr_contingent_directs
			, a.nbr_employee_directs
			, a.worker_sub_type
			from rct.vw_map_workday_recruiters as a
			where a.currently_active = 'Yes'
	)

	, all_requisitions as (
		select a.data_as_of
			, a.recruiter_load_reporting
			, a.recruiter_employee_id_load_reporting
			, coalesce(b.workers_manager, a.recruiter_manager_load_reporting) as recruiter_manager_load_reporting
			, coalesce(b.recruiting_leader, a.recruiter_leader_load_reporting) as recruiter_leader_load_reporting
			, b.recruiting_leader_direct
			, a.job_requisition_status
			, a.requisition_status
			, a.requisition_id
			, a.is_evergreen
			, a.division
			, a.brand
			, a.leader
			, a.leader_direct
			, a.leader_direct_level_2
			, a.hiring_manager
			, a.job_posting_title
			, a.worker_sub_type
			, a.job_category
			, a.job_family
			, a.job_profile
			, a.job_requisition_primary_location
			, a.requisition_approval_date
			, a.job_requisition_filled_date
			, a.close_date
		from rct.vw_map_workday_requisitions_monthly_snapshot as a
			left join all_recruiters as b
				on a.recruiter_employee_id_load_reporting = b.employee_id
					and a.data_as_of = b.data_as_of
			where a.new_or_replacement not like '%Immigration%' or a.new_or_replacement is null
		union
			select a.data_as_of
			, a.recruiter_load_reporting
			, a.recruiter_employee_id_load_reporting
			, coalesce(b.workers_manager, a.recruiter_manager_load_reporting) as recruiter_manager_load_reporting
			, coalesce(b.recruiting_leader, a.recruiter_leader_load_reporting) as recruiter_leader_load_reporting
			, b.recruiting_leader_direct
			, a.job_requisition_status
			, a.requisition_status
			, a.requisition_id
			, a.is_evergreen
			, case when a.is_evergreen = 'Yes' then a.requisition_division
				else a.product_category
				end as division
			, a.brand
			, a.leader
			, a.leader_direct
			, a.leader_direct_level_2
			, a.hiring_manager
			, a.job_posting_title
			, a.worker_sub_type
			, a.job_category
			, a.job_family
			, a.job_profile
			, a.job_requisition_primary_location
			, a.requisition_approval_date
			, a.job_requisition_filled_date
			, a.close_date
		from rct.vw_map_workday_requisitions as a
			left join all_recruiters as b
			on a.recruiter_employee_id_load_reporting = b.employee_id
				and a.data_as_of = b.data_as_of
		where a.new_or_replacement not like '%Immigration%' or a.new_or_replacement is null

	)


select 'Recruiting Headcount' as metric
	, 1 as metric_count
	, datefromparts(year(a.data_as_of),month(a.data_as_of),1) as month_start_date
	, a.data_as_of
	, a.worker as recruiter
	, a.employee_id as recruiter_employee_id
	, a.workers_manager as recruiter_reports_to
	, a.recruiting_leader
	, a.recruiting_leader_direct
	, null as requisition_status_summary
	, null as requisition_status
	, null as requisition_id
	, null as is_evergreen
	, null as division
	, null as brand
	, null as leader
	, null as leader_direct
	, null as leader_direct_level_2
	, null as hiring_manager
	, null as job_posting_title
	, null as worker_sub_type
	, null as job_category
	, null as job_family
	, null as job_profile
	, null as job_requisition_primary_location
	, null as requisition_approval_date
	, null as job_requisition_filled_date
	, null as requisition_close_date
	, null as is_ur
	, null as previous_status_summary
	, null as previous_status
	, a.business_title as recruiter_title
	, a.management_level as recruiter_management_level
	, a.nbr_contingent_directs as recruiter_nbr_contingent_directs
	, a.nbr_employee_directs as recruiter_nbr_employee_directs
	, a.worker_sub_type as recruiter_worker_sub_type
from all_recruiters as a

union all

select 'New Requisition' as metric
	, 1 as metric_count
	, datefromparts(year(a.data_as_of),month(a.data_as_of),1) as month_start_date
	, a.data_as_of
	, a.recruiter_load_reporting as recruiter
	, a.recruiter_employee_id_load_reporting as recruiter_employee_id
	, a.recruiter_manager_load_reporting as recruiter_reports_to
	, a.recruiter_leader_load_reporting as recruiting_leader
	, a.recruiting_leader_direct
	, a.job_requisition_status as requisition_status_summary
	, a.requisition_status
	, a.requisition_id
	, a.is_evergreen
	--, case
	--		when c.is_zo = 1 then '09 zillow offers'
	--		when c.is_zhl = 1 then '02 mortgage'
	--		else a.division
	--	end as division
	, a.division
	, a.brand
	, a.leader
	, a.leader_direct
	, a.leader_direct_level_2
	, a.hiring_manager
	, a.job_posting_title
	, a.worker_sub_type
	, a.job_category
	, a.job_family
	, a.job_profile
	, a.job_requisition_primary_location
	, a.requisition_approval_date
	, a.job_requisition_filled_date
	, a.close_date as requisition_close_date
	, c.is_ur
	, b.job_requisition_status as previous_status_summary
	, b.requisition_status as previous_status
	, null as recruiter_title
	, null as recruiter_management_level
	, null as recruiter_nbr_contingent_directs
	, null as recruiter_nbr_employee_directs
	, null as recruiter_worker_sub_type
from all_requisitions as a
	left join all_requisitions as b
		on a.requisition_id = b.requisition_id
			and datefromparts(year(a.data_as_of),month(a.data_as_of),1) = dateadd(month,1,datefromparts(year(b.data_as_of),month(b.data_as_of),1))
	left join rct.vw_map_requisitions_ur_zo_zhl as c
		on a.requisition_id = c.requisition_id

where a.data_as_of > (select min(a0.data_as_of) from all_requisitions as a0)
	and b.requisition_id is null

union all

select 'Ending Balance' as metric
	, 1 as metric_count
	, datefromparts(year(a.data_as_of),month(a.data_as_of),1) as month_start_date
	, a.data_as_of
	, a.recruiter_load_reporting as recruiter
	, a.recruiter_employee_id_load_reporting as recruiter_employee_id
	, a.recruiter_manager_load_reporting as recruiter_reports_to
	, a.recruiter_leader_load_reporting as recruiting_leader
	, a.recruiting_leader_direct
	, a.job_requisition_status as requisition_status_summary
	, a.requisition_status
	, a.requisition_id
	, a.is_evergreen
	--, case
	--		when c.is_zo = 1 then '09 zillow offers'
	--		when c.is_zhl = 1 then '02 mortgage'
	--		else a.division
	--	end as division
	, a.division
	, a.brand
	, a.leader
	, a.leader_direct
	, a.leader_direct_level_2
	, a.hiring_manager
	, a.job_posting_title
	, a.worker_sub_type
	, a.job_category
	, a.job_family
	, a.job_profile
	, a.job_requisition_primary_location
	, a.requisition_approval_date
	, a.job_requisition_filled_date
	, a.close_date as requisition_close_date
	, c.is_ur
	, b.job_requisition_status as previous_status_summary
	, b.requisition_status as previous_status
	, null as recruiter_title
	, null as recruiter_management_level
	, null as recruiter_nbr_contingent_directs
	, null as recruiter_nbr_employee_directs
	, null as recruiter_worker_sub_type
from all_requisitions as a
	left join all_requisitions as b
		on a.requisition_id = b.requisition_id
			and datefromparts(year(a.data_as_of),month(a.data_as_of),1) = dateadd(month,1,datefromparts(year(b.data_as_of),month(b.data_as_of),1))
	left join rct.vw_map_requisitions_ur_zo_zhl as c
		on a.requisition_id = c.requisition_id
where a.job_requisition_status in ('Open', 'Frozen')
	--and a.data_as_of > (select min(a0.data_as_of) from all_requisitions as a0)

union all

select 'Offer Accepted Pending Start or Filled' as metric
	, -1 as metric_count
	, datefromparts(year(a.data_as_of),month(a.data_as_of),1) as month_start_date
	, a.data_as_of
	, a.recruiter_load_reporting as recruiter
	, a.recruiter_employee_id_load_reporting as recruiter_employee_id
	, a.recruiter_manager_load_reporting as recruiter_reports_to
	, a.recruiter_leader_load_reporting as recruiting_leader
	, a.recruiting_leader_direct
	, a.job_requisition_status as requisition_status_summary
	, a.requisition_status
	, a.requisition_id
	, a.is_evergreen
	--, case
	--		when c.is_zo = 1 then '09 zillow offers'
	--		when c.is_zhl = 1 then '02 mortgage'
	--		else a.division
	--	end as division
	, a.division
	, a.brand
	, a.leader
	, a.leader_direct
	, a.leader_direct_level_2
	, a.hiring_manager
	, a.job_posting_title
	, a.worker_sub_type
	, a.job_category
	, a.job_family
	, a.job_profile
	, a.job_requisition_primary_location
	, a.requisition_approval_date
	, a.job_requisition_filled_date
	, a.close_date as requisition_close_date
	, c.is_ur
	, b.job_requisition_status as previous_status_summary
	, b.requisition_status as previous_status
	, null as recruiter_title
	, null as recruiter_management_level
	, null as recruiter_nbr_contingent_directs
	, null as recruiter_nbr_employee_directs
	, null as recruiter_worker_sub_type
from all_requisitions as a
	left join all_requisitions as b
		on a.requisition_id = b.requisition_id
			and datefromparts(year(a.data_as_of),month(a.data_as_of),1) = dateadd(month,1,datefromparts(year(b.data_as_of),month(b.data_as_of),1))
	left join rct.vw_map_requisitions_ur_zo_zhl as c
		on a.requisition_id = c.requisition_id

where a.data_as_of > (select min(a0.data_as_of) from all_requisitions as a0)
	and a.requisition_status in ('Filled', 'Open - Pending Start', 'Open - Offer Accepted')
	and (b.requisition_status not in ('Filled', 'Open - Pending Start', 'Open - Offer Accepted') or b.requisition_status is null)


union all


select 'Beginning Balance' as metric
	, 1 as metric_count
	, dateadd(month,1,datefromparts(year(a.data_as_of),month(a.data_as_of),1)) as month_start_date
	, case
			when (select max(a0.data_as_of) from all_requisitions as a0) < 
					dateadd(day,-1,dateadd(month,2,datefromparts(year(a.data_as_of),month(a.data_as_of),1))) 
				then (select max(a0.data_as_of) from all_requisitions as a0)
			else dateadd(day,-1,dateadd(month,2,datefromparts(year(a.data_as_of),month(a.data_as_of),1)))
		end as data_as_of
	, a.recruiter_load_reporting as recruiter
	, a.recruiter_employee_id_load_reporting as recruiter_employee_id
	, b.workers_manager as recruiter_reports_to
	, b.recruiting_leader
	, b.recruiting_leader_direct
	, a.job_requisition_status as requisition_status_summary
	, a.requisition_status
	, a.requisition_id
	, a.is_evergreen
	--, case
	--		when c.is_zo = 1 then '09 zillow offers'
	--		when c.is_zhl = 1 then '02 mortgage'
	--		else a.division
	--	end as division
	, a.division
	, a.brand
	, a.leader
	, a.leader_direct
	, a.leader_direct_level_2
	, a.hiring_manager
	, a.job_posting_title
	, a.worker_sub_type
	, a.job_category
	, a.job_family
	, a.job_profile
	, a.job_requisition_primary_location
	, a.requisition_approval_date
	, a.job_requisition_filled_date
	, a.close_date as requisition_close_date
	, c.is_ur
	, null as previous_status_summary
	, null as previous_status
	, null as recruiter_title
	, null as recruiter_management_level
	, null as recruiter_nbr_contingent_directs
	, null as recruiter_nbr_employee_directs
	, null as recruiter_worker_sub_type
from all_requisitions as a
	left join rct.vw_map_requisitions_ur_zo_zhl as c
		on a.requisition_id = c.requisition_id
	left join all_recruiters as b
		on a.recruiter_employee_id_load_reporting = b.employee_id
			and dateadd(month,1,datefromparts(year(a.data_as_of),month(a.data_as_of),1)) = datefromparts(year(b.data_as_of),month(b.data_as_of),1)
where a.job_requisition_status in ('Open', 'Frozen')
	and a.data_as_of < (select max(a0.data_as_of) from all_requisitions as a0)

	-------------------------------------------------------------
-------------------------------------------------------------
--union all




--select 'beginning balance excl oa and ps' as metric
--	, 1 as metric_count
--	, dateadd(month,1,datefromparts(year(a.data_as_of),month(a.data_as_of),1)) as month_start_date
--	, case
--			when (select max(a0.data_as_of) from all_requisitions as a0) < 
--					dateadd(day,-1,dateadd(month,2,datefromparts(year(a.data_as_of),month(a.data_as_of),1))) 
--				then (select max(a0.data_as_of) from all_requisitions as a0)
--			else dateadd(day,-1,dateadd(month,2,datefromparts(year(a.data_as_of),month(a.data_as_of),1)))
--		end as data_as_of
--	, a.recruiter_load_reporting as recruiter
--	, a.recruiter_employee_id_load_reporting as recruiter_employee_id
--	, b.workers_manager as recruiter_reports_to
--	, b.recruiting_leader
--	, b.recruiting_leader_direct
--	, a.job_requisition_status as requisition_status_summary
--	, a.requisition_status
--	, a.requisition_id
--	, a.is_evergreen
--	--, case
--	--		when c.is_zo = 1 then '09 zillow offers'
--	--		when c.is_zhl = 1 then '02 mortgage'
--	--		else a.division
--	--	end as division
--	, a.division
--	, a.brand
--	, a.leader
--	, a.leader_direct
--	, a.leader_direct_level_2
--	, a.hiring_manager
--	, a.job_posting_title
--	, a.worker_sub_type
--	, a.job_category
--	, a.job_family
--	, a.job_profile
--	, a.job_requisition_primary_location
--	, a.requisition_approval_date
--	, a.job_requisition_filled_date
--	, a.close_date as requisition_close_date
--	, c.is_ur
--	, null as previous_status_summary
--	, null as previous_status
--	, null as recruiter_title
--	, null as recruiter_management_level
--	, null as recruiter_nbr_contingent_directs
--	, null as recruiter_nbr_employee_directs
--	, null as recruiter_worker_sub_type
--from all_requisitions as a
--	left join requisitions_ur_zo_zhl as c
--		on a.requisition_id = c.requisition_id
--	left join all_recruiters as b
--		on a.recruiter_employee_id_load_reporting = b.employee_id
--			and dateadd(month,1,datefromparts(year(a.data_as_of),month(a.data_as_of),1)) = datefromparts(year(b.data_as_of),month(b.data_as_of),1)
--where a.requisition_status in ('open', 'frozen')
--	and a.data_as_of < (select max(a0.data_as_of) from all_requisitions as a0)

--union all



--select 'ending balance excl oa and ps' as metric
--	, 1 as metric_count
--	, datefromparts(year(a.data_as_of),month(a.data_as_of),1) as month_start_date
--	, a.data_as_of
--	, a.recruiter_load_reporting as recruiter
--	, a.recruiter_employee_id_load_reporting as recruiter_employee_id
--	, a.recruiter_manager_load_reporting as recruiter_reports_to
--	, a.recruiter_leader_load_reporting as recruiting_leader
--	, a.recruiting_leader_direct
--	, a.job_requisition_status as requisition_status_summary
--	, a.requisition_status
--	, a.requisition_id
--	, a.is_evergreen
--	--, case
--	--		when c.is_zo = 1 then '09 zillow offers'
--	--		when c.is_zhl = 1 then '02 mortgage'
--	--		else a.division
--	--	end as division
--	, a.division
--	, a.brand
--	, a.leader
--	, a.leader_direct
--	, a.leader_direct_level_2
--	, a.hiring_manager
--	, a.job_posting_title
--	, a.worker_sub_type
--	, a.job_category
--	, a.job_family
--	, a.job_profile
--	, a.job_requisition_primary_location
--	, a.requisition_approval_date
--	, a.job_requisition_filled_date
--	, a.close_date as requisition_close_date
--	, c.is_ur
--	, b.job_requisition_status as previous_status_summary
--	, b.requisition_status as previous_status
--	, null as recruiter_title
--	, null as recruiter_management_level
--	, null as recruiter_nbr_contingent_directs
--	, null as recruiter_nbr_employee_directs
--	, null as recruiter_worker_sub_type
--from all_requisitions as a
--	left join all_requisitions as b
--		on a.requisition_id = b.requisition_id
--			and datefromparts(year(a.data_as_of),month(a.data_as_of),1) = dateadd(month,1,datefromparts(year(b.data_as_of),month(b.data_as_of),1))
--	left join requisitions_ur_zo_zhl as c
--		on a.requisition_id = c.requisition_id
--where a.requisition_status in ('open', 'frozen')
--	--and a.data_as_of > (select min(a0.data_as_of) from all_requisitions as a0)

--union all

--select 'ending balance oa and ps' as metric
--	, 1 as metric_count
--	, datefromparts(year(a.data_as_of),month(a.data_as_of),1) as month_start_date
--	, a.data_as_of
--	, a.recruiter_load_reporting as recruiter
--	, a.recruiter_employee_id_load_reporting as recruiter_employee_id
--	, a.recruiter_manager_load_reporting as recruiter_reports_to
--	, a.recruiter_leader_load_reporting as recruiting_leader
--	, a.recruiting_leader_direct
--	, a.job_requisition_status as requisition_status_summary
--	, a.requisition_status
--	, a.requisition_id
--	, a.is_evergreen
--	--, case
--	--		when c.is_zo = 1 then '09 zillow offers'
--	--		when c.is_zhl = 1 then '02 mortgage'
--	--		else a.division
--	--	end as division
--	, a.division
--	, a.brand
--	, a.leader
--	, a.leader_direct
--	, a.leader_direct_level_2
--	, a.hiring_manager
--	, a.job_posting_title
--	, a.worker_sub_type
--	, a.job_category
--	, a.job_family
--	, a.job_profile
--	, a.job_requisition_primary_location
--	, a.requisition_approval_date
--	, a.job_requisition_filled_date
--	, a.close_date as requisition_close_date
--	, c.is_ur
--	, b.job_requisition_status as previous_status_summary
--	, b.requisition_status as previous_status
--	, null as recruiter_title
--	, null as recruiter_management_level
--	, null as recruiter_nbr_contingent_directs
--	, null as recruiter_nbr_employee_directs
--	, null as recruiter_worker_sub_type
--from all_requisitions as a
--	left join all_requisitions as b
--		on a.requisition_id = b.requisition_id
--			and datefromparts(year(a.data_as_of),month(a.data_as_of),1) = dateadd(month,1,datefromparts(year(b.data_as_of),month(b.data_as_of),1))
--	left join requisitions_ur_zo_zhl as c
--		on a.requisition_id = c.requisition_id
--where a.requisition_status like 'open -%'
--	--and a.data_as_of > (select min(a0.data_as_of) from all_requisitions as a0)

--union all

--select 'moved from another team' as metric
--	, 1 as metric_count
--	, datefromparts(year(a.data_as_of),month(a.data_as_of),1) as month_start_date
--	, a.data_as_of
--	, a.recruiter_load_reporting as recruiter
--	, a.recruiter_employee_id_load_reporting as recruiter_employee_id
--	, a.recruiter_manager_load_reporting as recruiter_reports_to
--	, a.recruiter_leader_load_reporting as recruiting_leader
--	, a.recruiting_leader_direct
--	, a.job_requisition_status as requisition_status_summary
--	, a.requisition_status
--	, a.requisition_id
--	, a.is_evergreen
--	--, case
--	--		when c.is_zo = 1 then '09 zillow offers'
--	--		when c.is_zhl = 1 then '02 mortgage'
--	--		else a.division
--	--	end as division
--	, a.division
--	, a.brand
--	, a.leader
--	, a.leader_direct
--	, a.leader_direct_level_2
--	, a.hiring_manager
--	, a.job_posting_title
--	, a.worker_sub_type
--	, a.job_category
--	, a.job_family
--	, a.job_profile
--	, a.job_requisition_primary_location
--	, a.requisition_approval_date
--	, a.job_requisition_filled_date
--	, a.close_date as requisition_close_date
--	, c.is_ur
--	, b.job_requisition_status as previous_status_summary
--	, b.requisition_status as previous_status
--	, null as recruiter_title
--	, null as recruiter_management_level
--	, null as recruiter_nbr_contingent_directs
--	, null as recruiter_nbr_employee_directs
--	, null as recruiter_worker_sub_type
--from all_requisitions as a
--	inner join all_requisitions as b
--		on a.requisition_id = b.requisition_id
--			and datefromparts(year(a.data_as_of),month(a.data_as_of),1) = dateadd(month,1,datefromparts(year(b.data_as_of),month(b.data_as_of),1))
--			and b.job_requisition_status in ('open', 'frozen')
--	left join requisitions_ur_zo_zhl as c
--		on a.requisition_id = c.requisition_id
--where a.data_as_of > (select min(a0.data_as_of) from all_requisitions as a0)
--	and (case
--			when a.recruiter_manager_load_reporting = 'annie rihn' 
--				then a.recruiter_load_reporting 
--			else a.recruiter_leader_load_reporting
--		end
--			<>
--		case
--			when b.recruiter_manager_load_reporting = 'annie rihn' 
--				then b.recruiter_load_reporting 
--			else b.recruiter_leader_load_reporting
--		end
--		or (a.recruiter_load_reporting is null and b.recruiter_load_reporting is not null)
--		or (a.recruiter_load_reporting is not null and b.recruiter_load_reporting is null))	
--union all

--select 'moved to another team' as metric
--	, -1 as metric_count
--	, dateadd(month,1,datefromparts(year(a.data_as_of),month(a.data_as_of),1)) as month_start_date
--	, case
--			when (select max(a0.data_as_of) from all_requisitions as a0) < 
--					dateadd(day,-1,dateadd(month,2,datefromparts(year(a.data_as_of),month(a.data_as_of),1))) 
--				then (select max(a0.data_as_of) from all_requisitions as a0)
--			else dateadd(day,-1,dateadd(month,2,datefromparts(year(a.data_as_of),month(a.data_as_of),1)))
--		end as data_as_of
--	, a.recruiter_load_reporting as recruiter
--	, a.recruiter_employee_id_load_reporting as recruiter_employee_id
--	, a.recruiter_manager_load_reporting as recruiter_reports_to
--	, a.recruiter_leader_load_reporting as recruiting_leader
--	, a.recruiting_leader_direct
--	, a.job_requisition_status as requisition_status_summary
--	, a.requisition_status
--	, a.requisition_id
--	, a.is_evergreen
--	--, case
--	--		when c.is_zo = 1 then '09 zillow offers'
--	--		when c.is_zhl = 1 then '02 mortgage'
--	--		else a.division
--	--	end as division
--	, a.division
--	, a.brand
--	, a.leader
--	, a.leader_direct
--	, a.leader_direct_level_2
--	, a.hiring_manager
--	, a.job_posting_title
--	, a.worker_sub_type
--	, a.job_category
--	, a.job_family
--	, a.job_profile
--	, a.job_requisition_primary_location
--	, a.requisition_approval_date
--	, a.job_requisition_filled_date
--	, a.close_date as requisition_close_date
--	, c.is_ur
--	, b.job_requisition_status as previous_status_summary
--	, b.requisition_status as previous_status
--	, null as recruiter_title
--	, null as recruiter_management_level
--	, null as recruiter_nbr_contingent_directs
--	, null as recruiter_nbr_employee_directs
--	, null as recruiter_worker_sub_type
--from all_requisitions as a
--	inner join all_requisitions as b
--		on a.requisition_id = b.requisition_id
--			and dateadd(month,1,datefromparts(year(a.data_as_of),month(a.data_as_of),1)) = datefromparts(year(b.data_as_of),month(b.data_as_of),1)
--	left join requisitions_ur_zo_zhl as c
--		on a.requisition_id = c.requisition_id
--where a.job_requisition_status in ('open', 'frozen')
--	and a.data_as_of < (select max(a0.data_as_of) from all_requisitions as a0)
--	and (case
--			when a.recruiter_manager_load_reporting = 'annie rihn' 
--				then a.recruiter_load_reporting 
--			else a.recruiter_leader_load_reporting
--		end
--			<>
--		case
--			when b.recruiter_manager_load_reporting = 'annie rihn' 
--				then b.recruiter_load_reporting 
--			else b.recruiter_leader_load_reporting
--		end
--		or (a.recruiter_load_reporting is null and b.recruiter_load_reporting is not null)
--		or (a.recruiter_load_reporting is not null and b.recruiter_load_reporting is null))

--union all


--select 'requisition filled' as metric
--	, -1 as metric_count
--	, datefromparts(year(a.data_as_of),month(a.data_as_of),1) as month_start_date
--	, a.data_as_of
--	, a.recruiter_load_reporting as recruiter
--	, a.recruiter_employee_id_load_reporting as recruiter_employee_id
--	, a.recruiter_manager_load_reporting as recruiter_reports_to
--	, a.recruiter_leader_load_reporting as recruiting_leader
--	, a.recruiting_leader_direct
--	, a.job_requisition_status as requisition_status_summary
--	, a.requisition_status
--	, a.requisition_id
--	, a.is_evergreen
--	--, case
--	--		when c.is_zo = 1 then '09 zillow offers'
--	--		when c.is_zhl = 1 then '02 mortgage'
--	--		else a.division
--	--	end as division
--	, a.division
--	, a.brand
--	, a.leader
--	, a.leader_direct
--	, a.leader_direct_level_2
--	, a.hiring_manager
--	, a.job_posting_title
--	, a.worker_sub_type
--	, a.job_category
--	, a.job_family
--	, a.job_profile
--	, a.job_requisition_primary_location
--	, a.requisition_approval_date
--	, a.job_requisition_filled_date
--	, a.close_date as requisition_close_date
--	, c.is_ur
--	, b.job_requisition_status as previous_status_summary
--	, b.requisition_status as previous_status
--	, null as recruiter_title
--	, null as recruiter_management_level
--	, null as recruiter_nbr_contingent_directs
--	, null as recruiter_nbr_employee_directs
--	, null as recruiter_worker_sub_type
--from all_requisitions as a
--	left join all_requisitions as b
--		on a.requisition_id = b.requisition_id
--			and datefromparts(year(a.data_as_of),month(a.data_as_of),1) = dateadd(month,1,datefromparts(year(b.data_as_of),month(b.data_as_of),1))
--	left join requisitions_ur_zo_zhl as c
--		on a.requisition_id = c.requisition_id

--where a.data_as_of > (select min(a0.data_as_of) from all_requisitions as a0)
--	and a.job_requisition_status = 'filled'
--	and (b.job_requisition_status <> 'filled' or b.job_requisition_status is null)

--union all

--select 'requisition closed' as metric
--	, -1 as metric_count
--	, datefromparts(year(a.data_as_of),month(a.data_as_of),1) as month_start_date
--	, a.data_as_of
--	, a.recruiter_load_reporting as recruiter
--	, a.recruiter_employee_id_load_reporting as recruiter_employee_id
--	, a.recruiter_manager_load_reporting as recruiter_reports_to
--	, a.recruiter_leader_load_reporting as recruiting_leader
--	, a.recruiting_leader_direct
--	, a.job_requisition_status as requisition_status_summary
--	, a.requisition_status
--	, a.requisition_id
--	, a.is_evergreen
--	--, case
--	--		when c.is_zo = 1 then '09 zillow offers'
--	--		when c.is_zhl = 1 then '02 mortgage'
--	--		else a.division
--	--	end as division
--	, a.division
--	, a.brand
--	, a.leader
--	, a.leader_direct
--	, a.leader_direct_level_2
--	, a.hiring_manager
--	, a.job_posting_title
--	, a.worker_sub_type
--	, a.job_category
--	, a.job_family
--	, a.job_profile
--	, a.job_requisition_primary_location
--	, a.requisition_approval_date
--	, a.job_requisition_filled_date
--	, a.close_date as requisition_close_date
--	, c.is_ur
--	, b.job_requisition_status as previous_status_summary
--	, b.requisition_status as previous_status
--	, null as recruiter_title
--	, null as recruiter_management_level
--	, null as recruiter_nbr_contingent_directs
--	, null as recruiter_nbr_employee_directs
--	, null as recruiter_worker_sub_type
--from all_requisitions as a
--	left join all_requisitions as b
--		on a.requisition_id = b.requisition_id
--			and datefromparts(year(a.data_as_of),month(a.data_as_of),1) = dateadd(month,1,datefromparts(year(b.data_as_of),month(b.data_as_of),1))
--	left join requisitions_ur_zo_zhl as c
--		on a.requisition_id = c.requisition_id

--where a.data_as_of > (select min(a0.data_as_of) from all_requisitions as a0)
--	and a.job_requisition_status = 'closed'
--	and (b.job_requisition_status <> 'closed' or b.job_requisition_status is null)

--union all



--select 'offer accepted or pending start' as metric
--	, -1 as metric_count
--	, datefromparts(year(a.data_as_of),month(a.data_as_of),1) as month_start_date
--	, a.data_as_of
--	, a.recruiter_load_reporting as recruiter
--	, a.recruiter_employee_id_load_reporting as recruiter_employee_id
--	, a.recruiter_manager_load_reporting as recruiter_reports_to
--	, a.recruiter_leader_load_reporting as recruiting_leader
--	, a.recruiting_leader_direct
--	, a.job_requisition_status as requisition_status_summary
--	, a.requisition_status
--	, a.requisition_id
--	, a.is_evergreen
--	--, case
--	--		when c.is_zo = 1 then '09 zillow offers'
--	--		when c.is_zhl = 1 then '02 mortgage'
--	--		else a.division
--	--	end as division
--	, a.division
--	, a.brand
--	, a.leader
--	, a.leader_direct
--	, a.leader_direct_level_2
--	, a.hiring_manager
--	, a.job_posting_title
--	, a.worker_sub_type
--	, a.job_category
--	, a.job_family
--	, a.job_profile
--	, a.job_requisition_primary_location
--	, a.requisition_approval_date
--	, a.job_requisition_filled_date
--	, a.close_date as requisition_close_date
--	, c.is_ur
--	, b.job_requisition_status as previous_status_summary
--	, b.requisition_status as previous_status
--	, null as recruiter_title
--	, null as recruiter_management_level
--	, null as recruiter_nbr_contingent_directs
--	, null as recruiter_nbr_employee_directs
--	, null as recruiter_worker_sub_type
--from all_requisitions as a
--	left join all_requisitions as b
--		on a.requisition_id = b.requisition_id
--			and datefromparts(year(a.data_as_of),month(a.data_as_of),1) = dateadd(month,1,datefromparts(year(b.data_as_of),month(b.data_as_of),1))
--	left join requisitions_ur_zo_zhl as c
--		on a.requisition_id = c.requisition_id

--where a.data_as_of > (select min(a0.data_as_of) from all_requisitions as a0)
--	and a.requisition_status in ('open - pending start', 'open - offer accepted')
--	and (b.requisition_status not in ('open - pending start', 'open - offer accepted') or b.requisition_status is null);


select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


CREATE or replace VIEW VW_LD_CANDIDATE_ACTIVITY_MASTER AS
WITH 
		all_applications AS (
		SELECT candidate_email
			, requisition_id
			, funnel_activity
			, funnel_activity_date
			, candidate_name
			, candidate_id
			, workday_application_id AS application_id
			, candidate_employee_id
			, source_category
			, source
			, candidate_start_date
			, COALESCE(candidate_start_date
				, CASE 
						WHEN candidate_stage = 'Ready for Hire' 
							THEN application_completed_date 
						END) 
				AS start_or_completed_date
			, CASE
					WHEN candidate_stage = 'Ready for Hire'
						OR (candidate_stage NOT IN ('Declined by Candidate','Rejected')
								AND offer_status = 'Offer Accepted')
						THEN 1
					ELSE 99
				END AS current_stage_rank
			, CASE
					WHEN source_category = 'Internal'
						THEN 1
					WHEN source_category = 'Agency'
						THEN 2
					WHEN source_category = 'Employee Referral'
						THEN 3
					WHEN source_category = 'Contacted by Recruiter'
						THEN 4
					ELSE 99
				END AS source_category_rank
		FROM rct.vw_map_workday_applications
		UNION ALL
		SELECT match_candidate
			, match_requisition
			, funnel_activity
			, funnel_activity_date
			, candidate_name
			, candidate_id
			, application_id
			, candidate_employee_id
			, source_category
			, source
			, candidate_start_date
			, candidate_start_date AS start_or_completed_date
			, CASE
					WHEN jobvite_current_workflow_state = 'Offer Accepted'
						THEN 1
					ELSE 99
				END AS current_stage_rank
			, CASE
					WHEN source_category = 'Internal'
						THEN 1
					WHEN source_category = 'Agency'
						THEN 2
					WHEN source_category = 'Employee Referral'
						THEN 3
					WHEN source_category = 'Contacted by Recruiter'
						THEN 4
					ELSE 99
				END AS source_category_rank
		FROM recruitingdb.v_jobvite_applications
	)
			, first_application AS (
				SELECT a.candidate_email
					, a.requisition_id
					, a.funnel_activity
					, MIN(a.funnel_activity_date) AS first_application_date
					, MIN(a.candidate_start_date) AS candidate_start_date
					, MIN(a.start_or_completed_date) AS start_or_completed_date
					, c.candidate_name
					, c.candidate_id
					, b.application_id
					, c.candidate_employee_id
					, b.source_category
					, b.source
					, MIN(coalesce(a.start_or_completed_date,c.start_or_completed_date,'29991231'))  as next_start_date
				FROM all_applications AS a
                INNER JOIN ( SELECT 
                                    candidate_email,
                                    requisition_id,
                                    source_category,
                                    source,
                                    application_id,
                                    row_number() over (partition by candidate_email,requisition_id order by current_stage_rank,source_category_rank,funnel_activity_date,source_category,source) rnk
                             FROM 
                                    all_applications
                           
                             ) b
                ON a.candidate_email=b.candidate_email and a.requisition_id=b.requisition_id and b.rnk=1
                INNER JOIN (
                            SELECT 
                                 k.candidate_email,
                                 max(candidate_name) as candidate_name,
                                 max(candidate_id) as candidate_id,
                                 max(candidate_employee_id) as candidate_employee_id,
                                 max(funnel_activity_date) as funnel_activity_date,
                                 MIN(j.start_or_completed_date) as start_or_completed_date
                             FROM 
                            
                              (
                                SELECT 
                                    candidate_email,
                                    candidate_name,
                                    candidate_id,
                                    candidate_employee_id,
                                    min(funnel_activity_date) over (partition by candidate_email) as funnel_activity_date,
                                    row_number() over (partition by candidate_email order by funnel_activity_date DESC,candidate_id DESC ) rnk
                                FROM
                                    all_applications
                                ) k
                             LEFT JOIN
                                ( SELECT 
                                        candidate_email,
                                        start_or_completed_date
                                  FROM
                                        all_applications
                                  GROUP BY 1,2
                                  ) j
                             ON     
                             k.candidate_email=j.candidate_email AND start_or_completed_date >= funnel_activity_date AND rnk=1
                             GROUP BY 1
                
                ) c
                ON a.candidate_email=c.candidate_email
				GROUP BY a.candidate_email
					, a.requisition_id
					, a.funnel_activity
					, b.source_category
					, b.source
					, b.application_id
					, c.candidate_name
					, c.candidate_id
					, c.candidate_employee_id
			)
---------INTERVIEWS-------------------------------------------------------------------------------------------------
	, all_interviews AS (
		SELECT a.candidate_email
			, a.requisition_id
			, CASE WHEN a.funnel_activity = 'Internal Mobility Screen' THEN 'Recruiter Screen' ELSE a.funnel_activity END AS funnel_activity
			, a.funnel_activity_date
			, a.interview_event_workday_id AS interview_id
			, CASE WHEN b.interview_event_workday_id IS NOT NULL THEN 'Yes' ELSE 'No' END AS interview_has_feedback
		FROM rct.vw_map_workday_all_interviews AS a
			LEFT JOIN (SELECT b0.interview_event_workday_id FROM rct.vw_map_workday_interview_feedback AS b0 GROUP BY b0.interview_event_workday_id) AS b
				ON a.interview_event_workday_id = b.interview_event_workday_id
			WHERE a.interview_started_before_completed = 'Yes'
				AND a.interview_event_date_and_time_completed IS NOT NULL
		UNION ALL
		SELECT match_candidate
			, match_requisition
			, funnel_activity
			, funnel_activity_date
			, jobvite_interview_id AS interview_id
			, 'Yes' AS interview_has_feedback
		FROM recruitingdb.v_jobvite_interviews
	)

		, first_recruiter_screen AS (
			SELECT candidate_email
				, requisition_id
				, MIN(funnel_activity_date) AS first_recruiter_screen
			FROM all_interviews
			WHERE funnel_activity = 'Recruiter Screen'
			GROUP BY candidate_email
				, requisition_id
		)

		, first_phone_interview AS (
			SELECT candidate_email
				, requisition_id
				, MIN(funnel_activity_date) AS first_phone_interview
			FROM all_interviews
			WHERE funnel_activity = 'Phone Interview'
			GROUP BY candidate_email
				, requisition_id
		)

		, first_tech_screen AS (
			SELECT candidate_email
				, requisition_id
				, MIN(funnel_activity_date) AS first_tech_screen
			FROM all_interviews
			WHERE funnel_activity = 'Tech Screen'
			GROUP BY candidate_email
				, requisition_id
		) 

		, first_onsite_interview AS (
			SELECT candidate_email
				, requisition_id
				, MIN(funnel_activity_date) AS first_onsite_interview
			FROM all_interviews
			WHERE funnel_activity = 'Onsite Interview'
			GROUP BY candidate_email
				, requisition_id
		)

---------ACCEPTS-------------------------------------------------------------------------------------------------
	, all_offer_accepts AS (
		SELECT a.candidate_email
			, a.requisition_id
			, a.funnel_activity
			, COALESCE(a.offer_accept_date, a.ready_for_hire_date) AS funnel_activity_date
			, a.offer_accept_date
			, a.ready_for_hire_date
			, a.candidate_start_date
			, COALESCE(a.first_submitted_offer_initiator_employee_id
						, a.first_offer_initiated_by_employee_id
						, a.ready_for_hire_initiator_employee_id) AS offer_initiator_employee_id
		FROM rct.vw_map_workday_all_offers AS a
		WHERE a.funnel_activity = 'Offer Accepted'
			AND
			NOT EXISTS 
			(SELECT b0.candidate_email
					, b0.requisition_id
				FROM recruitingdb.v_manual_offer_declines AS b0
				WHERE a.candidate_email = b0.candidate_email
					AND a.requisition_id = b0.requisition_id)
		UNION ALL
		SELECT a.match_candidate
			, a.match_requisition
			, a.funnel_activity
			, a.funnel_activity_date
			, a.funnel_activity_date AS offer_accept_date
			, a.funnel_activity_date AS ready_for_hire_date
			, a.candidate_start_date
			, a.offer_initiator_employee_id
		FROM recruitingdb.v_jobvite_offer_accepts AS a
		WHERE NOT EXISTS 
			(SELECT b0.candidate_email
					, b0.requisition_id
				FROM recruitingdb.v_manual_offer_declines AS b0
				WHERE a.match_candidate = b0.candidate_email
					AND a.match_requisition = b0.requisition_id) --check for manual declines
			AND NOT EXISTS 
			(SELECT b0.candidate_email
					, b0.requisition_id
				FROM rct.vw_map_workday_all_offers AS b0
				WHERE a.match_candidate = b0.candidate_email
					AND a.match_requisition = b0.requisition_id
					AND b0.funnel_activity = 'Offer Declined') --check for a later decline tracked in workday
	)

		, first_offer_accept AS (
			SELECT a.candidate_email
				, a.requisition_id
				, a.funnel_activity
				, MIN(a.funnel_activity_date) AS first_offer_accept
				, MIN(a.candidate_start_date) AS candidate_start_date
			FROM all_offer_accepts AS a
			GROUP BY a.candidate_email
				, a.requisition_id
				, a.funnel_activity
		)

---------DECLINES-------------------------------------------------------------------------------------------------
	, all_offer_declines AS (
		SELECT a.candidate_email
			, a.requisition_id
			, a.funnel_activity
			, a.funnel_activity_date
			, 'Candidate Declined Offer' AS offer_decline_reason
		FROM recruitingdb.v_manual_offer_declines AS a
		UNION ALL
		SELECT a.candidate_email
			, a.requisition_id
			, a.funnel_activity
			, CAST(a.date_and_time_completed AS DATE) AS funnel_activity_date
			, a.disposition_reason AS offer_decline_reason
		FROM rct.vw_map_workday_all_offers AS a
		WHERE a.funnel_activity = 'Offer Declined'
		UNION ALL
		SELECT a.match_candidate
			, a.match_requisition
			, a.funnel_activity
			, a.funnel_activity_date
			, CASE 
				WHEN a.jobvite_offer_decline_reason IN ('Commute', 'Relocation') THEN 'Job Location'
				WHEN a.jobvite_offer_decline_reason = 'Compensation: Base Pay' THEN 'Base Pay'
				WHEN a.jobvite_offer_decline_reason = 'Unknown' THEN 'Candidate Did Not Disclose Reason'
				WHEN a.jobvite_offer_decline_reason = 'Company Reputation/Prestige' THEN 'Company Reputation'
				WHEN a.jobvite_offer_decline_reason IN ('Wants FTE, Not Contract Role', 'Work Content'
														, 'Work Content/Company Mission', 'Work Schedule')
															THEN 'Job Scope'
				WHEN a.jobvite_offer_decline_reason IN ('Compensation: Ongoing Bonus Plan','Compensation: Total Compensation')
															THEN 'Total Compensation'
				WHEN a.jobvite_offer_decline_reason = 'Family' THEN 'Family (Jobvite Only)'
				ELSE 'Candidate Declined Offer'
				END AS offer_decline_reason
		FROM recruitingdb.v_jobvite_offer_declines AS a
		WHERE NOT EXISTS (SELECT b0.candidate_email
								, b0.requisition_id
							FROM rct.vw_map_workday_all_offers AS b0
							WHERE a.match_candidate = b0.candidate_email
								AND a.match_requisition = b0.requisition_id
								AND b0.funnel_activity = 'Offer Accepted') --check for a later accept tracked in Workday
	)

		, last_offer_decline AS (
			SELECT a.candidate_email
				, a.requisition_id
				, a.funnel_activity
				, MAX(a.funnel_activity_date) AS last_offer_decline
				, a.offer_decline_reason
			FROM all_offer_declines AS a
			GROUP BY a.candidate_email
				, a.requisition_id
				, a.funnel_activity
				, a.offer_decline_reason
		)

---------ORPHANS-------------------------------------------------------------------------------------------------
	, orphan_activities AS (
			SELECT 'Onsite Interview' AS activity
				, a.candidate_email
				, a.requisition_id
				, a.first_onsite_interview AS funnel_activity_date
				, b.first_application_date
				, b.next_start_date
				, b.candidate_start_date
			FROM first_onsite_interview AS a
				INNER JOIN first_application AS b
					ON a.candidate_email = b.candidate_email
					AND a.requisition_id = b.requisition_id
			LEFT JOIN first_offer_accept AS c
				ON a.candidate_email = c.candidate_email
				AND a.requisition_id = c.requisition_id
			LEFT JOIN last_offer_decline AS d
				ON a.candidate_email = d.candidate_email
				AND a.requisition_id = d.requisition_id
			WHERE c.candidate_email IS NULL
				AND d.candidate_email IS NULL

			UNION ALL
			SELECT 'Offer Accepted' AS activity
				, a.candidate_email
				, a.requisition_id
				, a.first_offer_accept AS funnel_activity_date
				, b.first_application_date
				, b.next_start_date
				, b.candidate_start_date
			FROM first_offer_accept AS a
				INNER JOIN first_application AS b
					ON a.candidate_email = b.candidate_email
					AND a.requisition_id = b.requisition_id
			LEFT JOIN first_onsite_interview AS c
				ON a.candidate_email = c.candidate_email
				AND a.requisition_id = c.requisition_id
			WHERE c.candidate_email IS NULL
			UNION ALL
			SELECT 'Offer Declined' AS activity
				, a.candidate_email
				, a.requisition_id
				, a.last_offer_decline AS funnel_activity_date
				, b.first_application_date
				, b.next_start_date
				, b.candidate_start_date
			FROM last_offer_decline AS a
				INNER JOIN first_application AS b
					ON a.candidate_email = b.candidate_email
					AND a.requisition_id = b.requisition_id
			LEFT JOIN first_onsite_interview AS c
				ON a.candidate_email = c.candidate_email
				AND a.requisition_id = c.requisition_id
			WHERE c.candidate_email IS NULL)

		, orphan_order AS (
			SELECT activity
				, candidate_email
				, requisition_id
				, funnel_activity_date
				, first_application_date
				, next_start_date
				, candidate_start_date
				, ROW_NUMBER() OVER (PARTITION BY candidate_email, next_start_date
										ORDER BY funnel_activity_date, first_application_date, requisition_id) AS row_nbr
			FROM orphan_activities
		)

		, match_orphans AS (
			SELECT a.candidate_email
				, a.activity AS orphan_onsite_activity
				, a.requisition_id AS orphan_onsite_requisition_id
				, a.funnel_activity_date AS orphan_first_onsite_interview
				, a.first_application_date AS orphan_onsite_first_application_date
				, b.activity AS orphan_offer_activity
				, b.requisition_id AS orphan_offer_requisition_id
				, b.funnel_activity_date AS orphan_first_accept_last_decline
				, b.candidate_start_date AS orphan_offer_candidate_start_date
				, b.first_application_date AS orphan_offer_first_application_date
			FROM orphan_order AS a
				INNER JOIN orphan_order AS b
				ON a.candidate_email = b.candidate_email
				AND a.next_start_date = b.next_start_date
				AND a.row_nbr + 1 = b.row_nbr
			WHERE a.activity = 'Onsite Interview'
			AND b.activity IN ('Offer Accepted', 'Offer Declined')
		)


-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------

--APPLICATIONS--
SELECT a.candidate_email
	, a.requisition_id
	, a.funnel_activity
	, a.first_application_date AS funnel_activity_date
	, 1 AS activity_order
	, a.candidate_name
	, a.candidate_id
	, concat(a.requisition_id,' | ' ,a.candidate_id) AS req_cand_id
	, concat(a.requisition_id , ' | ' , a.candidate_id) AS application_id
	, a.application_id AS app_id_for_eeo
	, a.candidate_employee_id
	, a.source_category
	, a.source
	, NULL as interview_id
	, NULL as interview_has_feedback
	, a.first_application_date AS application_date
	, b.first_recruiter_screen
	, c.first_phone_interview
	, d.first_tech_screen
	, CASE 
			WHEN c.first_phone_interview < d.first_tech_screen 
					OR d.first_tech_screen IS NULL
				THEN c.first_phone_interview
			ELSE d.first_tech_screen
		END AS first_phone_interview_or_tech_screen
	, e.first_onsite_interview
	, f.first_offer_accept
	, g.last_offer_decline
	, f.candidate_start_date
	, COALESCE(f.first_offer_accept, g.last_offer_decline) AS first_accept_last_decline
	, h.orphan_offer_requisition_id
	, h.orphan_offer_activity
	, h.orphan_first_accept_last_decline
	, h.orphan_offer_candidate_start_date
	, h.orphan_offer_first_application_date
	, NULL AS orphan_onsite_requisition_id
	, NULL AS orphan_first_onsite_interview
	, NULL AS orphan_onsite_first_application_date
	, NULL AS offer_decline_reason

FROM first_application AS a
	LEFT JOIN first_recruiter_screen AS b
		ON a.candidate_email = b.candidate_email
		AND a.requisition_id = b.requisition_id
	LEFT JOIN first_phone_interview AS c
		ON a.candidate_email = c.candidate_email
		AND a.requisition_id = c.requisition_id
	LEFT JOIN first_tech_screen AS d
		ON a.candidate_email = d.candidate_email
		AND a.requisition_id = d.requisition_id
	LEFT JOIN first_onsite_interview AS e
		ON a.candidate_email = e.candidate_email
		AND a.requisition_id = e.requisition_id
	LEFT JOIN first_offer_accept AS f
		ON a.candidate_email = f.candidate_email
		AND a.requisition_id = f.requisition_id
	LEFT JOIN last_offer_decline AS g
		ON a.candidate_email = g.candidate_email
		AND a.requisition_id = g.requisition_id
	LEFT JOIN match_orphans AS h
		ON a.candidate_email = h.candidate_email
		AND a.requisition_id = h.orphan_onsite_requisition_id
WHERE a.first_application_date >= '20170101'

UNION ALL
--INTERVIEWS--
SELECT a.candidate_email
	, a.requisition_id
	, a.funnel_activity
	, a.funnel_activity_date
	, ROW_NUMBER() OVER (PARTITION BY a.candidate_email, a.requisition_id, a.funnel_activity ORDER BY funnel_activity_date) AS activity_order
	, a1.candidate_name
	, a1.candidate_id
	, concat(a1.requisition_id,' | ',a1.candidate_id) AS req_cand_id
	, concat(a1.requisition_id , ' | ' ,a1.candidate_id) AS application_id
	, a1.application_id AS app_id_for_eeo
	, a1.candidate_employee_id
	, a1.source_category
	, a1.source
	, a.interview_id
	, a.interview_has_feedback
	, a1.first_application_date
	, b.first_recruiter_screen
	, c.first_phone_interview
	, d.first_tech_screen
	, CASE 
			WHEN c.first_phone_interview < d.first_tech_screen 
					OR d.first_tech_screen IS NULL
				THEN c.first_phone_interview
			ELSE d.first_tech_screen
		END AS first_phone_interview_or_tech_screen
	, e.first_onsite_interview
	, f.first_offer_accept
	, g.last_offer_decline
	, f.candidate_start_date
	, COALESCE(f.first_offer_accept, g.last_offer_decline) AS first_accept_last_decline
	, h.orphan_offer_requisition_id
	, h.orphan_offer_activity
	, h.orphan_first_accept_last_decline
	, h.orphan_offer_candidate_start_date
	, h.orphan_offer_first_application_date
	, NULL AS orphan_onsite_requisition_id
	, NULL AS orphan_first_onsite_interview
	, NULL AS orphan_onsite_first_application_date
	, NULL AS offer_decline_reason

FROM all_interviews AS a
	INNER JOIN first_application AS a1
		ON a.candidate_email = a1.candidate_email
			AND a.requisition_id = a1.requisition_id
	LEFT JOIN first_recruiter_screen AS b
		ON a.candidate_email = b.candidate_email
		AND a.requisition_id = b.requisition_id
	LEFT JOIN first_phone_interview AS c
		ON a.candidate_email = c.candidate_email
		AND a.requisition_id = c.requisition_id
	LEFT JOIN first_tech_screen AS d
		ON a.candidate_email = d.candidate_email
		AND a.requisition_id = d.requisition_id
	LEFT JOIN first_onsite_interview AS e
		ON a.candidate_email = e.candidate_email
		AND a.requisition_id = e.requisition_id
	LEFT JOIN first_offer_accept AS f
		ON a.candidate_email = f.candidate_email
		AND a.requisition_id = f.requisition_id
	LEFT JOIN last_offer_decline AS g
		ON a.candidate_email = g.candidate_email
		AND a.requisition_id = g.requisition_id		
	LEFT JOIN match_orphans AS h
		ON a.candidate_email = h.candidate_email
		AND a.requisition_id = h.orphan_onsite_requisition_id
WHERE a.funnel_activity_date >= '20170101'

UNION ALL
--OFFER ACCEPTS--
SELECT a.candidate_email
	, a.requisition_id
	, a.funnel_activity
	, a.first_offer_accept AS funnel_activity_date
	, 1 AS activity_order
	, a1.candidate_name
	, a1.candidate_id
	, concat(a1.requisition_id , ' | ' , a1.candidate_id) AS req_cand_id
	, concat(a1.requisition_id , ' | ' , a1.candidate_id) AS application_id
	, a1.application_id AS app_id_for_eeo
	, a1.candidate_employee_id
	, a1.source_category
	, a1.source
	, NULL AS interview_id
	, NULL AS interview_has_feedback
	, a1.first_application_date
	, b.first_recruiter_screen
	, c.first_phone_interview
	, d.first_tech_screen
	, CASE 
			WHEN c.first_phone_interview < d.first_tech_screen 
					OR d.first_tech_screen IS NULL
				THEN c.first_phone_interview
			ELSE d.first_tech_screen
		END AS first_phone_interview_or_tech_screen
	, e.first_onsite_interview
	, a.first_offer_accept
	, g.last_offer_decline
	, a.candidate_start_date
	, COALESCE(a.first_offer_accept, g.last_offer_decline) AS first_accept_last_decline
	, NULL AS orphan_offer_requisition_id
	, NULL AS orphan_offer_activity
	, NULL AS orphan_first_accept_last_decline
	, NULL AS orphan_offer_candidate_start_date
	, NULL AS orphan_offer_first_application_date
	, h.orphan_onsite_requisition_id
	, h.orphan_first_onsite_interview
	, h.orphan_onsite_first_application_date
	, NULL AS offer_decline_reason

FROM first_offer_accept AS a
	INNER JOIN first_application AS a1
		ON a.candidate_email = a1.candidate_email
			AND a.requisition_id = a1.requisition_id
	LEFT JOIN first_recruiter_screen AS b
		ON a.candidate_email = b.candidate_email
		AND a.requisition_id = b.requisition_id
	LEFT JOIN first_phone_interview AS c
		ON a.candidate_email = c.candidate_email
		AND a.requisition_id = c.requisition_id
	LEFT JOIN first_tech_screen AS d
		ON a.candidate_email = d.candidate_email
		AND a.requisition_id = d.requisition_id
	LEFT JOIN first_onsite_interview AS e
		ON a.candidate_email = e.candidate_email
		AND a.requisition_id = e.requisition_id
	LEFT JOIN last_offer_decline AS g
		ON a.candidate_email = g.candidate_email
		AND a.requisition_id = g.requisition_id
	LEFT JOIN match_orphans AS h
		ON a.candidate_email = h.candidate_email
		AND a.requisition_id = h.orphan_offer_requisition_id
	WHERE first_offer_accept >= '20170101'

UNION ALL
--OFFER DECLINES
SELECT a.candidate_email
	, a.requisition_id
	, a.funnel_activity
	, a.last_offer_decline AS funnel_activity_date
	, 1 AS activity_order
	, a1.candidate_name
	, a1.candidate_id
	, concat(a1.requisition_id , ' | ' , a1.candidate_id) AS req_cand_id
	, concat(a1.requisition_id , ' | ' , a1.candidate_id) AS application_id
	, a1.application_id AS app_id_for_eeo
	, a1.candidate_employee_id
	, a1.source_category
	, a1.source
	, NULL AS interview_id
	, NULL AS interview_has_feedback
	, a1.first_application_date
	, b.first_recruiter_screen
	, c.first_phone_interview
	, d.first_tech_screen
	, CASE 
			WHEN c.first_phone_interview < d.first_tech_screen 
					OR d.first_tech_screen IS NULL
				THEN c.first_phone_interview
			ELSE d.first_tech_screen
		END AS first_phone_interview_or_tech_screen
	, e.first_onsite_interview
	, f.first_offer_accept
	, a.last_offer_decline
	, f.candidate_start_date
	, COALESCE(f.first_offer_accept, a.last_offer_decline) AS first_accept_last_decline
	, NULL AS orphan_offer_requisition_id
	, NULL AS orphan_offer_activity
	, NULL AS orphan_first_accept_last_decline
	, NULL AS orphan_offer_candidate_start_date
	, NULL AS orphan_offer_first_application_date
	, h.orphan_onsite_requisition_id
	, h.orphan_first_onsite_interview
	, h.orphan_onsite_first_application_date
	, a.offer_decline_reason

FROM last_offer_decline AS a
	INNER JOIN first_application AS a1
		ON a.candidate_email = a1.candidate_email
			AND a.requisition_id = a1.requisition_id
	LEFT JOIN first_recruiter_screen AS b
		ON a.candidate_email = b.candidate_email
		AND a.requisition_id = b.requisition_id
	LEFT JOIN first_phone_interview AS c
		ON a.candidate_email = c.candidate_email
		AND a.requisition_id = c.requisition_id
	LEFT JOIN first_tech_screen AS d
		ON a.candidate_email = d.candidate_email
		AND a.requisition_id = d.requisition_id
	LEFT JOIN first_onsite_interview AS e
		ON a.candidate_email = e.candidate_email
		AND a.requisition_id = e.requisition_id
	LEFT JOIN first_offer_accept AS f
		ON a.candidate_email = f.candidate_email
		AND a.requisition_id = f.requisition_id
	LEFT JOIN match_orphans AS h
		ON a.candidate_email = h.candidate_email
		AND a.requisition_id = h.orphan_offer_requisition_id
WHERE last_offer_decline >= '20170101'

UNION ALL
--CLEAR--
SELECT a.candidate_email
	, a.requisition_id_for_dashboards AS requisition_id
	, a.funnel_activity
	, a.funnel_activity_date
	, 1 AS activity_order
	, a.candidate_name
	, a.clear_candidate_id AS candidate_id
	, a.req_cand_id
	, a.application_id
	, a.app_id_for_eeo
	, NULL AS candidate_employee_id
	, a.source_category
	, a.source
	, NULL AS interview_id
	, NULL AS interview_has_feedback
	, a.application_date AS first_application_date
	, NULL AS first_recruiter_screen
	, NULL AS first_phone_interview
	, NULL AS first_tech_screen
	, NULL AS first_phone_interview_or_tech_screen
	, NULL AS first_onsite_interview
	, a.funnel_activity_date AS first_offer_accept
	, NULL AS last_offer_decline
	, a.candidate_start_date
	, a.funnel_activity_date AS first_accept_last_decline
	, NULL AS orphan_offer_requisition_id
	, NULL AS orphan_offer_activity
	, NULL AS orphan_first_accept_last_decline
	, NULL AS orphan_offer_candidate_start_date
	, NULL AS orphan_offer_first_application_date
	, NULL AS orphan_onsite_requisition_id
	, NULL AS orphan_first_onsite_interview
	, NULL AS orphan_onsite_first_application_date
	, NULL AS offer_decline_reason

FROM recruitingdb.v_clear_offer_accepts AS a
WHERE a.funnel_activity_date >= '20181101';

select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();
/*
set env_admin_role='dev_admin_role';
set ea_env_metadata='ea_dev_metadata';
set ea_env_raw='ea_dev_raw';
set ea_env_ods='ea_dev_ods';
set ea_env_ods_stage='ea_dev_ods_stage';

 */
/*
set env_admin_role='test_admin_role';
set ea_env_metadata='ea_test_metadata';
set ea_env_raw='ea_test_raw';
set ea_env_ods='ea_test_ods';
set ea_env_ods_stage='ea_test_ods_stage';

 */

/*
set env_admin_role='prod_admin_role';
set ea_env_metadata='ea_prod_metadata';
set ea_env_raw='ea_prod_raw';
set ea_env_ods='ea_prod_ods';
set ea_env_ods_stage='ea_prod_ods_stage';

 */

-- Session Variables for snowSQL
use role identifier($env_admin_role); -- dev_admin_role;
use database identifier($ea_env_ods_stage); use schema rct;  
-- use database identifier($ea_env_ods);
select current_warehouse(), current_database(), current_schema(), current_timestamp(), current_session(), current_client(), current_role();


CREATE OR REPLACE VIEW VW_LD_REQUISITION_MASTER AS

WITH 

JRR AS
	(
	SELECT b.requisition_id
		, b.match_requisition_id
		, b.requisition_unique_id
		, COALESCE(REC.preferred_name,a.jobvite_recruiter_name) AS jobvite_recruiter_name
		, a.jobvite_recruiter_employee_id
		, REC.manager AS jobvite_recruiter_manager
		, SO.level_07_name AS jobvite_recruiting_leader
		, COALESCE(REC.sup_org_ref_id, a.jobvite_recruiter_supervisory_org_id) AS jobvite_recruiter_sup_org_id

		FROM RECRUITINGDB.v_jobvite_recruiters AS a
			INNER JOIN RECRUITINGDB.v_jobvite_requisitions AS b
				ON a.jobvite_recruiter_name = COALESCE(b.primary_recruiter_tracking_purposes_only,b.primary_recruiter_full_name) 
			LEFT JOIN rct.vw_bu_all_employees AS REC
				ON a.jobvite_recruiter_employee_id = REC.employee_id
			LEFT JOIN rct.vw_bu_supervisory_org_coalesce AS SO
				ON COALESCE(REC.sup_org_ref_id, a.jobvite_recruiter_supervisory_org_id) = SO.supervisory_organization_reference_id
		)
SELECT
	WR.data_as_of
	, 'Workday' AS ats
	, WR.requisition_id
	, WR.requisition_status
	, WR.job_requisition_status AS requisition_status_summary
	, WR.job_posting_title AS job_title
	, WR.job_profile
	, CASE 
			WHEN CHARINDEX('E',WR.job_level) = 1 THEN 'Executive'
			WHEN CHARINDEX(WR.job_level,WR.job_profile) > 0 
				THEN LEFT(WR.job_profile,charindex(concat(' ',WR.job_level),WR.job_profile)) 
			WHEN (CHARINDEX(WR.job_level,WR.job_profile) = 0 OR WR.job_level IS NULL) AND CHARINDEX('inactive',WR.job_profile) > 0
				THEN 'Inactive Job Profiles'
			ELSE REPLACE(cast(WR.job_profile as varchar),' (inactive)','')
			END AS job_profile_group

	, WR.hiring_manager
	, WR.hiring_manager_employee_id
	, WR.brand
	, WR.job_category
	, WR.cost_center
	, CASE
			WHEN WR.is_evergreen = 'Yes' THEN WR.requisition_division
			ELSE WR.product_category 
		END AS division
	, WR.job_family
	, WR.worker_sub_type
	, WR.job_level
	, WR.job_profile_exempt
	, CASE
			WHEN WR.is_evergreen = 'Yes' THEN 'Evergreen Requisition'
			ELSE WR.new_or_replacement
		END AS new_or_replacement
	, WR.replacement_for_worker
	, WR.job_requisition_primary_location AS location_name
	, WR.city AS location_city
	, WR.recruiting_start_date
	, SO.level_04_name AS leader
	, SO.level_05_name AS leader_direct
	, SO.level_06_name AS leader_direct_level_2
	, WR.supervisory_organization
	, WR.is_evergreen
	, WR.linked_evergreen_requisition
	, WR.business_unit
	, WR.location_state_code
	, WR.country
	, CASE
		WHEN LOWER(cast(WR.job_requisition_status as varchar)) IN ('open', 'frozen') 
			OR WR.created_moment >= '2018-05-14' 
			OR WR.close_date >= '2018-05-14'
			OR WR.job_requisition_filled_date >= '2018-05-14'
			THEN COALESCE(REPLACE(cast(WR.primary_recruiters as varchar), concat(char(10),char(10)),', '),JRR.jobvite_recruiter_name)
		ELSE JRR.jobvite_recruiter_name
		END AS primary_recruiters

	, CASE
		WHEN LOWER(cast(WR.job_requisition_status as varchar)) IN ('open', 'frozen') 
			OR WR.created_moment >= '2018-05-14' 
			OR WR.close_date >= '2018-05-14'
			OR WR.job_requisition_filled_date >= '2018-05-14'
			THEN COALESCE(REPLACE(cast(WR.primary_recruiters_managers as varchar), concat(char(10),char(10)),', '),JRR.jobvite_recruiter_manager)
		ELSE JRR.jobvite_recruiter_manager
		END AS primary_recruiters_managers

	, CASE
		WHEN LOWER(cast(WR.job_requisition_status as varchar)) IN ('open', 'frozen') 
			OR WR.created_moment >= '2018-05-14' 
			OR WR.close_date >= '2018-05-14'
			OR WR.job_requisition_filled_date >= '2018-05-14'
			THEN COALESCE(REPLACE(cast(WR.primary_recruiters_recruiting_leaders as varchar), concat(char(10),char(10)),', '), JRR.jobvite_recruiting_leader)
		ELSE JRR.jobvite_recruiting_leader
		END AS primary_recruiters_recruiting_leaders

	, CASE
		WHEN LOWER(cast(WR.job_requisition_status as varchar)) IN ('open', 'frozen') 
			OR WR.created_moment >= '2018-05-14' 
			OR WR.close_date >= '2018-05-14'
			OR WR.job_requisition_filled_date >= '2018-05-14'
			THEN 'Workday'
		ELSE 'Jobvite'
		END AS recruiter_data_source
	, REPLACE(cast(WR.recruiting_coordinators as varchar), concat(char(10),char(10)),', ') AS recruiting_coordinators
	, REPLACE(cast(WR.sourcers as varchar), concat(char(10),char(10)),', ') AS sourcers
	, WR.sup_org_ref_id
	, WR.job_posted_externally
	, WR.job_posted_internally
	, WR.linked_evergreen_req_id
	, WR.position_id
	, WR.management_level
	, WR.anaplan_headcount_id
	, WR.company
	, WR.initial_job_title
	, CAST(NULL AS date) AS new_unopen_date_available
	, WR.requisition_id AS open_headcount_match_id
--	, WR.cost_center AS position_current_cost_center --!!!!!NEED TO UPDATE THIS
--	, WR.requisition_division AS position_current_division --!!!!!NEED TO UPDATE THIS
	, CASE
			WHEN WR.worker_sub_type = 'Intern (Trainee)'
					OR FR.is_ur = 1
				THEN 1
		END AS is_ur
	, CASE 
			WHEN WR.company = 'ZHL Zillow Home Loans, LLC'
				THEN 1 END AS is_zhl
	, FR.is_zo
	, WR.requisition_approval_date
	, CASE
	  WHEN LOWER(cast (WR.job_requisition_status as varchar)) IN ('open', 'frozen') 
		OR WR.created_moment >= '2018-05-14' 
		OR WR.close_date >= '2018-05-14'
		OR WR.job_requisition_filled_date >= '2018-05-14'
		THEN REPLACE( cast(WR.primary_recruiters_email_addresses as varchar), concat(char(10),char(10)),', ')
	  ELSE  WR.primary_recruiters_email_addresses
	  END AS primary_recruiters_email_addresses

FROM rct.vw_map_workday_requisitions AS WR
	LEFT JOIN JRR
		ON WR.requisition_id = JRR.match_requisition_id
	LEFT JOIN rct.vw_bu_supervisory_org_coalesce AS SO
		ON WR.sup_org_ref_id = SO.supervisory_organization_reference_id
	LEFT JOIN rct.vw_requisitions_ur_zo_zhl AS FR
		ON WR.requisition_id = FR.requisition_id
	LEFT JOIN rct.vw_map_workday_cost_centers AS CC
		ON WR.cost_center_code = CC.code



UNION ALL

SELECT
	(SELECT TOP 1 WR.data_as_of FROM rct.vw_map_workday_requisitions AS WR) AS data_as_of
	, 'Jobvite' AS ats
	, COALESCE(JR.match_requisition_id,concat('jobvite_',CAST(JR.requisition_unique_id AS nvarchar(10)))) AS requisition_id
	, JR.job_status AS requisition_status
	, JR.job_status AS requisition_status_summary
	, JR.job_title
	, NULL AS job_profile
	, NULL AS job_profile_group
	, JR.primary_hiring_manager_full_name AS hiring_manager
	, NULL AS hiring_manager_employee_id
	, JR.brand
	, CASE
		WHEN JR.job_type IN ('Full-Time','Part-Time') THEN JR.category 
		ELSE NULL 
		END AS job_category
	, JR.department AS cost_center
	, NULL AS division
	, JR.job_family
	, JR.job_type AS worker_sub_type
	, JR.level AS job_level
	, JR.flsa_staus AS job_profile_exempt
	, CASE
		WHEN LEFT(JR.match_requisition_id,2) = 'V0' THEN 'Immigration'
		WHEN Lower(cast(JR.new_or_replacement as varchar)) = 'new' THEN 'New Headcount'
		WHEN Lower(JR.new_or_replacement) = 'replacement' THEN 'Replacement Headcount'
		WHEN CHARINDEX('pipeline',LOWER(cast(JR.match_requisition_id as varchar))) > 0 THEN 'Evergreen Requisition' 
		ELSE JR.new_or_replacement
		END AS new_or_replacement
	, JR.replacing_employee AS replacement_for_worker
	, LOC.workday_location_name AS location_name
	, LOC.requisition_city AS location_city
	, JR.requisition_opened_date AS recruiting_start_date
	, NULL AS leader
	, NULL AS leader_direct
	, NULL AS leader_direct_level_2
	, NULL AS supervisory_organization
	, CASE
		WHEN CHARINDEX('pipeline',LOWER(cast(JR.match_requisition_id as varchar))) > 0
			THEN 'Yes'
			ELSE 'No'
		END AS is_evergreen
	, NULL AS linked_evergreen_requisition
	, JR.category AS business_unit
	, LOC.location_state_code
	, LOC.country
	, JRR.jobvite_recruiter_name AS primary_recruiters
	, JRR.jobvite_recruiter_manager AS primary_recruiters_managers
	, JRR.jobvite_recruiting_leader AS primary_recruiters_recruiting_leaders
	, 'Jobvite' AS primary_recruiter_source
	, NULL AS recruiting_coordinators
	, NULL AS sourcers
	, NULL AS sup_ort_ref_id
	, 'No' AS job_posted_externally
	, 'No' AS job_posted_internally
	, NULL AS linked_evergreen_req_id
	, NULL AS position_id
	, NULL AS management_level
	, NULL AS anaplan_headcount_id
	, NULL AS company
	, NULL AS initial_job_title
	, CAST(NULL AS date) AS new_unopen_date_available
	, COALESCE(JR.match_requisition_id,concat('jobvite_',CAST(JR.requisition_unique_id AS nvarchar(10)))) AS open_headcount_match_id
--	, NULL AS position_current_cost_center
--	, NULL AS position_current_division
	, CASE
			WHEN JR.job_type = 'Intern'
					OR FR.is_ur = 1
				THEN 1
		END AS is_ur
	, NULL AS is_zhl
	, FR.is_zo
	, NULL AS requisition_approval_date
	, NULL AS primary_recruiters_email_addresses
FROM RECRUITINGDB.v_jobvite_requisitions AS JR
	LEFT JOIN JRR ON JR.requisition_unique_id = JRR.requisition_unique_id
	LEFT JOIN rct.vw_map_workday_requisitions AS WR ON JR.match_requisition_id = WR.requisition_id
	LEFT JOIN RECRUITINGDB.v_jobvite_location_mapping AS LOC ON JR.location = LOC.requisition_location
	LEFT JOIN rct.vw_requisitions_ur_zo_zhl AS FR
		ON JR.match_requisition_id = FR.requisition_id

WHERE WR.requisition_id IS NULL

UNION ALL

SELECT
	(SELECT TOP 1 WR.data_as_of FROM rct.vw_map_workday_requisitions AS WR) AS data_as_of
	, CASE WHEN AU.headcount_status = 'Approved' THEN 'Approved Unopened' 
			WHEN AU.headcount_status = 'Requested' THEN 'Requested Headcount'
			END AS ats
	, NULL AS requisition_id
	, NULL AS requisition_status
	, NULL AS requisition_status_summary
	, au.business_title AS job_title
	, AU.job_profile
	, CASE 
			WHEN CHARINDEX('E',AU.job_level) = 1 THEN 'Executive'
			WHEN CHARINDEX(AU.job_level,AU.job_profile) > 0 
				THEN LEFT(AU.job_profile,charindex(concat(' ',AU.job_level),AU.job_profile)) 
			WHEN (CHARINDEX(AU.job_level,AU.job_profile) = 0 OR AU.job_level IS NULL) AND CHARINDEX('inactive',AU.job_profile) > 0
				THEN 'Inactive Job Profiles'
			ELSE REPLACE(cast(AU.job_profile as varchar),' (inactive)','')
			END AS job_profile_group

	, AU.manager_name AS hiring_manager
	, NULL AS hiring_manager_employee_id
	, AU.brand
	, JP.job_category
	, AU.cost_center_name AS cost_center
	, AU.product_category AS division
	, JP.job_family
	, AU.employee_type AS worker_sub_type	
	, CASE WHEN AU.job_level IS NULL OR AU.job_level = 'IN'
		THEN JP.job_level
		ELSE AU.job_level
		END AS job_level
	, NULL AS job_profile_exempt
	, CASE
		WHEN AU.headcount_status = 'Requested' THEN 'Requested Headcount (Not Yet Approved)'
		WHEN AU.availability_date IS NOT NULL THEN 'New Headcount'
		ELSE 'Replacement Headcount'
		END AS new_or_replacement
	, CASE WHEN AU.replacement_for = '' THEN NULL ELSE replacement_for END AS replacement_for_worker
	, AU.location AS location_name
	, JL.city AS location_city
	, NULL AS recruiting_start_date
	, SO.level_04_name AS leader
	, SO.level_05_name AS leader_direct
	, SO.level_06_name AS leader_direct_level_2
	, SO.supervisory_organization
	, NULL AS is_evergreen
	, NULL AS linked_evergreen_requisition
	, NULL AS business_unit
	, JL.location_state_code
	, JL.country
	, NULL AS primary_recruiters
	, NULL AS primary_recruiters_managers
	, NULL AS primary_recruiters_recruiting_leaders
	, NULL AS recruiter_data_source
	, NULL AS recruiting_coordinators
	, NULL AS sourcers
	, AU.sup_org_code AS sup_org_ref_id
	, NULL AS job_posted_externally
	, NULL AS job_posted_internally
	, NULL AS linked_evergreen_req_id
	, AU.headcount_id AS position_id
	, JP.management_level
	, AU.headcount_id AS anaplan_headcount_id
	, AU.company
	, AU.business_title AS initial_job_title
	, AU.availability_date AS new_unopen_date_available
	, concat('AU-',AU.headcount_id) AS open_headcount_match_id

	, CASE
			WHEN CHARINDEX('Intern',AU.employee_type) > 0
			THEN 1
			ELSE 0
		END AS is_ur
	, CASE
			WHEN AU.company = 'ZHL Zillow Home Loans, LLC'
			THEN 1
			ELSE 0
		END AS is_zhl
	, CASE
			WHEN AU.product_category = '09 Zillow Offers'
			THEN 1
			ELSE 0
		END AS is_zo
	, NULL as requisition_approval_date
	, NULL as primary_recruiters_email_addresses
FROM rct.vw_map_anaplan_open_headcount AS AU
	LEFT JOIN rct.vw_map_workday_requisitions AS WR
		ON AU.headcount_id = WR.anaplan_headcount_id
		AND WR.job_requisition_status IN ('Open', 'Frozen')
	LEFT JOIN (SELECT JP0.job_profile
					, JP0.comp_grade_id
					, JP0.job_category
					, JP0.job_family
					, JP0.management_level
					, JP0.job_level
					, ROW_NUMBER() OVER (PARTITION BY JP0.job_profile, JP0.comp_grade_id
											ORDER BY JP0.job_profile_inactive, JP0.last_updated DESC) AS row_nbr
				FROM rct.vw_map_workday_job_profiles AS JP0
				WHERE JP0.comp_grade_id IS NOT NULL) AS JP
			ON AU.job_profile_code = JP.comp_grade_id
				AND AU.job_profile = JP.job_profile
				AND JP.row_nbr = 1
	LEFT JOIN rct.vw_bu_supervisory_org_coalesce AS SO
		ON AU.sup_org_code = SO.supervisory_organization_reference_id
	LEFT JOIN (SELECT DISTINCT JL0.job_requisition_primary_location AS workday_location_name
					, JL0.city
					, JL0.location_state_code
					, JL0.country
				FROM rct.vw_map_workday_requisitions AS JL0
					WHERE JL0.job_requisition_primary_location IS NOT NULL) AS JL
				ON AU.location = JL.workday_location_name
WHERE WR.requisition_id IS NULL
--AND AU.headcount_status = 'Approved'

--Add MLOA Clear Requisitions-----
UNION ALL

SELECT
	(SELECT TOP 1 WR.data_as_of FROM rct.vw_map_workday_requisitions AS WR) AS data_as_of
	, 'Clear' AS ats
	, CR.requisition_id_for_dashboards AS requisition_id
	, CR.requisition_status
	, CR.requisition_status_summary
	, CR.job_title
	, JP.job_profile
	, CASE 
			WHEN CHARINDEX('E',JP.job_level) = 1 THEN 'Executive'
			WHEN CHARINDEX(JP.job_level,JP.job_profile) > 0 
				THEN LEFT(JP.job_profile,charindex(concat(' ',JP.job_level),JP.job_profile)) 
			WHEN (CHARINDEX(JP.job_level,JP.job_profile) = 0 OR JP.job_level IS NULL) AND CHARINDEX('inactive',JP.job_profile) > 0
				THEN 'Inactive Job Profiles'
			ELSE REPLACE(cast(JP.job_profile as varchar),' (inactive)','')
			END AS job_profile_group
	, CR.hiring_manager
	, CR.hiring_manager_employee_id
	, CR.brand
	, JP.job_category
	, CC.cost_center
	, CC.product_category
	, JP.job_family
	, CR.worker_sub_type	
	, JP.job_level
	, CR.job_profile_exempt
	, CR.new_or_replacement
	, CR.replacement_for_worker
	, CR.location_city AS location_name
	, CR.location_city
	, CR.recruiting_start_date
	, SC.level_04_name AS leader
	, SC.level_05_name AS leader_direct
	, SC.level_06_name AS leader_direct_level_2
	, CR.supervisory_organization
	, CR.is_evergreen
	, NULL AS linked_evergreen_requisition
	, CR.business_unit
	, CR.location_state_code
	, CR.country
	, CR.primary_recruiter AS primary_recruiters
	, AR.workers_manager AS primary_recruiters_managers
	, COALESCE(AR.level_06_name, AR.workers_manager) AS primary_recruiters_recruiting_leaders
	, CR.recruiter_data_source
	, NULL AS recruiting_coordinators
	, NULL AS sourcers
	, CR.supervisory_organization_reference_id AS sup_org_ref_id
	, CR.job_posted_externally
	, CR.job_posted_internally
	, NULL AS linked_evergreen_req_id
	, CR.workday_position_id AS position_id
	, JP.management_level
	, CR.anaplan_headcount_id
	, CR.company
	, NULL AS initial_job_title
	, NULL AS new_unopen_date_available
	, requisition_id_for_dashboards AS open_headcount_match_id
--	, AU.cost_center AS position_current_cost_center
--	, AU.division AS position_current_division
	, NULL AS is_ur
	, 1 AS is_zhl
	, NULL AS is_zo
	, NULL AS requisition_approval_date
	, NULL as primary_recruiters_email_addresses
FROM RECRUITINGDB.v_clear_requisitions AS CR
	LEFT JOIN rct.vw_bu_all_recruiters AS AR
		ON CR.primary_recruiter_employee_id = AR.employee_id
	LEFT JOIN rct.vw_bu_supervisory_org_coalesce AS SC
		ON CR.supervisory_organization_reference_id = SC.supervisory_organization_reference_id
	LEFT JOIN rct.vw_map_workday_job_profiles AS JP
		ON CR.job_code = JP.job_code
	LEFT JOIN rct.vw_workday_cost_centers AS CC
		ON CR.cost_center_code = CC.code;
