create table inspection_raw_data(
camis number,
dba varchar2(140),
buro varchar2(13),
building varchar2(20),
street varchar2(150),
zipcode varchar2(15),
phone char(12),
cuisine_description varchar2(100),
inspection_date date,
action varchar2(200),
violation_code char(4),
violation_description varchar2(3000),
critical_flag varchar2(15),
score number,
grade char(14),
grade_date date,
record_date date,
inspection_type varchar2(140),
);



select cuisine_description, avg(score) an "avg score" from inspection_raw_data group by cuisine_description;

select min(inspection_date) as start_dt, max(inspection_date) as end_dt from inspection_raw_data;