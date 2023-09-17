/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     9/17/2023 7:57:52 PM                         */
/*==============================================================*/
create database STORY;

use STORY;

drop table if exists ACCOUNT;

drop table if exists DETAIL_REPORT; 

drop table if exists PART;

drop table if exists POLICY;

drop table if exists POLICY_TYPE;

drop table if exists READING;

drop table if exists REPORT;

drop table if exists STORY;

drop table if exists TYPE_OF_STORY;

drop table if exists USER;

/*==============================================================*/
/* Table: ACCOUNT                                               */
/*==============================================================*/
create table ACCOUNT
(
   USERNAME             varchar(50) not null,
   PASSWORD             varchar(50) not null,
   ROLE                 char(10) not null,
   primary key (USERNAME)
);

/*==============================================================*/
/* Table: DETAIL_REPORT                                         */
/*==============================================================*/
create table DETAIL_REPORT
(
   POLICY_ID            char(10) not null,
   REPORT_ID            char(10) not null,
   primary key (POLICY_ID, REPORT_ID)
);

/*==============================================================*/
/* Table: PART                                                  */
/*==============================================================*/
create table PART
(
   STORY_ID             char(10) not null,
   PART_ID              char(10) not null,
   PART_NAME            varchar(240),
   SUMMARY              text,
   CONTENT              text,
   primary key (STORY_ID, PART_ID)
);

/*==============================================================*/
/* Table: POLICY                                                */
/*==============================================================*/
create table POLICY
(
   POLICY_ID            char(10) not null,
   PT_ID                char(10) not null,
   NAME                 varchar(240),
   CONTENT              text,
   primary key (POLICY_ID)
);

/*==============================================================*/
/* Table: POLICY_TYPE                                           */
/*==============================================================*/
create table POLICY_TYPE
(
   PT_ID                char(10) not null,
   NAME                 varchar(240),
   SUMMARY              text,
   primary key (PT_ID)
);

/*==============================================================*/
/* Table: READING                                               */
/*==============================================================*/
create table READING
(
   USER_ID              varchar(10) not null,
   STORY_ID             char(10) not null,
   BEGIN_DATE           date,
   primary key (USER_ID, STORY_ID)
);

/*==============================================================*/
/* Table: REPORT                                                */
/*==============================================================*/
create table REPORT
(
   REPORT_ID            char(10) not null,
   USER_ID              varchar(10) not null,
   STORY_ID             char(10) not null,
   primary key (REPORT_ID)
);

/*==============================================================*/
/* Table: STORY                                                 */
/*==============================================================*/
create table STORY
(
   STORY_ID             char(10) not null,
   TOT_ID               char(10) not null,
   USER_ID              varchar(10) not null,
   STORY_NAME           varchar(240),
   SUMMARY              text,
   PUBLISH_DATE         date,
   primary key (STORY_ID)
);

/*==============================================================*/
/* Table: TYPE_OF_STORY                                         */
/*==============================================================*/
create table TYPE_OF_STORY
(
   TOT_ID               char(10) not null,
   TOT_NAME             varchar(240),
   TOT_DETAIL           text,
   primary key (TOT_ID)
);

/*==============================================================*/
/* Table: USER                                                  */
/*==============================================================*/
create table USER
(
   USER_ID              varchar(10) not null,
   USERNAME             varchar(50) not null,
   FULL_NAME            varchar(220),
   AVATAR               varchar(220),
   BIO                  text,
   GENDER               varchar(10),
   ADDRESS              varchar(500),
   primary key (USER_ID)
);

alter table DETAIL_REPORT add constraint FK_DETAIL_REPORT foreign key (POLICY_ID)
      references POLICY (POLICY_ID) on delete restrict on update restrict;

alter table DETAIL_REPORT add constraint FK_DETAIL_REPORT2 foreign key (REPORT_ID)
      references REPORT (REPORT_ID) on delete restrict on update restrict;

alter table PART add constraint FK_OF foreign key (STORY_ID)
      references STORY (STORY_ID) on delete restrict on update restrict;

alter table POLICY add constraint FK_OF_PT foreign key (PT_ID)
      references POLICY_TYPE (PT_ID) on delete restrict on update restrict;

alter table READING add constraint FK_READING foreign key (USER_ID)
      references USER (USER_ID) on delete restrict on update restrict;

alter table READING add constraint FK_READING2 foreign key (STORY_ID)
      references STORY (STORY_ID) on delete restrict on update restrict;

alter table REPORT add constraint FK_REPORT foreign key (USER_ID)
      references USER (USER_ID) on delete restrict on update restrict;

alter table REPORT add constraint FK_REPORT_STORY foreign key (STORY_ID)
      references STORY (STORY_ID) on delete restrict on update restrict;

alter table STORY add constraint FK_COMPOSE foreign key (USER_ID)
      references USER (USER_ID) on delete restrict on update restrict;

alter table STORY add constraint FK_TYPE foreign key (TOT_ID)
      references TYPE_OF_STORY (TOT_ID) on delete restrict on update restrict;

alter table USER add constraint FK_AC_USER foreign key (USERNAME)
      references ACCOUNT (USERNAME) on delete restrict on update restrict;

