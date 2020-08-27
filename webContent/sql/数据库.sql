--bb课程-classin课程信息（一对一）
create table bb_course_classin_course(
 bb_course_id VARCHAR2(100) PRIMARY KEY,
 classin_course_id VARCHAR2(32) not null
);

--classin课程-classin课节(一对多)
create table classin_course_class(
classin_course_id VARCHAR2(32),
classin_class_id VARCHAR2(32),
dtcreated VARCHAR2(20) not null,
teacher_phone VARCHAR2(20),
assistant_phone VARCHAR2(20),
expire_status varchar2(1) default '0',
live_url VARCHAR2(300),
live_info VARCHAR2(500),
delete_status varchar2(1),
CONSTRAINT PK_classin_course_class PRIMARY KEY (classin_course_id,classin_class_id)
);

alter table classin_course_class add class_time_length integer default 14400;
alter table classin_course_class add close_class_delay integer default 1200;

--课节课程表
create table classin_course_timetable(
course_id VARCHAR2(100),
teacher_id VARCHAR2(20),
classDate  date;
class_start_time date,
class_end_time date
);


--研讨室课节
create table classin_course_class_meeting(
classin_course_id VARCHAR2(32),
classin_class_id VARCHAR2(32),
dtcreated VARCHAR2(20),
teacher_phone VARCHAR2(20),
assistant_phone VARCHAR2(20),
expire_status varchar2(1) default '0',
live_url varchar2(100),
delete_status varchar2(1) default 'N'
CONSTRAINT PK_classin_class_meeting PRIMARY KEY (classin_course_id,classin_class_id)
);


--用户-手机号对应信息(一对一)
create table user_phone(
user_id VARCHAR2(50) PRIMARY KEY,
phone VARCHAR2(20) unique
);

alter table user_phone add classin_uid VARCAR2(50);

--视频信息
create table classin_class_video(
classin_course_id varchar2(20),
classin_class_id varchar2(20),
action_time varchar2(30),
sid_id VARCHAR2(20),
v_timestamp varchar2(30),
vst varchar2(30),
vet varchar2(30),
cmd varchar2(100),
v_url varchar2(500),
v_duration int,
file_id varchar2(50),
v_size int,
delete_status varchar2(1)
);

----    pku@bb#metc=2013
--添加URL
--修改课节信息
insert into system_registry(pk1,registry_key,registry_value) 
values(system_registry_seq.nextval,'classin_addteacher_url','https://api.eeo.cn/partner/api/course.api.php?action=addTeacher');
insert into system_registry(pk1,registry_key,registry_value) 
values(system_registry_seq.nextval,'classin_removeCourseTeacher_url','https://api.eeo.cn/partner/api/course.api.php?action=removeCourseTeacher');
insert into system_registry(pk1,registry_key,registry_value) 
values(system_registry_seq.nextval,'classin_register_url','https://api.eeo.cn/partner/api/course.api.php?action=register');
insert into system_registry(pk1,registry_key,registry_value) 
values(system_registry_seq.nextval,'classin_entrance_url','https://api.eeo.cn/partner/api/course.api.php?action=getLoginLinked');
insert into system_registry(pk1,registry_key,registry_value) 
values(system_registry_seq.nextval,'classin_editCourseClass_url','https://api.eeo.cn/partner/api/course.api.php?action=editCourseClass');
insert into system_registry(pk1,registry_key,registry_value) 
values(system_registry_seq.nextval,'classin_delCourseStudent_url','https://api.eeo.cn/partner/api/course.api.php?action=delCourseStudent');
insert into system_registry(pk1,registry_key,registry_value) 
values(system_registry_seq.nextval,'classin_addcoursestudent_url','https://api.eeo.cn/partner/api/course.api.php?action=addCourseStudent');
insert into system_registry(pk1,registry_key,registry_value)
values(system_registry_seq.nextval,'classin_addclassstudent_url','https://api.eeo.cn/partner/api/course.api.php?action=addClassStudentMultiple');
insert into system_registry(pk1,registry_key,registry_value) 
values(system_registry_seq.nextval,'classin_addcourseclass_url','https://api.eeo.cn/partner/api/course.api.php?action=addCourseClass');
insert into system_registry(pk1,registry_key,registry_value) 
values(system_registry_seq.nextval,'classin_addcourse_url','https://api.eeo.cn/partner/api/course.api.php?action=addCourse');
--删除课节
insert into system_registry(pk1,,registry_value)
values(system_registry_seq.nextval,'classin_deletecourseclass_url','https://api.eeo.cn/partner/api/course.api.php?action=deleteClassVideo');

insert into system_registry(pk1,registry_key,registry_value) 
values(system_registry_seq.nextval,'classin_import_grade_url','TODO');
insert into system_registry(pk1,registry_key,registry_value) 
values(system_registry_seq.nextval,'classin_class_activity_info_url','TODO');

commit;