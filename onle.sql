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
