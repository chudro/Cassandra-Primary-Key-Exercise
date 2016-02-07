create keyspace primary_keys_ks if not exists with replication = { 'class' : 'SimpleStrategy', 'replication_factor' : 3 };

use primary_keys_ks;

create table sentiment1 (
body text,
dt text,
ch text,
cu text,
sent text,
primary key (dt)
);

create table sentiment2 (
body text,
dt text,
ch text,
cu text,
sent text,
primary key ((ch,dt))
);

create table sentiment3 (
body text,
dt text,
ch text,
cu text,
sent text,
primary key (ch,dt)
);

create table sentiment4 (
body text,
dt text,
ch text,
cu text,
sent text,
primary key (ch,cu,dt)
);

create table sentiment5 (
body text,
dt text,
ch text,
cu text,
sent text,
primary key ((ch,dt),cu)
);

begin batch
insert into primary_keys_ks.sentiment1 (body,dt,ch,cu,sent) values ('I’m feeling sick.','20160102','twitter','1','negative');
insert into primary_keys_ks.sentiment2 (body,dt,ch,cu,sent) values ('I’m feeling sick.','20160102','twitter','1','negative');
insert into primary_keys_ks.sentiment3 (body,dt,ch,cu,sent) values ('I’m feeling sick.','20160102','twitter','1','negative');
insert into primary_keys_ks.sentiment4 (body,dt,ch,cu,sent) values ('I’m feeling sick.','20160102','twitter','1','negative');
insert into primary_keys_ks.sentiment5 (body,dt,ch,cu,sent) values ('I’m feeling sick.','20160102','twitter','1','negative');
apply batch;

begin batch
insert into primary_keys_ks.sentiment1 (body,dt,ch,cu,sent) values ('That was sick!','20160101','facebook','1','positive');
insert into primary_keys_ks.sentiment2 (body,dt,ch,cu,sent) values ('That was sick!','20160101','facebook','1','positive');
insert into primary_keys_ks.sentiment3 (body,dt,ch,cu,sent) values ('That was sick!','20160101','facebook','1','positive');
insert into primary_keys_ks.sentiment4 (body,dt,ch,cu,sent) values ('That was sick!','20160101','facebook','1','positive');
insert into primary_keys_ks.sentiment5 (body,dt,ch,cu,sent) values ('That was sick!','20160101','facebook','1','positive');
apply batch;

begin batch
insert into primary_keys_ks.sentiment1 (body,dt,ch,cu,sent) values ('I feel sick, too.','20160102','facebook','2','negative');
insert into primary_keys_ks.sentiment2 (body,dt,ch,cu,sent) values ('I feel sick, too.','20160102','facebook','2','negative');
insert into primary_keys_ks.sentiment3 (body,dt,ch,cu,sent) values ('I feel sick, too.','20160102','facebook','2','negative');
insert into primary_keys_ks.sentiment4 (body,dt,ch,cu,sent) values ('I feel sick, too.','20160102','facebook','2','negative');
insert into primary_keys_ks.sentiment5 (body,dt,ch,cu,sent) values ('I feel sick, too.','20160102','facebook','2','negative');
apply batch;

begin batch
insert into primary_keys_ks.sentiment1 (body,dt,ch,cu,sent) values ('Dude, you’re sick.','20160103','facebook','1','positive');
insert into primary_keys_ks.sentiment2 (body,dt,ch,cu,sent) values ('Dude, you’re sick.','20160103','facebook','1','positive');
insert into primary_keys_ks.sentiment3 (body,dt,ch,cu,sent) values ('Dude, you’re sick.','20160103','facebook','1','positive');
insert into primary_keys_ks.sentiment4 (body,dt,ch,cu,sent) values ('Dude, you’re sick.','20160103','facebook','1','positive');
insert into primary_keys_ks.sentiment5 (body,dt,ch,cu,sent) values ('Dude, you’re sick.','20160103','facebook','1','positive');
apply batch;

begin batch
insert into primary_keys_ks.sentiment1 (body,dt,ch,cu,sent) values ('How sick was that?','20160103','facebook','3','positive');
insert into primary_keys_ks.sentiment2 (body,dt,ch,cu,sent) values ('How sick was that?','20160103','facebook','3','positive');
insert into primary_keys_ks.sentiment3 (body,dt,ch,cu,sent) values ('How sick was that?','20160103','facebook','3','positive');
insert into primary_keys_ks.sentiment4 (body,dt,ch,cu,sent) values ('How sick was that?','20160103','facebook','3','positive');
insert into primary_keys_ks.sentiment5 (body,dt,ch,cu,sent) values ('How sick was that?','20160103','facebook','3','positive');
apply batch;
