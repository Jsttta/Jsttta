create table Users
( id bigint primary key ,
  name varchar not null,
  Password integer not null default 10,
  state varchar
  );

  create table sting
(id bigint primary key ,
 name varchar not null ,
 E_Mail numeric not null default 0);

create table Account
(id bigint primary key ,
 name varchar not null ,
 sting_id bigint not null ,
 billing_address numeric not null default 0,
 constraint fk_sting_sting_id foreign key (sting_id) references sting(id)
 );
