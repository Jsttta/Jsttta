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
