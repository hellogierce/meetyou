/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/4/4 ������ 13:56:05                        */
/*==============================================================*/


drop table if exists T_EVALUATE_INFO;

drop table if exists T_ORDER_INFO;

drop table if exists T_PAY_INFO;

drop table if exists T_SEARCH_INFO;

drop table if exists T_SYS_ADDRESS;

drop table if exists T_SYS_EDU;

drop table if exists T_SYS_SALARY;

drop table if exists T_USER_ID;

drop table if exists T_USER_INFO;

/*==============================================================*/
/* Table: T_EVALUATE_INFO                                       */
/*==============================================================*/
create table T_EVALUATE_INFO
(
   ID                   varchar(32) not null comment '�������',
   WX_ID                varchar(200) comment '�����',
   S_WX_ID              varchar(200) comment '�������',
   GOOD                 varchar(2000) comment '�ŵ�',
   BAD                  varchar(2000) comment 'ȱ��',
   STORY                varchar(2000) comment '����',
   REG_TIME             timestamp comment '¼��ʱ��',
   primary key (ID)
);

alter table T_EVALUATE_INFO comment '��ֱ�';

/*==============================================================*/
/* Table: T_ORDER_INFO                                          */
/*==============================================================*/
create table T_ORDER_INFO
(
   ORDER_ID             varchar(32) not null comment '��������',
   WX_ID                varchar(50) not null comment '������',
   USER_ID              varchar(32) not null comment '��������Ϣid',
   S_ID                 varchar(32) not null comment '������Ҫ��id',
   STATUS               varchar(1) comment '״̬0ƥ����1ƥ�����',
   REG_TIME             timestamp comment '¼��ʱ��',
   FIND_TIME            timestamp comment 'ƥ�����ʱ��',
   S_WX_ID              varchar(200) comment '��ƥ����',
   primary key (ORDER_ID)
);

alter table T_ORDER_INFO comment '������';

/*==============================================================*/
/* Table: T_PAY_INFO                                            */
/*==============================================================*/
create table T_PAY_INFO
(
   ORDER_ID             varchar(32) not null comment '��������',
   WX_ID                varchar(50) not null comment '΢�ź�',
   PAY_TIME             timestamp comment '֧��ʱ��',
   PAY_MONEY            decimal(4,2) comment '֧�����',
   primary key (ORDER_ID)
);

alter table T_PAY_INFO comment '֧����Ϣ��';

/*==============================================================*/
/* Table: T_SEARCH_INFO                                         */
/*==============================================================*/
create table T_SEARCH_INFO
(
   S_ID                 varchar(32) not null comment '��������',
   S_WORK_AREA          varchar(200) comment '������',
   S_BIRTH_AREA         varchar(200) comment '����',
   S_EDU_LEVEL          varchar(1) comment 'ѧ��',
   S_AGE                int comment '����',
   S_SALARY             int comment 'н��',
   S_INTRO_SELF         varchar(2000) comment '��������',
   S_REG_TIME           timestamp comment '¼��ʱ��',
   primary key (S_ID)
);

alter table T_SEARCH_INFO comment '��Ѱ��Ϣ';

/*==============================================================*/
/* Table: T_SYS_ADDRESS                                         */
/*==============================================================*/
create table T_SYS_ADDRESS
(
   ID                   varchar(5) not null comment '��ַ����',
   PID                  varchar(5) comment '����������ϵ',
   DISTRICT             varchar(120) comment '��������',
   LEVEL                varchar(1) comment '���������ϵ',
   primary key (ID)
);

alter table T_SYS_ADDRESS comment '��ַ���ñ�';

/*==============================================================*/
/* Table: T_SYS_EDU                                             */
/*==============================================================*/
create table T_SYS_EDU
(
   EDU_ID               varchar(2) not null comment 'key',
   EDU_NAME             varchar(100) comment 'VALUE',
   primary key (EDU_ID)
);

alter table T_SYS_EDU comment 'ѧ�����ñ�';

/*==============================================================*/
/* Table: T_SYS_SALARY                                          */
/*==============================================================*/
create table T_SYS_SALARY
(
   SAL_ID               varchar(2) not null comment 'key',
   SAL_NAME             varchar(100) comment 'value',
   primary key (SAL_ID)
);

alter table T_SYS_SALARY comment 'н�����ñ�';

/*==============================================================*/
/* Table: T_USER_ID                                             */
/*==============================================================*/
create table T_USER_ID
(
   WX_ID                varchar(50) not null comment '΢�ź�',
   primary key (WX_ID)
);

alter table T_USER_ID comment '�û���ʶ��';

/*==============================================================*/
/* Table: T_USER_INFO                                           */
/*==============================================================*/
create table T_USER_INFO
(
   USER_ID              varchar(32) not null comment '�û���Ϣ����',
   WORK_AREA            varchar(200) comment '������',
   BIRTH_AREA           varchar(200) comment '����',
   EDU_LEVEL            varchar(1) comment 'ѧ��',
   AGE                  int comment '����',
   SALARY               int comment 'н��',
   INTRO_SELF           varchar(2000) comment '��������',
   REG_TIME             timestamp comment '¼��ʱ��',
   primary key (USER_ID)
);

alter table T_USER_INFO comment '�û���Ϣ';

