/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/4/4 星期四 13:56:05                        */
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
   ID                   varchar(32) not null comment '打分主键',
   WX_ID                varchar(200) comment '打分人',
   S_WX_ID              varchar(200) comment '被打分人',
   GOOD                 varchar(2000) comment '优点',
   BAD                  varchar(2000) comment '缺点',
   STORY                varchar(2000) comment '故事',
   REG_TIME             timestamp comment '录入时间',
   primary key (ID)
);

alter table T_EVALUATE_INFO comment '打分表';

/*==============================================================*/
/* Table: T_ORDER_INFO                                          */
/*==============================================================*/
create table T_ORDER_INFO
(
   ORDER_ID             varchar(32) not null comment '订单主键',
   WX_ID                varchar(50) not null comment '发起人',
   USER_ID              varchar(32) not null comment '发起人信息id',
   S_ID                 varchar(32) not null comment '发起人要求id',
   STATUS               varchar(1) comment '状态0匹配中1匹配完成',
   REG_TIME             timestamp comment '录入时间',
   FIND_TIME            timestamp comment '匹配完成时间',
   S_WX_ID              varchar(200) comment '被匹配人',
   primary key (ORDER_ID)
);

alter table T_ORDER_INFO comment '订单表';

/*==============================================================*/
/* Table: T_PAY_INFO                                            */
/*==============================================================*/
create table T_PAY_INFO
(
   ORDER_ID             varchar(32) not null comment '订单主键',
   WX_ID                varchar(50) not null comment '微信号',
   PAY_TIME             timestamp comment '支付时间',
   PAY_MONEY            decimal(4,2) comment '支付金额',
   primary key (ORDER_ID)
);

alter table T_PAY_INFO comment '支付信息表';

/*==============================================================*/
/* Table: T_SEARCH_INFO                                         */
/*==============================================================*/
create table T_SEARCH_INFO
(
   S_ID                 varchar(32) not null comment '查找主键',
   S_WORK_AREA          varchar(200) comment '工作地',
   S_BIRTH_AREA         varchar(200) comment '籍贯',
   S_EDU_LEVEL          varchar(1) comment '学历',
   S_AGE                int comment '年龄',
   S_SALARY             int comment '薪资',
   S_INTRO_SELF         varchar(2000) comment '自我描述',
   S_REG_TIME           timestamp comment '录入时间',
   primary key (S_ID)
);

alter table T_SEARCH_INFO comment '搜寻信息';

/*==============================================================*/
/* Table: T_SYS_ADDRESS                                         */
/*==============================================================*/
create table T_SYS_ADDRESS
(
   ID                   varchar(5) not null comment '地址主键',
   PID                  varchar(5) comment '父及地区关系',
   DISTRICT             varchar(120) comment '地区名称',
   LEVEL                varchar(1) comment '子属级别关系',
   primary key (ID)
);

alter table T_SYS_ADDRESS comment '地址配置表';

/*==============================================================*/
/* Table: T_SYS_EDU                                             */
/*==============================================================*/
create table T_SYS_EDU
(
   EDU_ID               varchar(2) not null comment 'key',
   EDU_NAME             varchar(100) comment 'VALUE',
   primary key (EDU_ID)
);

alter table T_SYS_EDU comment '学历配置表';

/*==============================================================*/
/* Table: T_SYS_SALARY                                          */
/*==============================================================*/
create table T_SYS_SALARY
(
   SAL_ID               varchar(2) not null comment 'key',
   SAL_NAME             varchar(100) comment 'value',
   primary key (SAL_ID)
);

alter table T_SYS_SALARY comment '薪资配置表';

/*==============================================================*/
/* Table: T_USER_ID                                             */
/*==============================================================*/
create table T_USER_ID
(
   WX_ID                varchar(50) not null comment '微信号',
   primary key (WX_ID)
);

alter table T_USER_ID comment '用户标识表';

/*==============================================================*/
/* Table: T_USER_INFO                                           */
/*==============================================================*/
create table T_USER_INFO
(
   USER_ID              varchar(32) not null comment '用户信息主键',
   WORK_AREA            varchar(200) comment '工作地',
   BIRTH_AREA           varchar(200) comment '籍贯',
   EDU_LEVEL            varchar(1) comment '学历',
   AGE                  int comment '年龄',
   SALARY               int comment '薪资',
   INTRO_SELF           varchar(2000) comment '自我描述',
   REG_TIME             timestamp comment '录入时间',
   primary key (USER_ID)
);

alter table T_USER_INFO comment '用户信息';

