--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3
-- Dumped by pg_dump version 10.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: alen_marz
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO alen_marz;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: alen_marz
--

CREATE TABLE public.categories (
    id bigint NOT NULL,
    category_id bigint,
    name character varying NOT NULL,
    description text,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.categories OWNER TO alen_marz;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: alen_marz
--

CREATE SEQUENCE public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO alen_marz;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alen_marz
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: alen_marz
--

CREATE TABLE public.customers (
    id bigint NOT NULL,
    name character varying NOT NULL,
    phone character varying NOT NULL,
    email character varying,
    shipping_address text,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.customers OWNER TO alen_marz;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: alen_marz
--

CREATE SEQUENCE public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_id_seq OWNER TO alen_marz;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alen_marz
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: option_values; Type: TABLE; Schema: public; Owner: alen_marz
--

CREATE TABLE public.option_values (
    id bigint NOT NULL,
    option_id bigint NOT NULL,
    name character varying NOT NULL,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.option_values OWNER TO alen_marz;

--
-- Name: option_values_id_seq; Type: SEQUENCE; Schema: public; Owner: alen_marz
--

CREATE SEQUENCE public.option_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.option_values_id_seq OWNER TO alen_marz;

--
-- Name: option_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alen_marz
--

ALTER SEQUENCE public.option_values_id_seq OWNED BY public.option_values.id;


--
-- Name: options; Type: TABLE; Schema: public; Owner: alen_marz
--

CREATE TABLE public.options (
    id bigint NOT NULL,
    name character varying NOT NULL,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.options OWNER TO alen_marz;

--
-- Name: options_id_seq; Type: SEQUENCE; Schema: public; Owner: alen_marz
--

CREATE SEQUENCE public.options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.options_id_seq OWNER TO alen_marz;

--
-- Name: options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alen_marz
--

ALTER SEQUENCE public.options_id_seq OWNED BY public.options.id;


--
-- Name: order_lines; Type: TABLE; Schema: public; Owner: alen_marz
--

CREATE TABLE public.order_lines (
    id bigint NOT NULL,
    order_id bigint NOT NULL,
    variant_id bigint NOT NULL,
    price numeric NOT NULL,
    amount integer DEFAULT 1 NOT NULL,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.order_lines OWNER TO alen_marz;

--
-- Name: order_lines_id_seq; Type: SEQUENCE; Schema: public; Owner: alen_marz
--

CREATE SEQUENCE public.order_lines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_lines_id_seq OWNER TO alen_marz;

--
-- Name: order_lines_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alen_marz
--

ALTER SEQUENCE public.order_lines_id_seq OWNED BY public.order_lines.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: alen_marz
--

CREATE TABLE public.orders (
    id bigint NOT NULL,
    status integer DEFAULT 0 NOT NULL,
    customer_id bigint NOT NULL,
    paid boolean DEFAULT false NOT NULL,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.orders OWNER TO alen_marz;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: alen_marz
--

CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO alen_marz;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alen_marz
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: product_options; Type: TABLE; Schema: public; Owner: alen_marz
--

CREATE TABLE public.product_options (
    id bigint NOT NULL,
    option_id bigint NOT NULL,
    product_id bigint NOT NULL,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.product_options OWNER TO alen_marz;

--
-- Name: product_options_id_seq; Type: SEQUENCE; Schema: public; Owner: alen_marz
--

CREATE SEQUENCE public.product_options_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_options_id_seq OWNER TO alen_marz;

--
-- Name: product_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alen_marz
--

ALTER SEQUENCE public.product_options_id_seq OWNED BY public.product_options.id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: alen_marz
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    category_id bigint,
    name character varying NOT NULL,
    description text,
    hidden boolean DEFAULT false NOT NULL,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.products OWNER TO alen_marz;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: alen_marz
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO alen_marz;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alen_marz
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: alen_marz
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO alen_marz;

--
-- Name: variant_option_values; Type: TABLE; Schema: public; Owner: alen_marz
--

CREATE TABLE public.variant_option_values (
    id bigint NOT NULL,
    variant_id bigint NOT NULL,
    option_value_id bigint NOT NULL,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.variant_option_values OWNER TO alen_marz;

--
-- Name: variant_option_values_id_seq; Type: SEQUENCE; Schema: public; Owner: alen_marz
--

CREATE SEQUENCE public.variant_option_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.variant_option_values_id_seq OWNER TO alen_marz;

--
-- Name: variant_option_values_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alen_marz
--

ALTER SEQUENCE public.variant_option_values_id_seq OWNED BY public.variant_option_values.id;


--
-- Name: variants; Type: TABLE; Schema: public; Owner: alen_marz
--

CREATE TABLE public.variants (
    id bigint NOT NULL,
    product_id bigint NOT NULL,
    sku character varying NOT NULL,
    barcode character varying,
    price numeric NOT NULL,
    amount numeric NOT NULL,
    deleted_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.variants OWNER TO alen_marz;

--
-- Name: variants_id_seq; Type: SEQUENCE; Schema: public; Owner: alen_marz
--

CREATE SEQUENCE public.variants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.variants_id_seq OWNER TO alen_marz;

--
-- Name: variants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alen_marz
--

ALTER SEQUENCE public.variants_id_seq OWNED BY public.variants.id;


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: alen_marz
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: alen_marz
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Name: option_values id; Type: DEFAULT; Schema: public; Owner: alen_marz
--

ALTER TABLE ONLY public.option_values ALTER COLUMN id SET DEFAULT nextval('public.option_values_id_seq'::regclass);


--
-- Name: options id; Type: DEFAULT; Schema: public; Owner: alen_marz
--

ALTER TABLE ONLY public.options ALTER COLUMN id SET DEFAULT nextval('public.options_id_seq'::regclass);


--
-- Name: order_lines id; Type: DEFAULT; Schema: public; Owner: alen_marz
--

ALTER TABLE ONLY public.order_lines ALTER COLUMN id SET DEFAULT nextval('public.order_lines_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: alen_marz
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: product_options id; Type: DEFAULT; Schema: public; Owner: alen_marz
--

ALTER TABLE ONLY public.product_options ALTER COLUMN id SET DEFAULT nextval('public.product_options_id_seq'::regclass);


--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: alen_marz
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: variant_option_values id; Type: DEFAULT; Schema: public; Owner: alen_marz
--

ALTER TABLE ONLY public.variant_option_values ALTER COLUMN id SET DEFAULT nextval('public.variant_option_values_id_seq'::regclass);


--
-- Name: variants id; Type: DEFAULT; Schema: public; Owner: alen_marz
--

ALTER TABLE ONLY public.variants ALTER COLUMN id SET DEFAULT nextval('public.variants_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: alen_marz
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	default_env	2018-05-25 09:29:20.051391	2018-05-25 09:29:20.051391
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: alen_marz
--

COPY public.categories (id, category_id, name, description, deleted_at, created_at, updated_at) FROM stdin;
1	\N	Dogs	\N	\N	2018-05-25 09:29:20.85742	2018-05-25 09:29:20.85742
2	1	American Terrier	\N	\N	2018-05-25 09:29:20.859689	2018-05-25 09:29:20.859689
3	1	Great Dane	\N	\N	2018-05-25 09:29:20.860706	2018-05-25 09:29:20.860706
4	1	Irish Terrier	\N	\N	2018-05-25 09:29:20.861807	2018-05-25 09:29:20.861807
5	1	Airedale	\N	\N	2018-05-25 09:29:20.862717	2018-05-25 09:29:20.862717
6	1	Appenzeller	\N	\N	2018-05-25 09:29:20.864008	2018-05-25 09:29:20.864008
7	1	Flatcoated Retriever	\N	\N	2018-05-25 09:29:20.864964	2018-05-25 09:29:20.864964
8	1	Border Terrier	\N	\N	2018-05-25 09:29:20.869462	2018-05-25 09:29:20.869462
9	1	Giant Schnauzer	\N	\N	2018-05-25 09:29:20.870502	2018-05-25 09:29:20.870502
10	1	Leonberg	\N	\N	2018-05-25 09:29:20.871525	2018-05-25 09:29:20.871525



COPY public.customers (id, name, phone, email, shipping_address, deleted_at, created_at, updated_at) FROM stdin;
1	Esta Bins	(971) 009-1545	bins_esta@rogahn.net	Langworthport\n10888 Mertie Pass\nApt. 998	\N	2018-05-25 09:29:31.937254	2018-05-25 09:29:31.937254
2	Mr. Lea Bruen	142.224.0860	mr_bruen_lea@schamberger.biz	Lake Feltonburgh\n52237 Verda Canyon\nSuite 504	\N	2018-05-25 09:29:31.942738	2018-05-25 09:29:31.942738
3	Lee Leannon	(534) 753-4160	leannon.lee@goldnerhartmann.com	Cummeratahaven\n216 Abigale Harbor\nSuite 512	\N	2018-05-25 09:29:31.987198	2018-05-25 09:29:31.987198
4	Robin Romaguera	(361) 822-6482	romaguera_robin@larson.net	Legrosstad\n6872 Stanton Point\nSuite 309	\N	2018-05-25 09:29:32.019475	2018-05-25 09:29:32.019475
5	Willard Goyette	1-446-845-3644	willard.goyette@huel.biz	North Jameson\n790 Lionel Prairie\nSuite 641	\N	2018-05-25 09:29:32.038806	2018-05-25 09:29:32.038806
6	Ada Larson	1-655-894-9269	larson.ada@kirlin.name	Lake Effie\n79487 Kenneth Walks\nSuite 840	\N	2018-05-25 09:29:32.041752	2018-05-25 09:29:32.041752
7	Gavin Veum	953-111-0394	veum.gavin@murphy.biz	North Alexandrineview\n2002 Juvenal Way\nApt. 975	\N	2018-05-25 09:29:32.06803	2018-05-25 09:29:32.06803
8	Freddie McClure	431.889.3596	freddie.mcclure@altenwerth.name	Franeckistad\n33217 Wuckert Well\nApt. 900	\N	2018-05-25 09:29:32.081955	2018-05-25 09:29:32.081955
9	Mrs. Eladio Hirthe	377-283-3473	eladio.mrs.hirthe@schuppe.org	Lefflerport\n82672 Clovis Route\nApt. 706	\N	2018-05-25 09:29:32.125686	2018-05-25 09:29:32.125686
10	Berniece Rempel	1-388-458-7758	rempel.berniece@conroyskiles.net	Port Fideltown\n244 Rory Shoal\nApt. 670	\N	2018-05-25 09:29:32.14055	2018-05-25 09:29:32.14055





COPY public.option_values (id, option_id, name, deleted_at, created_at, updated_at) FROM stdin;
1	1	senior	\N	2018-05-25 09:29:20.820257	2018-05-25 09:29:20.820257
2	1	young	\N	2018-05-25 09:29:20.826996	2018-05-25 09:29:20.826996
3	1	puppy	\N	2018-05-25 09:29:20.828396	2018-05-25 09:29:20.828396
4	2	female	\N	2018-05-25 09:29:20.830815	2018-05-25 09:29:20.830815
5	2	male	\N	2018-05-25 09:29:20.832386	2018-05-25 09:29:20.832386
6	3	extra large	\N	2018-05-25 09:29:20.835022	2018-05-25 09:29:20.835022
7	3	large	\N	2018-05-25 09:29:20.836079	2018-05-25 09:29:20.836079
8	3	small	\N	2018-05-25 09:29:20.838038	2018-05-25 09:29:20.838038
9	3	medium	\N	2018-05-25 09:29:20.839825	2018-05-25 09:29:20.839825
10	4	Governing Council of the Cat	\N	2018-05-25 09:29:20.842816	2018-05-25 09:29:20.842816






COPY public.order_lines (id, order_id, variant_id, price, amount, deleted_at, created_at, updated_at) FROM stdin;
1	1	1	31.53	1	\N	2018-05-25 09:29:31.975908	2018-05-25 09:29:31.975908
2	1	2	12.86	1	\N	2018-05-25 09:29:31.980841	2018-05-25 09:29:31.980841
3	2	3	31.12	1	\N	2018-05-25 09:29:31.995065	2018-05-25 09:29:31.995065
4	3	4	50.44	1	\N	2018-05-25 09:29:32.004138	2018-05-25 09:29:32.004138
5	3	5	44.92	1	\N	2018-05-25 09:29:32.007464	2018-05-25 09:29:32.007464
6	3	6	38.07	1	\N	2018-05-25 09:29:32.011315	2018-05-25 09:29:32.011315
7	4	7	0.68	1	\N	2018-05-25 09:29:32.0242	2018-05-25 09:29:32.0242
8	4	8	81.67	1	\N	2018-05-25 09:29:32.030082	2018-05-25 09:29:32.030082
9	5	9	42.49	1	\N	2018-05-25 09:29:32.035266	2018-05-25 09:29:32.035266
10	6	10	52.46	1	\N	2018-05-25 09:29:32.046473	2018-05-25 09:29:32.046473




COPY public.orders (id, status, customer_id, paid, deleted_at, created_at, updated_at) FROM stdin;
1	2	2	t	\N	2018-05-25 09:29:31.956541	2018-05-25 09:29:31.956541
2	0	3	t	\N	2018-05-25 09:29:31.989824	2018-05-25 09:29:31.989824
3	1	3	f	\N	2018-05-25 09:29:31.999278	2018-05-25 09:29:31.999278
4	0	4	f	\N	2018-05-25 09:29:32.022225	2018-05-25 09:29:32.022225
5	0	4	t	\N	2018-05-25 09:29:32.033875	2018-05-25 09:29:32.033875
6	1	6	f	\N	2018-05-25 09:29:32.044137	2018-05-25 09:29:32.044137
7	2	6	t	\N	2018-05-25 09:29:32.053488	2018-05-25 09:29:32.053488
8	0	7	f	\N	2018-05-25 09:29:32.071742	2018-05-25 09:29:32.071742
9	0	8	t	\N	2018-05-25 09:29:32.08333	2018-05-25 09:29:32.08333
10	1	8	t	\N	2018-05-25 09:29:32.092405	2018-05-25 09:29:32.092405





COPY public.product_options (id, option_id, product_id, deleted_at, created_at, updated_at) FROM stdin;
1	2	1	\N	2018-05-25 09:29:20.934859	2018-05-25 09:29:20.934859
2	3	1	\N	2018-05-25 09:29:20.94494	2018-05-25 09:29:20.94494
3	1	1	\N	2018-05-25 09:29:20.947028	2018-05-25 09:29:20.947028
4	2	2	\N	2018-05-25 09:29:20.951402	2018-05-25 09:29:20.951402
5	3	2	\N	2018-05-25 09:29:20.953312	2018-05-25 09:29:20.953312
6	1	2	\N	2018-05-25 09:29:20.955256	2018-05-25 09:29:20.955256
7	2	3	\N	2018-05-25 09:29:20.95955	2018-05-25 09:29:20.95955
8	3	3	\N	2018-05-25 09:29:20.961549	2018-05-25 09:29:20.961549
9	1	3	\N	2018-05-25 09:29:20.96339	2018-05-25 09:29:20.96339
10	2	4	\N	2018-05-25 09:29:20.967223	2018-05-25 09:29:20.967223





COPY public.products (id, category_id, name, description, hidden, deleted_at, created_at, updated_at) FROM stdin;
1	2	Chloe	blep	f	\N	2018-05-25 09:29:20.914974	2018-05-25 09:29:20.914974
2	2	Sugar	11/10	f	\N	2018-05-25 09:29:20.949253	2018-05-25 09:29:20.949253
3	2	Sandy	11/10	f	\N	2018-05-25 09:29:20.957428	2018-05-25 09:29:20.957428
4	2	Missy	smol pupperino	f	\N	2018-05-25 09:29:20.965235	2018-05-25 09:29:20.965235
5	2	Blue	boop the snoot	f	\N	2018-05-25 09:29:20.973165	2018-05-25 09:29:20.973165
6	2	Gracie	they're good dogs Brent	f	\N	2018-05-25 09:29:20.980968	2018-05-25 09:29:20.980968
7	2	Sasha	thicc doggo	f	\N	2018-05-25 09:29:20.988816	2018-05-25 09:29:20.988816
8	2	Lilly	they're good dogs Brent	f	\N	2018-05-25 09:29:20.996701	2018-05-25 09:29:20.996701
9	2	Molly	long boi	f	\N	2018-05-25 09:29:21.005371	2018-05-25 09:29:21.005371
10	2	Snoopy	they're good dogs Brent	f	\N	2018-05-25 09:29:21.013172	2018-05-25 09:29:21.013172









COPY public.variant_option_values (id, variant_id, option_value_id, deleted_at, created_at, updated_at) FROM stdin;
1	1	4	\N	2018-05-25 09:29:20.942905	2018-05-25 09:29:20.942905
2	1	6	\N	2018-05-25 09:29:20.945981	2018-05-25 09:29:20.945981
3	1	1	\N	2018-05-25 09:29:20.948059	2018-05-25 09:29:20.948059
4	2	4	\N	2018-05-25 09:29:20.952363	2018-05-25 09:29:20.952363
5	2	6	\N	2018-05-25 09:29:20.954272	2018-05-25 09:29:20.954272
6	2	1	\N	2018-05-25 09:29:20.956358	2018-05-25 09:29:20.956358
7	3	4	\N	2018-05-25 09:29:20.960584	2018-05-25 09:29:20.960584
8	3	7	\N	2018-05-25 09:29:20.962511	2018-05-25 09:29:20.962511
9	3	1	\N	2018-05-25 09:29:20.964261	2018-05-25 09:29:20.964261
10	4	4	\N	2018-05-25 09:29:20.968154	2018-05-25 09:29:20.968154




 COPY public.variants (id, product_id, sku, barcode, price, amount, deleted_at, created_at, updated_at) FROM stdin;
2	2	B0000DHCZT	\N	12.86	0.0	\N	2018-05-25 09:29:20.950353	2018-05-25 09:29:31.983044
3	3	B000AF8T1C	\N	31.12	0.0	\N	2018-05-25 09:29:20.958478	2018-05-25 09:29:31.996348
4	4	B000A2MHMW	\N	50.44	0.0	\N	2018-05-25 09:29:20.96618	2018-05-25 09:29:32.005472
5	5	B00065E4WY	\N	44.92	0.0	\N	2018-05-25 09:29:20.974252	2018-05-25 09:29:32.009727
6	6	B000HW06LY	\N	38.07	0.0	\N	2018-05-25 09:29:20.981938	2018-05-25 09:29:32.01456
7	7	B000JQ0JNS	\N	0.68	0.0	\N	2018-05-25 09:29:20.989803	2018-05-25 09:29:32.026545
8	8	B000IXHC2S	\N	81.67	0.0	\N	2018-05-25 09:29:20.997836	2018-05-25 09:29:32.032579
9	9	B000A2NIK2	\N	42.49	0.0	\N	2018-05-25 09:29:21.006446	2018-05-25 09:29:32.036469
10	10	B000FTQ5A0	\N	52.46	0.0	\N	2018-05-25 09:29:21.014164	2018-05-25 09:29:32.048953
