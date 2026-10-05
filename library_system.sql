--
-- PostgreSQL database dump
--

\restrict 6XLOe3xxlRZblAOqfixmohdq8bXIWNppWEu4PhwVA2y5W1c1Uknm4hn2x6Q01NC

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: book; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.book (
    name character varying(100) NOT NULL,
    type character varying(100) NOT NULL,
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL
);


ALTER TABLE public.book OWNER TO postgres;

--
-- Name: borrowings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.borrowings (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    user_id uuid,
    book_id uuid,
    borrow_date date NOT NULL,
    return_date date NOT NULL
);


ALTER TABLE public.borrowings OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    name character varying(40) NOT NULL,
    email character varying(200)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.book (name, type, id) FROM stdin;
Clean Code	Programming	c96ba217-d9fb-4bc4-b119-49943c37e47c
The Pragmatic Programmer	Programming	386eac15-a224-45d2-9821-3045d77d0624
Database System Concepts	Database	4d85e308-7a23-4aed-ba81-f43ef40d122e
Designing Data-Intensive Applications	Database	d10fba53-5355-498a-81e6-6bd260770c14
Python Crash Course	Programming	9f48956e-075a-45a4-ae8c-5ec03fb062de
Django for Beginners	Programming	4173050f-237a-4f10-bcb0-f9f7f3726067
The Alchemist	Novel	a92892da-f55d-4690-ab13-4c1b1f22784b
Atomic Habits	Self Development	99c95b8a-143e-4a03-84bb-b2eecef3eb4e
Harry Potter	Fantasy	eced5959-50b2-4d6c-8316-2cda039476ad
The Hobbit	Fantasy	7301ace4-21a6-4782-ad38-c0a4720a234e
\.


--
-- Data for Name: borrowings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.borrowings (id, user_id, book_id, borrow_date, return_date) FROM stdin;
4b042d23-7245-4afe-992d-df31706363f5	cd0f220e-820d-4eff-915a-22fea7b20b1e	4d85e308-7a23-4aed-ba81-f43ef40d122e	2026-09-01	2026-10-20
0305bfb9-2909-4ece-be0a-fcd16d70cbf3	42031523-a407-4f41-9423-aa1456fa4e11	d10fba53-5355-498a-81e6-6bd260770c14	2026-05-01	2026-08-05
1593bb6a-18f0-4b86-ad50-bcfe8899e274	021f00aa-17b4-43d9-b3bb-e24f535c3b03	9f48956e-075a-45a4-ae8c-5ec03fb062de	2026-06-01	2026-06-15
938fd3e6-faf3-4f99-aa34-4145defa0da6	2bfd97ea-a1cf-428e-9a4c-e1ebdbb64884	4173050f-237a-4f10-bcb0-f9f7f3726067	2026-07-01	2026-07-15
bea6555a-f9ea-4e6a-a2bc-52389538acfe	8c8df39e-5056-4097-9d48-07c7456463d7	a92892da-f55d-4690-ab13-4c1b1f22784b	2026-07-10	2026-07-25
07bac6dc-1c67-42fb-b86b-dcb0072472a7	f70171ce-3315-46ac-93a2-336bd5e9f9f3	99c95b8a-143e-4a03-84bb-b2eecef3eb4e	2026-08-01	2026-08-15
d3079d71-6f0f-463e-8ab2-c2322c72c8cd	84b31288-6994-472d-946b-d222b68d1133	eced5959-50b2-4d6c-8316-2cda039476ad	2026-08-10	2026-08-25
fdde8392-cc49-4694-a9bf-2422401cf810	d08de78e-185d-411f-ade2-8912ac586f14	7301ace4-21a6-4782-ad38-c0a4720a234e	2026-09-05	2026-09-20
963c8833-869a-4ee1-aa4b-2936b2f8c023	4cbdd5b9-c34b-4ad4-a7b6-aa1ba90e0ef6	d10fba53-5355-498a-81e6-6bd260770c14	2026-09-10	2026-09-25
fb37f3d6-d19c-4e38-977e-aa887c346607	b3a3749f-27c5-4caf-9970-c69e8833b63f	4d85e308-7a23-4aed-ba81-f43ef40d122e	2026-10-01	2026-10-10
ee2e8147-9930-40e0-a0f9-5625c6eb3d05	b3a3749f-27c5-4caf-9970-c69e8833b63f	4d85e308-7a23-4aed-ba81-f43ef40d122e	2026-10-12	2026-10-24
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email) FROM stdin;
b3a3749f-27c5-4caf-9970-c69e8833b63f	Ahmed Fouad	ahmed@example.com
cd0f220e-820d-4eff-915a-22fea7b20b1e	Omar Ali	omar@example.com
42031523-a407-4f41-9423-aa1456fa4e11	Mohamed Hassan	mohamed@example.com
021f00aa-17b4-43d9-b3bb-e24f535c3b03	Youssef Ahmed	youssef@example.com
2bfd97ea-a1cf-428e-9a4c-e1ebdbb64884	Ali Mahmoud	ali@example.com
8c8df39e-5056-4097-9d48-07c7456463d7	Khaled Samir	khaled@example.com
f70171ce-3315-46ac-93a2-336bd5e9f9f3	Mostafa Adel	mostafa@example.com
84b31288-6994-472d-946b-d222b68d1133	Mahmoud Tarek	mahmoud@example.com
d08de78e-185d-411f-ade2-8912ac586f14	Amr Hany	amr@example.com
4cbdd5b9-c34b-4ad4-a7b6-aa1ba90e0ef6	Hassan Ibrahim	hassan@example.com
\.


--
-- Name: book book_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (id);


--
-- Name: borrowings borrowings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borrowings
    ADD CONSTRAINT borrowings_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: borrowings borrowings_book_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borrowings
    ADD CONSTRAINT borrowings_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.book(id) ON DELETE CASCADE;


--
-- Name: borrowings borrowings_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.borrowings
    ADD CONSTRAINT borrowings_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict 6XLOe3xxlRZblAOqfixmohdq8bXIWNppWEu4PhwVA2y5W1c1Uknm4hn2x6Q01NC

