/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2019/4/8 0:06:54                             */
/*==============================================================*/


drop table if exists T_EVALUATE_INFO;

drop table if exists T_ORDER_INFO;

drop table if exists T_PAY_INFO;

drop table if exists T_SEARCH_INFO;

drop table if exists T_SYS_ADDRESS;

drop table if exists T_SYS_EDU;

drop table if exists T_SYS_HOBBY;

drop table if exists T_SYS_MARKING;

drop table if exists T_SYS_NATURE;

drop table if exists T_SYS_PARAM;

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
   STATUS               varchar(1) comment '状态0  匹配中 1匹配完成 2未找到匹配人，系统结束',
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
   S_NATRUE             varchar(200) comment '性格',
   S_HOBBY              varchar(200) comment '爱好',
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
/* Table: T_SYS_HOBBY                                           */
/*==============================================================*/
create table T_SYS_HOBBY
(
   HOBBY_ID             varchar(4) not null comment '爱好主键',
   HOBBY_NAME           varchar(200) comment '爱好名',
   VISIBLE              varchar(1) comment '0不显示1显示',
   primary key (HOBBY_ID)
);

alter table T_SYS_HOBBY comment '爱好配置表';

/*==============================================================*/
/* Table: T_SYS_MARKING                                         */
/*==============================================================*/
create table T_SYS_MARKING
(
   MARKING_ID           varchar(4) not null comment '主键',
   MARKING_NAME         varchar(200) comment '优缺点名',
   DIVISION             varchar(1) comment '0优点1缺点',
   VISIBLE              varchar(1) comment '0不显示1显示',
   RATIO                int(3) comment '系数',
   primary key (MARKING_ID)
);

alter table T_SYS_MARKING comment '优点/缺点配置表';

/*==============================================================*/
/* Table: T_SYS_NATURE                                          */
/*==============================================================*/
create table T_SYS_NATURE
(
   NATURE_ID            varchar(4) not null comment '性格主键',
   NATURE_NAME          varchar(200) comment '性格名',
   VISIBLE              varchar(1) comment '0不显示1显示',
   primary key (NATURE_ID)
);

alter table T_SYS_NATURE comment '性格配置表';

/*==============================================================*/
/* Table: T_SYS_PARAM                                           */
/*==============================================================*/
create table T_SYS_PARAM
(
   PARAM_ID             varchar(100) not null comment '参数名',
   PARAM_NAME           varchar(100) comment '参数值',
   primary key (PARAM_ID)
);

alter table T_SYS_PARAM comment '参数配置表';

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
   PRICE                int(4) comment '身价',
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
   NATRUE               varchar(200) comment '性格',
   HOBBY                varchar(200) comment '爱好',
   INTRO_SELF           varchar(2000) comment '自我描述',
   REG_TIME             timestamp comment '录入时间',
   primary key (USER_ID)
);

alter table T_USER_INFO comment '用户信息';

