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
 constraint fk_sting_sting_id foreign key (sting_id) references sting(id)
 );



create table Product
(id bigint primary key ,
 Goods_id bigint not null ,
 price varchar not null ,
 Description numeric not null default 0,
 Reviews numeric not null default 0,
Characteristics numeric not null default 0,
 constraint fk_Goods_Goods_id foreign key (Goods_id) references Goods(id)
 );



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
