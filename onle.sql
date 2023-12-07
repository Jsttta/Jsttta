CREATE TABLE  (
    id INT PRIMARY KEY NOT NULL,
    first_name TEXT,
    second_name TEXT,
    birth_date DATE,
    number VARCHAR(12),
    email VARCHAR(64)
);

INSERT INTO client VALUES (1, 'Din', "asdfd" ,	"2005-07-28" ,	"7927374621"	, 'Din-8622@yopmail.com');
INSERT INTO client VALUES (2, 'luy', "agrsav"	, "1999-11-16" ,	"79463846483" ,	"luy-ogugahe2@yahoo.com");
INSERT INTO client VALUES (3, 'Vadim',"asdgd" ,	"1988-06-24" ,	"7947574423" ,	"Vadim-abonu29@mail.com");
INSERT INTO client VALUES (4, 'Victoria', "vdfgd" ,	"1998-01-19" ,	"7946586424" ,	"Victoria-97@yahoo.com");
INSERT INTO client VALUES (5, 'Pim',"sddal" ,	"1978-10-20" ,	"79563956493" ,	"pim-enuceno80@outlook.com");

CREATE TABLE category (
    id INT PRIMARY KEY NOT NULL,
    category_title VARCHAR(64)
);

INSERT INTO category VALUES (1, 'KITCHEN APPLIANCES');
INSERT INTO category VALUES (2, 'MELECTRONICS');
INSERT INTO category VALUES (3, 'HOBII');



CREATE TABLE menu (
    id INT PRIMARY KEY NOT NULL,
    dish_title TEXT,
    price FLOAT,
    description TEXT,
    category_id INT,
    CONSTRAINT fk_category_category_id FOREIGN KEY (category_id) REFERENCES category (id)
	);
	
INSERT INTO menu VALUES (1, ' POCO M5', 12000, 'ядер - 8x(2.2 ГГц), 4 ГБ, 2 SIM, IPS, 2408x1080, камера 50+2+2 Мп, NFC, 4G, GPS, FM, 5000 мА*ч', 1);
INSERT INTO menu VALUES (2, 'Apple iPhone 15 Pro', 17000, 'ядер - 6x(3.78 ГГц), 8 ГБ, 2 SIM, OLED, 2556x1179, камера 48+12+12 Мп, NFC, 5G, GPS, 3274 мА*ч', 1);
INSERT INTO menu VALUES (3, 'HUAWEI MatePad', 49000, '2200х1440, IPS, 8x2.4 ГГц, 8 ГБ, 7700 мА*ч, HarmonyOS 3.1', 1);
INSERT INTO menu VALUES (4, 'Lenovo Xiaoxin Pad', 41000, '2000x1200, IPS, 8x2.4 ГГц, 4 ГБ, 7500 мА*ч, Android 12.x', 1);
-- Fix incorrect values in the following INSERT statements
INSERT INTO menu VALUES (5, 'ATLANT ХМ-4010-022', 25000, '264 л, внешнее покрытие-пластик, размораживание - ручное, 60 см х 161 см х 62.5 см ', 2);
INSERT INTO menu VALUES (6, 'DEXP EL-90', 11000, '23 л, 900 Вт, переключатели - сенсор, дисплей, 48.2 см x 27.6 см x 36 см', 2);
INSERT INTO menu VALUES (7, 'MSI Modern 14', 80000, 'Full HD (1920x1080), IPS, Intel Core i3-1215U, ядра: 2 + 4 х 1.2 ГГц, RAM 8 ГБ, SSD 256 ГБ, Intel UHD Graphics ', 1);
INSERT INTO menu VALUES (8, 'HyperX QuadCast S', 17000, 'проводной, настольный, -36 дБ, от 20 Гц до 20000 Гц, кабель - 300 см, jack 3.5 мм, USB', 3);
INSERT INTO menu VALUES (9, 'Sony Alpha 7 III', 40000, '25.3 Мп, 35.6 x 23.8 мм, CMOS, 100-51200 ISO, 10 кадр./сек, экран - наклонный, сенсорный', 3);
INSERT INTO menu VALUES (10, 'Starwind SKG2217', 15000, '1.8 л, 2200 Вт, скрытый нагревательный элемент, фильтр, материал корпуса - стекло\пластик', 2);

CREATE VIEW ExpensiveDishes AS
SELECT
  id,
  dish_title,
  price,
  description,
  category_id
FROM
  menu
WHERE
  price > 10.0;

CREATE INDEX btree_price_index ON menu (price);


CREATE TABLE basket (
    id INT PRIMARY KEY NOT NULL,
    menu_id INT,
    userss_id INT,
    amount INT,
    CONSTRAINT fk_menu_menu_id FOREIGN KEY (menu_id) REFERENCES menu (id),
    CONSTRAINT fk_userss_userss_id FOREIGN KEY (userss_id) REFERENCES userss (id)
);

INSERT INTO basket VALUES (1, 1, 1, 1);
INSERT INTO basket VALUES (2, 2, 2, 2);
INSERT INTO basket VALUES (3, 3, 3, 3);
INSERT INTO basket VALUES (4, 4, 4, 4);
INSERT INTO basket VALUES (5, 1, 5, 5);




CREATE TABLE public.orders (
    id bigint NOT NULL,
    status integer DEFAULT 0 NOT NULL,
    customer_id bigint NOT NULL,
    paid boolean DEFAULT false NOT NULL,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


CREATE TABLE public.product_options (
    id bigint NOT NULL,
    option_id bigint NOT NULL,
    product_id bigint NOT NULL,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
