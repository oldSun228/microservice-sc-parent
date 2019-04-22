prompt PL/SQL Developer Export Tables for user TYDIC01@192.168.1.4:1521/ORCL
prompt Created by fan on 2019Äê4ÔÂ22ÈÕ
set feedback off
set define off

prompt Creating SYS_FUNC...
create table SYS_FUNC
(
  id          VARCHAR2(50) not null,
  func_code   VARCHAR2(100),
  name        VARCHAR2(100),
  func_type   VARCHAR2(20),
  isopen      VARCHAR2(20),
  opendate    DATE,
  func_url    VARCHAR2(200),
  func_desc   VARCHAR2(600),
  pid         VARCHAR2(50),
  func_level  INTEGER,
  func_seq    INTEGER,
  isleaf      VARCHAR2(20),
  isparent    VARCHAR2(20),
  createuser  VARCHAR2(100),
  createtime  DATE,
  bz          VARCHAR2(800),
  version     INTEGER,
  deleted     VARCHAR2(20),
  classfield  VARCHAR2(100),
  open        INTEGER,
  siteid      VARCHAR2(20),
  grouptype   VARCHAR2(10),
  serviceaddr VARCHAR2(300),
  selectlayer VARCHAR2(300),
  tablename   VARCHAR2(100)
)
tablespace OLDSUN01
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_FUNC_ROLE_R...
create table SYS_FUNC_ROLE_R
(
  func_id   VARCHAR2(50),
  func_code VARCHAR2(100),
  func_name VARCHAR2(200),
  role_id   VARCHAR2(50),
  role_code VARCHAR2(100),
  role_name VARCHAR2(200),
  authuser  VARCHAR2(200),
  authtime  DATE,
  deleted   VARCHAR2(20),
  id        VARCHAR2(50) not null,
  version   INTEGER
)
tablespace OLDSUN01
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_RES_CONTENT...
create table SYS_RES_CONTENT
(
  id         VARCHAR2(50) not null,
  code       VARCHAR2(50),
  name       VARCHAR2(100),
  sjlx       VARCHAR2(20),
  mltype     VARCHAR2(20),
  pid        VARCHAR2(50),
  ssml       VARCHAR2(50),
  sort       INTEGER,
  createuser VARCHAR2(100),
  createtime DATE,
  bz         VARCHAR2(600),
  version    INTEGER,
  deleted    VARCHAR2(20),
  hasinfo    VARCHAR2(20),
  icon_p     VARCHAR2(100),
  url        VARCHAR2(100)
)
tablespace OLDSUN01
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_RES_INFO...
create table SYS_RES_INFO
(
  id          VARCHAR2(50) not null,
  nodeid      VARCHAR2(300),
  name        VARCHAR2(300),
  mltype      VARCHAR2(50),
  datype      VARCHAR2(50),
  url         VARCHAR2(1000),
  dadesc      VARCHAR2(2000),
  famat       VARCHAR2(50),
  dasize      VARCHAR2(500),
  ssmlmc      VARCHAR2(1000),
  ssmlid      VARCHAR2(100),
  slt         VARCHAR2(2000),
  keyword     VARCHAR2(50),
  abstract    VARCHAR2(1000),
  scope       VARCHAR2(50),
  xxfl        VARCHAR2(50),
  ztfl        VARCHAR2(100),
  ckzbx       VARCHAR2(2000),
  gxzq        VARCHAR2(50),
  zcr         VARCHAR2(300),
  metaname    VARCHAR2(100),
  alianame    VARCHAR2(100),
  metadesc    VARCHAR2(100),
  dwmc        VARCHAR2(100),
  dwdz        VARCHAR2(100),
  lxrmc       VARCHAR2(100),
  email       VARCHAR2(50),
  website     VARCHAR2(50),
  lxdh        VARCHAR2(50),
  fbrq        DATE,
  minx        VARCHAR2(50),
  miny        VARCHAR2(50),
  maxx        VARCHAR2(50),
  maxy        VARCHAR2(50),
  wkid        VARCHAR2(50),
  wkt         VARCHAR2(50),
  requestmode VARCHAR2(50),
  sccs        INTEGER,
  llcs        INTEGER,
  sqcs        INTEGER,
  version     INTEGER default ((1)),
  deleted     INTEGER default ((0)),
  createtime  DATE,
  pidname     VARCHAR2(100),
  type        VARCHAR2(10),
  prefix      VARCHAR2(100),
  address     VARCHAR2(100),
  zybm        VARCHAR2(100),
  cross_type  INTEGER,
  csjl        VARCHAR2(200),
  appkey      VARCHAR2(200),
  luurl       VARCHAR2(200),
  metatype    VARCHAR2(1),
  fz          VARCHAR2(200)
)
tablespace OLDSUN01
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_ROLE...
create table SYS_ROLE
(
  role_id    VARCHAR2(50) not null,
  role_code  VARCHAR2(100),
  role_name  VARCHAR2(100),
  role_desc  VARCHAR2(200),
  createuser VARCHAR2(50),
  createtime DATE,
  deleted    INTEGER default ((0)),
  version    INTEGER default ((1)),
  site_id    INTEGER
)
tablespace OLDSUN01
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_ROLE_CONTENT...
create table SYS_ROLE_CONTENT
(
  id      VARCHAR2(50) not null,
  role_id VARCHAR2(50),
  con_id  VARCHAR2(50)
)
tablespace OLDSUN01
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_USER...
create table SYS_USER
(
  user_id    VARCHAR2(50) not null,
  user_name  VARCHAR2(100),
  user_type  VARCHAR2(20),
  password   VARCHAR2(100),
  status     VARCHAR2(10),
  createuser VARCHAR2(10),
  createtime DATE,
  gender     VARCHAR2(4),
  cardtype   VARCHAR2(20),
  cardno     VARCHAR2(40),
  party      VARCHAR2(20),
  department VARCHAR2(100),
  oaddress   VARCHAR2(100),
  position   VARCHAR2(10),
  degree     VARCHAR2(20),
  empstatus  VARCHAR2(10),
  otel       VARCHAR2(40),
  mobileno   VARCHAR2(40),
  qq         VARCHAR2(50),
  email      VARCHAR2(40),
  weixin     VARCHAR2(20),
  haddress   VARCHAR2(200),
  remark     VARCHAR2(200),
  version    INTEGER default ((1)),
  deleted    INTEGER default ((0)),
  photo      VARCHAR2(100),
  nickname   VARCHAR2(100),
  xzdwcode   VARCHAR2(100)
)
tablespace OLDSUN01
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SYS_USER_ROLE_R...
create table SYS_USER_ROLE_R
(
  id         VARCHAR2(50) not null,
  role_id    VARCHAR2(50),
  user_id    VARCHAR2(50),
  version    INTEGER default ((1)),
  createtime DATE,
  deleted    VARCHAR2(20) default ((0))
)
tablespace OLDSUN01
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for SYS_FUNC...
alter table SYS_FUNC disable all triggers;
prompt Disabling triggers for SYS_FUNC_ROLE_R...
alter table SYS_FUNC_ROLE_R disable all triggers;
prompt Disabling triggers for SYS_RES_CONTENT...
alter table SYS_RES_CONTENT disable all triggers;
prompt Disabling triggers for SYS_RES_INFO...
alter table SYS_RES_INFO disable all triggers;
prompt Disabling triggers for SYS_ROLE...
alter table SYS_ROLE disable all triggers;
prompt Disabling triggers for SYS_ROLE_CONTENT...
alter table SYS_ROLE_CONTENT disable all triggers;
prompt Disabling triggers for SYS_USER...
alter table SYS_USER disable all triggers;
prompt Disabling triggers for SYS_USER_ROLE_R...
alter table SYS_USER_ROLE_R disable all triggers;
prompt Deleting SYS_USER_ROLE_R...
delete from SYS_USER_ROLE_R;
commit;
prompt Deleting SYS_USER...
delete from SYS_USER;
commit;
prompt Deleting SYS_ROLE_CONTENT...
delete from SYS_ROLE_CONTENT;
commit;
prompt Deleting SYS_ROLE...
delete from SYS_ROLE;
commit;
prompt Deleting SYS_RES_INFO...
delete from SYS_RES_INFO;
commit;
prompt Deleting SYS_RES_CONTENT...
delete from SYS_RES_CONTENT;
commit;
prompt Deleting SYS_FUNC_ROLE_R...
delete from SYS_FUNC_ROLE_R;
commit;
prompt Deleting SYS_FUNC...
delete from SYS_FUNC;
commit;
prompt Loading SYS_FUNC...
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('1', null, '²Ëµ¥¹ÜÀí', null, '1', null, null, null, '0', null, null, '0', '1', null, null, null, null, null, null, 1, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('4028198163633ca301636394362d0002', null, 'Êý×ÖµØÍ¼', '1', '0', null, '/SZMap.jsp', null, '4028810260d4809b0160d4be9e160000', null, 1, '0', '1', null, null, null, 3, null, 'glyphicon glyphicon-globe', null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('4028198163633ca30163639d19260003', null, 'ÍÁÈÀ¼ì²â', '1', '0', null, '/TRDetection.jsp', null, '4028810260d4809b0160d4be9e160000', null, 4, '0', '1', null, null, null, 3, null, 'glyphicon glyphicon-road', null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('4028198163633ca30163639e467e0004', null, 'Æøºò¹ÜÀí', '1', '0', null, '/wearth/wearth.jsp', null, '4028810260d4809b0160d4be9e160000', null, 5, '0', '1', null, null, null, 3, null, 'glyphicon glyphicon-leaf', null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('4028198163633ca30163639f227b0005', null, '»ù´¡¹ÜÀí', '1', '0', null, '/', null, '4028810260d4809b0160d4be9e160000', null, 7, '0', '1', null, null, null, 3, null, 'glyphicon glyphicon-th-list', null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('4028198163633ca30163639f9d180006', null, 'ÈËÔ±¿â¹ÜÀí', '2', '0', null, '/Personnel.jsp', null, '4028198163633ca30163639f227b0005', null, 1, '0', '1', null, null, null, 1, '0', null, null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('4028198163633ca30163639fee760007', null, '×÷Îï¿â¹ÜÀí', '2', '0', null, '/Plant.jsp', null, '4028198163633ca30163639f227b0005', null, 2, '0', '1', null, null, null, 1, '0', null, null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('4028198163633ca3016363a047860008', null, 'Å©×Ê¿â¹ÜÀí', '2', '0', null, '/Resources.jsp', null, '4028198163633ca30163639f227b0005', null, 3, '0', '1', null, null, null, 1, '0', null, null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('4028198163633ca3016363a0a1bf0009', null, 'Éè±¸¿â¹ÜÀí', '2', '0', null, '/Work.jsp', null, '4028198163633ca30163639f227b0005', null, 4, '0', '1', null, null, null, 2, null, null, null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('4028198163633ca3016363a289e8000a', null, '·þÎñ¹ÜÀí', '2', '0', null, '/system/mapServer.jsp', null, '402881cd5fbd2daf015fbea277a60000', null, 4, '0', '1', null, null, null, 2, null, null, null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('4028810260d4809b0160d4be9e160000', null, 'ÖÇ»ÛÅ©ÒµÔÆÆ½Ì¨', '0', '0', null, '/', null, '1', null, 1, '0', '1', 'lsf', null, null, 4, null, null, null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881a25fd20311015fd20a6fdb0004', 'RoleAdmin_New', 'ÐÂ½¨', '3', '1', null, 'role_add', 'ÐÂ½¨', '402881cd5fbd2daf015fbea682710003', 4, 1, '0', '1', '¹ÜÀíÔ±', null, '½ÇÉ«¹ÜÀíÄ£¿é ÐÂ½¨½ÇÉ«¹¦ÄÜ', 5, null, null, 1, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd5fbd2daf015fbea277a60000', null, 'ÏµÍ³¹ÜÀí', '1', '0', null, '/', null, '4028810260d4809b0160d4be9e160000', null, 8, '0', '1', '¹ÜÀíÔ±', null, 'ÏµÍ³¹ÜÀíÄ£¿é', 11, null, 'glyphicon glyphicon-cog', 1, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd5fbd2daf015fbea419fc0001', null, 'ÓÃ»§¹ÜÀí', '2', '0', null, '/system/userControl.jsp', null, '402881cd5fbd2daf015fbea277a60000', null, 1, '0', '1', null, null, '111', 2, null, null, 1, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd5fbd2daf015fbea682710003', null, '½ÇÉ«¹ÜÀí', '2', '0', null, '/system/roleManage.jsp', null, '402881cd5fbd2daf015fbea277a60000', null, 2, '0', '1', '1', null, '½ÇÉ«¹ÜÀí¹¦ÄÜÒ³Ãæ', 6, null, null, 1, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd5fbd2daf015fbea713d30004', null, 'ÖÖÖ²¹ÜÀí', '1', '0', null, '/ZZManage.jsp', null, '4028810260d4809b0160d4be9e160000', null, 3, '0', '1', null, null, null, 12, null, 'glyphicon glyphicon-tree-deciduous', 1, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd5fc2b709015fc2d6b7ea0000', null, 'ÏµÍ³Ãû³Æ', '0', '0', null, '/images/title_white.png', null, '4028810260d4809b0160d4be9e160000', null, 9, '0', '1', null, null, null, 9, null, null, 1, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd5fc2b709015fc2ff1ca40006', null, 'Çø»®¹ÜÀí', '1', '0', null, '/index.jsp', null, '4028810260d4809b0160d4be9e160000', null, 2, '0', '1', '¹ÜÀíÔ±', null, 'Ê×Ò³', 9, null, 'glyphicon glyphicon-dashboard', 1, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd5fc2b709015fc3716f6c001a', null, '²Ëµ¥¹ÜÀí', '2', '0', null, '/system/menu.jsp', null, '402881cd5fbd2daf015fbea277a60000', null, 3, '0', '1', null, null, null, 5, null, null, 1, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd5fc2b709015fc371bd68001b', null, '×Öµä¹ÜÀí', '2', '0', null, '/system/dictionaries.jsp', null, '402881cd5fbd2daf015fbea277a60000', null, 5, '0', '1', null, null, null, 3, null, null, 1, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd5fdd05af015fdd397bdf001f', 'RoleAdmin_Edit', '±à¼­', '3', '1', null, 'role_update', '±à¼­', '402881cd5fbd2daf015fbea682710003', 4, 2, '0', '1', '¹ÜÀíÔ±', null, '½ÇÉ«¹ÜÀí ±à¼­¹¦ÄÜ', 5, null, null, 1, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd5fdd05af015fdd3a99470020', 'RoleAdmin_Delete', 'É¾³ý', '3', '1', null, 'role_delete', '½ÇÉ«É¾³ý', '402881cd5fbd2daf015fbea682710003', 4, 3, '0', '1', '¹ÜÀíÔ±', null, '½ÇÉ«¹ÜÀí É¾³ý', 3, null, null, 1, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd5fdd05af015fdd3bba8f0021', 'RoleAdmin_Right', '½ÇÉ«ÊÚÈ¨', '3', '1', null, 'role_authorize', '½ÇÉ«ÊÚÈ¨', '402881cd5fbd2daf015fbea682710003', 4, 4, '0', '1', '¹ÜÀíÔ±', null, '½ÇÉ«¹ÜÀí ÊÚÈ¨', 8, null, null, 1, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd5fdd05af015fdd3e1f830022', 'MenuAdmin_New', 'ÐÂ½¨', '3', '1', null, 'fun_add', null, '402881cd5fc2b709015fc3716f6c001a', 4, 1, '0', '1', '¹ÜÀíÔ±', null, '²Ëµ¥¹ÜÀí ÐÂ½¨', 2, null, null, 1, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd5fdd05af015fdd42144d0023', 'MenuAdmin_Delete', 'É¾³ý', '3', '1', null, 'fun_delete', null, '402881cd5fc2b709015fc3716f6c001a', 4, 2, '0', '1', '¹ÜÀíÔ±', null, 'É¾³ý²Ëµ¥Ïî', 2, null, null, 1, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd5fdd05af015fdd43cbdc0025', 'MenuAdmin_Save', '±£´æ', '3', '1', null, 'fun_save', '±£´æ', '402881cd5fc2b709015fc3716f6c001a', 4, 4, '0', '1', '¹ÜÀíÔ±', null, '±£´æ', 2, null, null, null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd5fdd05af015fdd464dc00027', 'RoleAdmin_Query', '²éÑ¯', '3', '1', null, 'role_select', '²éÑ¯£¨°üº¬¸ß¼¶²éÑ¯£©', '402881cd5fbd2daf015fbea682710003', 4, 5, '0', '1', '¹ÜÀíÔ±', null, '²éÑ¯£¨°üº¬¸ß¼¶²éÑ¯£©', 2, null, null, null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd5fdd05af015fdd474e910028', null, 'ÐÂ½¨', '3', '0', null, 'dict_add', null, '402881cd5fc2b709015fc371bd68001b', null, 1, '0', '1', '¹ÜÀíÔ±', null, 'ÐÂ½¨×Öµä', 3, null, null, null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd5fdd05af015fdd47f76c0029', null, '±à¼­', '3', '0', null, 'dict_edit', null, '402881cd5fc2b709015fc371bd68001b', null, 2, '0', '1', '¹ÜÀíÔ±', null, '±à¼­×Öµä', 3, null, null, null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd5fdd05af015fdd490c71002a', null, 'É¾³ý', '3', '0', null, 'dict_delete', null, '402881cd5fc2b709015fc371bd68001b', null, 3, '0', '1', '¹ÜÀíÔ±', null, 'É¾³ý×Öµä', 3, null, null, null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd5fdd05af015fdd4bc895002c', 'DictAdmin_Save', '±£´æ', '3', '1', null, 'dict_save', '±£´æ', '402881cd5fc2b709015fc371bd68001b', 4, 5, '0', '1', '¹ÜÀíÔ±', null, '±£´æ', 2, null, null, null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd5fdd05af015fdd4d3dc7002d', 'UserAdmin_New', 'ÐÂ½¨', '3', '1', null, 'user_add', 'ÐÂ½¨', '402881cd5fbd2daf015fbea419fc0001', 4, 1, '0', '1', '¹ÜÀíÔ±', null, 'ÐÂ½¨', 2, null, null, null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd5fdd05af015fdd4f16db002e', 'UserAdmin_Delete', 'É¾³ý', '3', '1', null, 'user_delete', 'É¾³ý', '402881cd5fbd2daf015fbea419fc0001', 4, 2, '0', '1', '¹ÜÀíÔ±', null, 'É¾³ý', 3, null, null, null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd6005a026016005d45011005c', 'UserAdmin_revamp', 'ÐÞ¸Ä', '3', '1', null, 'user_revamp', null, '402881cd5fbd2daf015fbea419fc0001', null, 3, '0', '1', 'cyq', null, null, 1, '0', null, 1, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd6005a026016005db7589005d', 'UserAdmin_Query', '²éÑ¯', '3', '1', null, 'user_select', null, '402881cd5fbd2daf015fbea419fc0001', null, 4, '0', '1', 'cyq', null, null, 1, '0', null, 1, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('402881cd609fe01b0160a008c75c0001', 'UserAdmin_Right', 'ÓÃ»§ÊÚÈ¨', '3', '1', null, 'user_authorize', null, '402881cd5fbd2daf015fbea419fc0001', null, 6, '0', '1', 'cyq', null, null, 2, null, null, null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('4028da63636b78bf01636c8cbebf0003', null, 'Ìì¿ÕµØÒ£¸Ð·´ÑÝ', '1', '0', null, '/', null, '4028810260d4809b0160d4be9e160000', null, 6, '0', '1', null, null, null, 2, null, 'glyphicon glyphicon-retweet', null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('4028da63636b78bf01636c901c2a0004', null, '³¤ÊÆ¼à²â', '2', '0', null, '/fanyan/one.jsp', null, '4028da63636b78bf01636c8cbebf0003', null, 1, '0', '1', null, null, null, 6, null, null, null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('4028da63636b78bf01636c91046e0005', null, '³ÉÊì¶È¼à²â', '2', '0', null, '/fanyan/two.jsp', null, '4028da63636b78bf01636c8cbebf0003', null, 2, '0', '1', null, null, null, 2, null, null, null, '1', null, null, null, null);
insert into SYS_FUNC (id, func_code, name, func_type, isopen, opendate, func_url, func_desc, pid, func_level, func_seq, isleaf, isparent, createuser, createtime, bz, version, deleted, classfield, open, siteid, grouptype, serviceaddr, selectlayer, tablename)
values ('4028da63636b78bf01636c917ec50006', null, 'Æ·ÖÊ¼ì²â', '2', '0', null, '/fanyan/three.jsp', null, '4028da63636b78bf01636c8cbebf0003', null, 3, '0', '1', null, null, null, 2, null, null, null, '1', null, null, null, null);
commit;
prompt 40 records loaded
prompt Loading SYS_FUNC_ROLE_R...
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fbd2daf015fbea713d30004', null, null, '615c89f44a774873b48e7f004029ca0d', null, null, null, to_date('15-05-2018 09:09:52', 'dd-mm-yyyy hh24:mi:ss'), '0', '402819816363a69a016363b4f177002a', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('4028198163633ca30163639f227b0005', null, null, '615c89f44a774873b48e7f004029ca0d', null, null, null, to_date('15-05-2018 09:09:52', 'dd-mm-yyyy hh24:mi:ss'), '0', '402819816363a69a016363b4f18f002b', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('4028198163633ca30163639f9d180006', null, null, '615c89f44a774873b48e7f004029ca0d', null, null, null, to_date('15-05-2018 09:09:52', 'dd-mm-yyyy hh24:mi:ss'), '0', '402819816363a69a016363b4f1a9002c', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('4028198163633ca30163639fee760007', null, null, '615c89f44a774873b48e7f004029ca0d', null, null, null, to_date('15-05-2018 09:09:52', 'dd-mm-yyyy hh24:mi:ss'), '0', '402819816363a69a016363b4f1bf002d', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('4028198163633ca3016363a047860008', null, null, '615c89f44a774873b48e7f004029ca0d', null, null, null, to_date('15-05-2018 09:09:52', 'dd-mm-yyyy hh24:mi:ss'), '0', '402819816363a69a016363b4f1d6002e', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('4028198163633ca3016363a0a1bf0009', null, null, '615c89f44a774873b48e7f004029ca0d', null, null, null, to_date('15-05-2018 09:09:52', 'dd-mm-yyyy hh24:mi:ss'), '0', '402819816363a69a016363b4f1eb002f', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fc2b709015fc2d6b7ea0000', null, null, '615c89f44a774873b48e7f004029ca0d', null, null, null, to_date('15-05-2018 09:09:52', 'dd-mm-yyyy hh24:mi:ss'), '0', '402819816363a69a016363b4f2000030', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fbd2daf015fbea277a60000', null, null, '25ddf321-c039-40d3-9b12-ab781572a822', null, null, null, to_date('18-05-2018 05:18:18', 'dd-mm-yyyy hh24:mi:ss'), '0', '40282d816370a41801637254045d0038', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fbd2daf015fbea419fc0001', null, null, '25ddf321-c039-40d3-9b12-ab781572a822', null, null, null, to_date('18-05-2018 05:18:18', 'dd-mm-yyyy hh24:mi:ss'), '0', '40282d816370a41801637254046e0039', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd4d3dc7002d', null, null, '25ddf321-c039-40d3-9b12-ab781572a822', null, null, null, to_date('18-05-2018 05:18:18', 'dd-mm-yyyy hh24:mi:ss'), '0', '40282d816370a418016372540481003a', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fbd2daf015fbea682710003', null, null, '25ddf321-c039-40d3-9b12-ab781572a822', null, null, null, to_date('18-05-2018 05:18:18', 'dd-mm-yyyy hh24:mi:ss'), '0', '40282d816370a418016372540493003b', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881a25fd20311015fd20a6fdb0004', null, null, '25ddf321-c039-40d3-9b12-ab781572a822', null, null, null, to_date('18-05-2018 05:18:18', 'dd-mm-yyyy hh24:mi:ss'), '0', '40282d816370a4180163725404a6003c', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd397bdf001f', null, null, '25ddf321-c039-40d3-9b12-ab781572a822', null, null, null, to_date('18-05-2018 05:18:18', 'dd-mm-yyyy hh24:mi:ss'), '0', '40282d816370a4180163725404b6003d', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd3a99470020', null, null, '25ddf321-c039-40d3-9b12-ab781572a822', null, null, null, to_date('18-05-2018 05:18:18', 'dd-mm-yyyy hh24:mi:ss'), '0', '40282d816370a4180163725404c5003e', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd464dc00027', null, null, '25ddf321-c039-40d3-9b12-ab781572a822', null, null, null, to_date('18-05-2018 05:18:18', 'dd-mm-yyyy hh24:mi:ss'), '0', '40282d816370a4180163725404d5003f', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fc2b709015fc3716f6c001a', null, null, '25ddf321-c039-40d3-9b12-ab781572a822', null, null, null, to_date('18-05-2018 05:18:18', 'dd-mm-yyyy hh24:mi:ss'), '0', '40282d816370a4180163725404e40040', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd3e1f830022', null, null, '25ddf321-c039-40d3-9b12-ab781572a822', null, null, null, to_date('18-05-2018 05:18:18', 'dd-mm-yyyy hh24:mi:ss'), '0', '40282d816370a4180163725404f60041', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('4028198163633ca3016363a289e8000a', null, null, '25ddf321-c039-40d3-9b12-ab781572a822', null, null, null, to_date('18-05-2018 05:18:18', 'dd-mm-yyyy hh24:mi:ss'), '0', '40282d816370a4180163725405080042', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fc2b709015fc371bd68001b', null, null, '25ddf321-c039-40d3-9b12-ab781572a822', null, null, null, to_date('18-05-2018 05:18:18', 'dd-mm-yyyy hh24:mi:ss'), '0', '40282d816370a41801637254051b0043', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd474e910028', null, null, '25ddf321-c039-40d3-9b12-ab781572a822', null, null, null, to_date('18-05-2018 05:18:18', 'dd-mm-yyyy hh24:mi:ss'), '0', '40282d816370a41801637254052c0044', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd47f76c0029', null, null, '25ddf321-c039-40d3-9b12-ab781572a822', null, null, null, to_date('18-05-2018 05:18:18', 'dd-mm-yyyy hh24:mi:ss'), '0', '40282d816370a4180163725405420045', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd490c71002a', null, null, '25ddf321-c039-40d3-9b12-ab781572a822', null, null, null, to_date('18-05-2018 05:18:18', 'dd-mm-yyyy hh24:mi:ss'), '0', '40282d816370a4180163725405580046', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd4bc895002c', null, null, '25ddf321-c039-40d3-9b12-ab781572a822', null, null, null, to_date('18-05-2018 05:18:18', 'dd-mm-yyyy hh24:mi:ss'), '0', '40282d816370a4180163725405710047', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('4028810260d4809b0160d4be9e160000', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921ebf0007', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('4028198163633ca301636394362d0002', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921ec90008', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fc2b709015fc2ff1ca40006', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921ed20009', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fbd2daf015fbea713d30004', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921ed7000a', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('4028198163633ca30163639d19260003', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921edc000b', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('4028198163633ca30163639e467e0004', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921ee1000c', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('4028da63636b78bf01636c8cbebf0003', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921ee6000d', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('4028da63636b78bf01636c901c2a0004', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921eeb000e', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('4028da63636b78bf01636c91046e0005', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921eef000f', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('4028da63636b78bf01636c917ec50006', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921ef30010', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('4028198163633ca30163639f227b0005', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921ef80011', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('4028198163633ca30163639f9d180006', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921efc0012', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('4028198163633ca30163639fee760007', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921eff0013', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('4028198163633ca3016363a047860008', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f020014', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('4028198163633ca3016363a0a1bf0009', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f050015', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fbd2daf015fbea277a60000', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f080016', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fbd2daf015fbea419fc0001', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f0b0017', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd4d3dc7002d', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f0e0018', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd4f16db002e', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f110019', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd6005a026016005d45011005c', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f15001a', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd6005a026016005db7589005d', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f18001b', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd4ff988002f', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f1b001c', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd609fe01b0160a008c75c0001', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f1e001d', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fbd2daf015fbea682710003', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f21001e', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881a25fd20311015fd20a6fdb0004', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f24001f', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd397bdf001f', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f270020', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd3a99470020', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f2a0021', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd3bba8f0021', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f2d0022', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd464dc00027', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f300023', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fc2b709015fc3716f6c001a', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f330024', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd3e1f830022', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f360025', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd42144d0023', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f390026', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd42cd710024', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f3c0027', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd43cbdc0025', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f3f0028', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd44cb640026', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f420029', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('4028198163633ca3016363a289e8000a', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f45002a', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fc2b709015fc371bd68001b', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f48002b', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd474e910028', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f4b002c', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd47f76c0029', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f4e002d', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd490c71002a', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f51002e', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd4aa169002b', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f54002f', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fdd05af015fdd4bc895002c', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f570030', 1);
insert into SYS_FUNC_ROLE_R (func_id, func_code, func_name, role_id, role_code, role_name, authuser, authtime, deleted, id, version)
values ('402881cd5fc2b709015fc2d6b7ea0000', null, null, '2fb87947-cafd-4805-b4d3-cffd46ea48e5', null, null, null, to_date('17-05-2018 13:28:25', 'dd-mm-yyyy hh24:mi:ss'), '0', '4028da63636b78bf01636c921f5a0031', 1);
commit;
prompt 66 records loaded
prompt Loading SYS_RES_CONTENT...
insert into SYS_RES_CONTENT (id, code, name, sjlx, mltype, pid, ssml, sort, createuser, createtime, bz, version, deleted, hasinfo, icon_p, url)
values ('2', null, 'µØÍ¼·þÎñ', '2', '1', '0', null, null, null, null, null, null, null, null, '/home/image/recourse/dtfw.png', 'view/dataMart/shadow.jsp');
insert into SYS_RES_CONTENT (id, code, name, sjlx, mltype, pid, ssml, sort, createuser, createtime, bz, version, deleted, hasinfo, icon_p, url)
values ('4028198163684b7a0163685105b70004', null, '·þÎñ1', '2', '0', '40283f816366ec35016368280e530006', 'ArcGISÇÐÆ¬·þÎñ', 1, null, to_date('16-05-2018 06:38:50', 'dd-mm-yyyy hh24:mi:ss'), null, 1, '0', '0', null, null);
insert into SYS_RES_CONTENT (id, code, name, sjlx, mltype, pid, ssml, sort, createuser, createtime, bz, version, deleted, hasinfo, icon_p, url)
values ('4028198163684b7a0163685136120005', null, '·þÎñ2', '2', '0', '40283f816366ec35016368280e530006', 'ArcGISÇÐÆ¬·þÎñ', 2, null, to_date('16-05-2018 06:39:02', 'dd-mm-yyyy hh24:mi:ss'), null, 1, '0', '0', null, null);
insert into SYS_RES_CONTENT (id, code, name, sjlx, mltype, pid, ssml, sort, createuser, createtime, bz, version, deleted, hasinfo, icon_p, url)
values ('40283f816366ec35016368280e530006', null, 'ArcGISÇÐÆ¬·þÎñ', '2', '1', '2', 'µØÍ¼·þÎñ', 1, null, to_date('16-05-2018 05:54:05', 'dd-mm-yyyy hh24:mi:ss'), null, 1, '0', '0', null, null);
insert into SYS_RES_CONTENT (id, code, name, sjlx, mltype, pid, ssml, sort, createuser, createtime, bz, version, deleted, hasinfo, icon_p, url)
values ('402881376486c5e50164874f63be0001', null, '²âÊÔ', '2', '1', '2', 'µØÍ¼·þÎñ', 2, null, to_date('11-07-2018 11:08:04', 'dd-mm-yyyy hh24:mi:ss'), null, 1, '0', '0', null, null);
insert into SYS_RES_CONTENT (id, code, name, sjlx, mltype, pid, ssml, sort, createuser, createtime, bz, version, deleted, hasinfo, icon_p, url)
values ('402881576467fb48016468385f740000', null, 'abc', '2', '0', '40283f816366ec35016368280e530006', 'ArcGISÇÐÆ¬·þÎñ', 1, null, to_date('05-07-2018 10:14:42', 'dd-mm-yyyy hh24:mi:ss'), null, 1, '0', '0', null, null);
insert into SYS_RES_CONTENT (id, code, name, sjlx, mltype, pid, ssml, sort, createuser, createtime, bz, version, deleted, hasinfo, icon_p, url)
values ('4028819064edf9de0164eedf7d080000', null, '·þÎñ3', '2', '0', '40283f816366ec35016368280e530006', 'ArcGISÇÐÆ¬·þÎñ', 3, null, to_date('31-07-2018 13:46:21', 'dd-mm-yyyy hh24:mi:ss'), null, 1, '0', '0', null, null);
insert into SYS_RES_CONTENT (id, code, name, sjlx, mltype, pid, ssml, sort, createuser, createtime, bz, version, deleted, hasinfo, icon_p, url)
values ('4028da6363764cca016376643bd90001', null, 'q', '2', '0', '40283f816366ec35016368280e530006', 'ArcGISÇÐÆ¬·þÎñ', 3, null, to_date('19-05-2018 11:14:30', 'dd-mm-yyyy hh24:mi:ss'), null, 1, '0', '0', null, null);
commit;
prompt 8 records loaded
prompt Loading SYS_RES_INFO...
insert into SYS_RES_INFO (id, nodeid, name, mltype, datype, url, dadesc, famat, dasize, ssmlmc, ssmlid, slt, keyword, abstract, scope, xxfl, ztfl, ckzbx, gxzq, zcr, metaname, alianame, metadesc, dwmc, dwdz, lxrmc, email, website, lxdh, fbrq, minx, miny, maxx, maxy, wkid, wkt, requestmode, sccs, llcs, sqcs, version, deleted, createtime, pidname, type, prefix, address, zybm, cross_type, csjl, appkey, luurl, metatype, fz)
values ('4028198163684b7a0163685105b70004', '4028198163684b7a0163685105b70004', '·þÎñ1', null, '0', 'http://192.168.1.62:6080/arcgis/rest/services/20170403/MapServer', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Íõº¯', null, null, null, null, null, null, null, null, null, to_date('15-05-2018 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, 'POST', null, null, null, null, null, null, null, '2', null, null, null, null, null, null, null, null, 'ArcGIS');
insert into SYS_RES_INFO (id, nodeid, name, mltype, datype, url, dadesc, famat, dasize, ssmlmc, ssmlid, slt, keyword, abstract, scope, xxfl, ztfl, ckzbx, gxzq, zcr, metaname, alianame, metadesc, dwmc, dwdz, lxrmc, email, website, lxdh, fbrq, minx, miny, maxx, maxy, wkid, wkt, requestmode, sccs, llcs, sqcs, version, deleted, createtime, pidname, type, prefix, address, zybm, cross_type, csjl, appkey, luurl, metatype, fz)
values ('4028198163684b7a0163685136120005', '4028198163684b7a0163685136120005', '·þÎñ2', null, '0', 'http://192.168.1.62:6080/arcgis/rest/services/20170514/MapServer', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Íõº¯', null, null, null, null, null, null, null, null, null, to_date('15-05-2018 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, 'POST', null, null, null, null, null, null, null, '2', null, null, null, null, null, null, null, null, 'ArcGIS');
insert into SYS_RES_INFO (id, nodeid, name, mltype, datype, url, dadesc, famat, dasize, ssmlmc, ssmlid, slt, keyword, abstract, scope, xxfl, ztfl, ckzbx, gxzq, zcr, metaname, alianame, metadesc, dwmc, dwdz, lxrmc, email, website, lxdh, fbrq, minx, miny, maxx, maxy, wkid, wkt, requestmode, sccs, llcs, sqcs, version, deleted, createtime, pidname, type, prefix, address, zybm, cross_type, csjl, appkey, luurl, metatype, fz)
values ('402881576467fb48016468385f740000', '402881576467fb48016468385f740000', 'abc', null, '1', '/', null, null, null, null, null, null, null, null, null, null, null, null, null, 'Íõº¯', null, null, null, null, null, null, null, null, null, to_date('05-07-2018 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, 'POST', null, null, null, null, null, null, null, '2', null, null, null, null, null, null, null, null, 'ArcGIS');
insert into SYS_RES_INFO (id, nodeid, name, mltype, datype, url, dadesc, famat, dasize, ssmlmc, ssmlid, slt, keyword, abstract, scope, xxfl, ztfl, ckzbx, gxzq, zcr, metaname, alianame, metadesc, dwmc, dwdz, lxrmc, email, website, lxdh, fbrq, minx, miny, maxx, maxy, wkid, wkt, requestmode, sccs, llcs, sqcs, version, deleted, createtime, pidname, type, prefix, address, zybm, cross_type, csjl, appkey, luurl, metatype, fz)
values ('4028819064edf9de0164eedf7d080000', '4028819064edf9de0164eedf7d080000', '·þÎñ3', null, '1', '/', null, null, null, null, null, null, null, null, null, null, null, null, null, 'ÍõË¼', null, null, null, null, null, null, null, null, null, to_date('31-07-2018 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, 'POST', null, null, null, 1, 0, null, null, '2', null, null, null, null, null, null, null, null, 'ArcGIS');
insert into SYS_RES_INFO (id, nodeid, name, mltype, datype, url, dadesc, famat, dasize, ssmlmc, ssmlid, slt, keyword, abstract, scope, xxfl, ztfl, ckzbx, gxzq, zcr, metaname, alianame, metadesc, dwmc, dwdz, lxrmc, email, website, lxdh, fbrq, minx, miny, maxx, maxy, wkid, wkt, requestmode, sccs, llcs, sqcs, version, deleted, createtime, pidname, type, prefix, address, zybm, cross_type, csjl, appkey, luurl, metatype, fz)
values ('4028da6363764cca016376643bd90001', '4028da6363764cca016376643bd90001', 'q', null, '0', '/', null, null, null, null, null, '/server/2018-05-19/a2582452-56f2-43b2-b466-aaef199feb0e_ÆøÏóÕ¾.png', null, null, null, null, null, null, null, 'ÍõË¼', null, null, null, null, null, null, null, null, null, to_date('19-05-2018 08:00:00', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, null, null, 'POST', null, null, null, 1, 0, null, null, '2', null, null, null, null, null, null, null, null, 'ArcGIS');
commit;
prompt 5 records loaded
prompt Loading SYS_ROLE...
insert into SYS_ROLE (role_id, role_code, role_name, role_desc, createuser, createtime, deleted, version, site_id)
values ('25ddf321-c039-40d3-9b12-ab781572a822', 'TEST_ROLE', '²é¿´¹¦ÄÜ½ÇÉ«', null, null, null, 0, 2, null);
insert into SYS_ROLE (role_id, role_code, role_name, role_desc, createuser, createtime, deleted, version, site_id)
values ('2fb87947-cafd-4805-b4d3-cffd46ea48e5', 'SUPER_MANAGER', '³¬¼¶¹ÜÀíÔ±', '¸Ã½ÇÉ«ÓµÓÐÈ«²¿È¨ÏÞ', null, null, 0, 3, null);
insert into SYS_ROLE (role_id, role_code, role_name, role_desc, createuser, createtime, deleted, version, site_id)
values ('615c89f44a774873b48e7f004029ca0d', 'GENERAL_MANAGER', 'Ò»°ã¹ÜÀíÔ±', 'ÓµÓÐÖÖÖ²¹ÜÀí¡¢»ù´¡¹ÜÀí', null, null, 0, 4, null);
commit;
prompt 3 records loaded
prompt Loading SYS_ROLE_CONTENT...
insert into SYS_ROLE_CONTENT (id, role_id, con_id)
values ('4028819064edf9de0164eee012a00001', '2fb87947-cafd-4805-b4d3-cffd46ea48e5', '40283f816366ec35016368280e530006');
insert into SYS_ROLE_CONTENT (id, role_id, con_id)
values ('4028819064edf9de0164eee012b00002', '2fb87947-cafd-4805-b4d3-cffd46ea48e5', '4028819064edf9de0164eedf7d080000');
insert into SYS_ROLE_CONTENT (id, role_id, con_id)
values ('4028819064edf9de0164eee012c10003', '2fb87947-cafd-4805-b4d3-cffd46ea48e5', '4028198163684b7a0163685136120005');
insert into SYS_ROLE_CONTENT (id, role_id, con_id)
values ('4028819064edf9de0164eee012d20004', '2fb87947-cafd-4805-b4d3-cffd46ea48e5', '4028198163684b7a0163685105b70004');
commit;
prompt 4 records loaded
prompt Loading SYS_USER...
insert into SYS_USER (user_id, user_name, user_type, password, status, createuser, createtime, gender, cardtype, cardno, party, department, oaddress, position, degree, empstatus, otel, mobileno, qq, email, weixin, haddress, remark, version, deleted, photo, nickname, xzdwcode)
values ('36fafa1a-21db-4aee-836b-39dbbb0bc4ee', 'lsf', null, 'e10adc3949ba59abbe56e057f20f883e', '1', null, null, null, null, null, null, 'ÖÐÅ©ÐÅ´ï', null, null, null, null, null, '111111111111', null, null, null, null, null, null, 0, null, 'ÁèÊ÷·å', null);
insert into SYS_USER (user_id, user_name, user_type, password, status, createuser, createtime, gender, cardtype, cardno, party, department, oaddress, position, degree, empstatus, otel, mobileno, qq, email, weixin, haddress, remark, version, deleted, photo, nickname, xzdwcode)
values ('64b33c6d-dfa3-40dd-bf53-9ef6c0e370a5', 'wh', null, 'e10adc3949ba59abbe56e057f20f883e', '1', null, to_date('15-05-2018 09:10:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 'ÖÐÅ©ÐÅ´ï', null, null, null, null, null, '111111', null, null, null, null, null, 1, 0, null, 'Íõº¯', null);
insert into SYS_USER (user_id, user_name, user_type, password, status, createuser, createtime, gender, cardtype, cardno, party, department, oaddress, position, degree, empstatus, otel, mobileno, qq, email, weixin, haddress, remark, version, deleted, photo, nickname, xzdwcode)
values ('d488ae4b-1954-4963-b3df-03fca79fd285', 'zy', null, 'e10adc3949ba59abbe56e057f20f883e', '1', null, null, null, null, null, null, 'ÖÐÅ©ÐÅ´ï', null, null, null, null, null, '111111111', null, null, null, null, null, null, 0, null, 'ÕÅÑó', null);
insert into SYS_USER (user_id, user_name, user_type, password, status, createuser, createtime, gender, cardtype, cardno, party, department, oaddress, position, degree, empstatus, otel, mobileno, qq, email, weixin, haddress, remark, version, deleted, photo, nickname, xzdwcode)
values ('e9599d44-3345-4761-b964-c01afd8031bb', 'guo', null, 'bc58e08e0fd67ce591a6be23f84a957c', '1', null, to_date('10-07-2018 17:06:10', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 'ÖÐÅ©ÐÅ´ï', null, null, null, null, null, '15911111111', null, null, null, null, null, 1, 0, null, 'ÀîÅà', null);
insert into SYS_USER (user_id, user_name, user_type, password, status, createuser, createtime, gender, cardtype, cardno, party, department, oaddress, position, degree, empstatus, otel, mobileno, qq, email, weixin, haddress, remark, version, deleted, photo, nickname, xzdwcode)
values ('ed89972a-670f-4701-b99e-4d784086a2ad', 'fan', null, 'fc1709d0a95a6be30bc5926fdb7f22f4', '1', null, to_date('17-05-2018 13:14:09', 'dd-mm-yyyy hh24:mi:ss'), null, null, null, null, 'Å©¿ÆÔºÒ£¸ÐËù', null, null, null, null, null, '15680001190', null, null, null, null, null, 1, 0, null, 'ÍõË¼', null);
commit;
prompt 5 records loaded
prompt Loading SYS_USER_ROLE_R...
insert into SYS_USER_ROLE_R (id, role_id, user_id, version, createtime, deleted)
values ('402819816363a69a016363b5c05c0031', '2fb87947-cafd-4805-b4d3-cffd46ea48e5', '64b33c6d-dfa3-40dd-bf53-9ef6c0e370a5', 1, null, '0');
insert into SYS_USER_ROLE_R (id, role_id, user_id, version, createtime, deleted)
values ('40281981636bd59001636ca3ba020001', '2fb87947-cafd-4805-b4d3-cffd46ea48e5', 'd488ae4b-1954-4963-b3df-03fca79fd285', 1, null, '0');
insert into SYS_USER_ROLE_R (id, role_id, user_id, version, createtime, deleted)
values ('40282d816361eb0e01636245f4030001', '615c89f44a774873b48e7f004029ca0d', '62219617ee63400b9b064ddbadafa8c1', 1, null, '0');
insert into SYS_USER_ROLE_R (id, role_id, user_id, version, createtime, deleted)
values ('40282d816370a4180163724ce8f70013', '25ddf321-c039-40d3-9b12-ab781572a822', '36fafa1a-21db-4aee-836b-39dbbb0bc4ee', 1, null, '0');
insert into SYS_USER_ROLE_R (id, role_id, user_id, version, createtime, deleted)
values ('402881376481b32c0164837ce6580000', '25ddf321-c039-40d3-9b12-ab781572a822', 'e9599d44-3345-4761-b964-c01afd8031bb', 1, null, '0');
insert into SYS_USER_ROLE_R (id, role_id, user_id, version, createtime, deleted)
values ('402881376481b32c0164837ce6600001', '2fb87947-cafd-4805-b4d3-cffd46ea48e5', 'e9599d44-3345-4761-b964-c01afd8031bb', 1, null, '0');
insert into SYS_USER_ROLE_R (id, role_id, user_id, version, createtime, deleted)
values ('402881376481b32c0164837ce6680002', '615c89f44a774873b48e7f004029ca0d', 'e9599d44-3345-4761-b964-c01afd8031bb', 1, null, '0');
insert into SYS_USER_ROLE_R (id, role_id, user_id, version, createtime, deleted)
values ('4028da63636b78bf01636c86be210002', '2fb87947-cafd-4805-b4d3-cffd46ea48e5', 'ed89972a-670f-4701-b99e-4d784086a2ad', 1, null, '0');
commit;
prompt 8 records loaded
prompt Enabling triggers for SYS_FUNC...
alter table SYS_FUNC enable all triggers;
prompt Enabling triggers for SYS_FUNC_ROLE_R...
alter table SYS_FUNC_ROLE_R enable all triggers;
prompt Enabling triggers for SYS_RES_CONTENT...
alter table SYS_RES_CONTENT enable all triggers;
prompt Enabling triggers for SYS_RES_INFO...
alter table SYS_RES_INFO enable all triggers;
prompt Enabling triggers for SYS_ROLE...
alter table SYS_ROLE enable all triggers;
prompt Enabling triggers for SYS_ROLE_CONTENT...
alter table SYS_ROLE_CONTENT enable all triggers;
prompt Enabling triggers for SYS_USER...
alter table SYS_USER enable all triggers;
prompt Enabling triggers for SYS_USER_ROLE_R...
alter table SYS_USER_ROLE_R enable all triggers;

set feedback on
set define on
prompt Done
