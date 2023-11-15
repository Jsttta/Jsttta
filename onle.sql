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



create table Product
(id bigint primary key ,
 shopping_cart_id bigint not null ,
 price varchar not null ,
 Description numeric not null default 0,
 Reviews numeric not null default 0,
Characteristics numeric not null default 0,
 constraint fk_shopping_cart_shopping_cart_id foreign key (shopping_cart_id) references shopping_cart(id)
 );



create table Tabl
(id bigint primary key ,
 shopping_cart_id bigint not null ,
 price varchar not null ,
 Description numeric not null default 0,
 constraint fk_shopping_cart_shopping_cart_id foreign key (shopping_cart_id) references shopping_cart(id)
 );


create table Tabl
(id bigint primary key ,
 Goods_id bigint not null ,
 price varchar not null ,
 Description numeric not null default 0,
 constraint fk_shopping_Cart_shopping_Cart_id foreign key (shopping_Cart_id) references shopping_Cart(id)
 );



  create table Menu 
(id bigint primary key ,
 name varchar not null ,
 Appliances numeric not null default 0,
 Smarthoes numeric not null default 0,
 Entertainment numeric not null default 0);
