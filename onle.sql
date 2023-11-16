create table Users
( id bigint primary key ,
  name varchar not null,
  Password integer not null default 10,
  state varchar
  );
CREATE TABLE userss
(   id bigint NOT NULL,
    name character varying COLLATE pg_catalog."default" NOT NULL,
    password integer NOT NULL DEFAULT 10,
    state character varying COLLATE pg_catalog."default",
    CONSTRAINT userss_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.userss
    OWNER to postgres;

  create table Customer
(id bigint primary key ,
 name varchar not null ,
 E_Mail numeric not null default 0);

create table Account
(id bigint primary key ,
 name varchar not null ,
 sting_id bigint not null ,
 billing_address numeric not null default 0,
  orders numeric NOT NULL DEFAULT 0,
  username numeric NOT NULL DEFAULT 0,
  city numeric NOT NULL DEFAULT 0,
 constraint fk_sting_sting_id foreign key (sting_id) references sting(id)
 );

create table Orderstatys
(id bigint primary key ,
 name varchar not null ,
 goods_id bigint not null ,
 billing_address numeric not null default 0,
  shipped numeric not null default 0,
  delverd numeric not null default 0,
 get numeric not null default 0,
  price numeric not null default 0,
 constraint fk_goods_goods_id foreign key (goods_id) references goods(id)
 );


CREATE TABLE IF NOT EXISTS public.product
(
    id bigint NOT NULL,
    goods_id bigint NOT NULL,
    price character varying COLLATE pg_catalog."default" NOT NULL,
    description numeric NOT NULL DEFAULT 0,
    reviews numeric NOT NULL DEFAULT 0,
    characteristics numeric NOT NULL DEFAULT 0,
    CONSTRAINT product_pkey PRIMARY KEY (id),
    CONSTRAINT fk_goods_goods_id FOREIGN KEY (goods_id)
        REFERENCES public.goods (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.product
    OWNER to postgres;



CREATE TABLE IF NOT EXISTS public.goods
(
    id bigint NOT NULL,
    price character varying COLLATE pg_catalog."default" NOT NULL,
    data numeric NOT NULL DEFAULT 0,
    CONSTRAINT goods_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.goods
    OWNER to postgres;

create table Tabl
(id bigint primary key ,
 Goods_id bigint not null ,
 price varchar not null ,
 Description numeric not null default 0,
 constraint fk_Goods_Goods_id foreign key (Goods_id) references Goods(id)
 );



  create table Menu 
(id bigint primary key ,
 name varchar not null ,
 Appliances numeric not null default 0,

    create table orderss
(id bigint primary key ,
 name varchar not null ,
 account_id bigint not null ,
 date numeric not null default 0,
 order_status  bigint not null default 0,
 constraint fk_account_account_id foreign key (account_id) references account(id)
 );

 Smarthoes numeric not null default 0,
 Entertainment numeric not null default 0);


create table account ( id bigint primary key, login varchar(10), purchase histori text, 
					  orders text, city text );

insert into Users values (1, 'artemm','telephone','TV','Australia'); 
insert into Users values (2, 'artemds','kettle','watch'); 
insert into Users values (3, 'art5476','smart watch','music column'); 
insert into Users values (4, 'haideng','case for phone'); 
insert into Users values (5, 'control','ryhftdhjdhj'); 
insert into Users values (6, 'povelitel','dhdxfhtuwarf'); 
insert into Users values (7, 'anton','dshdfghftj'); 
insert into Users values (8, 'arte5577','dhmflthjnifo'); 
insert into Users values (9, 'agent228','djnhglkdftjh'); 
insert into Users values (10, 'skill555','dlhjygdftoiuyhmd');

create table Users
( id bigint primary key, login varchar(16), password text );
insert into Users values (1, 'asdfd','7927374621'); 
insert into Users values (2, 'agrsav','7936472387'); 
insert into Users values (3, 'asdgd','79463846483'); 
insert into Users values (4, 'vdfgd','7937462634'); 
insert into Users values (5, 'cadgrerte','7947574423'); 
insert into Users values (6, 'vjonj','7946586424'); 
insert into Users values (7, 'anggas','7947372753'); 
insert into Users values (8, 'vfgs','79462575321'); 
insert into Users values (9, 'atan43','79563956493'); 
insert into Users values (10, 'sddal','79573817374');

create table Account ( id bigint primary key, name varchar(16), city text, orders_id int, purchase history text );

insert into Users values (1, 'asdfd','Bucharest',); 
insert into Users values (2, 'agrsav','Cadiz'); 
insert into Users values (3, 'asdgd','Guatemala'); 
insert into Users values (4, 'vdfgd','Geneva'); 
insert into Users values (5, 'cadgrerte','Guatemala'); 
insert into Users values (6, 'vjonj','Bucharest'); 
insert into Users values (7, 'anggas','Geneva'); 
insert into Users values (8, 'vfgs','Bucharest'); 
insert into Users values (9, 'atan43','Geneva'); 
insert into Users values (10, 'sddal','Guatemala');



