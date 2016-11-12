Skip to content
This repository
Search
Pull requests
Issues
Gist
 @SmartSan
 Unwatch 6
  Unstar 4
  Fork 4,133 coco98/imad-2016-app
forked from hasura-imad/imad-2016-app
 Code  Pull requests 0  Projects 0  Wiki  Pulse  Graphs
Branch: master Find file Copy pathimad-2016-app/schema.sql
84b0ce7  9 days ago
@coco98 coco98 Adds schema
1 contributor
RawBlameHistory     
146 lines (102 sloc)  2.8 KB
--
-- Name: article; Type: TABLE; Schema: public; Owner: coco98
--

CREATE TABLE article (
    id integer NOT NULL,
    title text NOT NULL,
    heading text NOT NULL,
    date date NOT NULL,
    content text NOT NULL
);

--
-- Name: article_id_seq; Type: SEQUENCE; Schema: public; Owner: coco98
--

CREATE SEQUENCE article_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: comment; Type: TABLE; Schema: public; Owner: coco98
--

CREATE TABLE comment (
    id integer NOT NULL,
    article_id integer NOT NULL,
    user_id integer NOT NULL,
    comment text NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: comment_id_seq; Type: SEQUENCE; Schema: public; Owner: coco98
--

CREATE SEQUENCE comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user; Type: TABLE; Schema: public; Owner: coco98
--

CREATE TABLE "user" (
    id integer NOT NULL,
    username text NOT NULL,
    password text NOT NULL
);


--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: coco98
--

CREATE SEQUENCE user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: coco98
--

ALTER TABLE ONLY article ALTER COLUMN id SET DEFAULT nextval('article_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: coco98
--

ALTER TABLE ONLY comment ALTER COLUMN id SET DEFAULT nextval('comment_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: coco98
--

ALTER TABLE ONLY "user" ALTER COLUMN id SET DEFAULT nextval('user_id_seq'::regclass);

--
-- Name: article_id; Type: CONSTRAINT; Schema: public; Owner: coco98
--

ALTER TABLE ONLY article
    ADD CONSTRAINT article_id PRIMARY KEY (id);


--
-- Name: article_title; Type: CONSTRAINT; Schema: public; Owner: coco98
--

ALTER TABLE ONLY article
    ADD CONSTRAINT article_title UNIQUE (title);


--
-- Name: comment_id; Type: CONSTRAINT; Schema: public; Owner: coco98
--

ALTER TABLE ONLY comment
    ADD CONSTRAINT comment_id PRIMARY KEY (id);


--
-- Name: user_id; Type: CONSTRAINT; Schema: public; Owner: coco98
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_id PRIMARY KEY (id);


--
-- Name: user_username; Type: CONSTRAINT; Schema: public; Owner: coco98
--

ALTER TABLE ONLY "user"
    ADD CONSTRAINT user_username UNIQUE (username);


--
-- Name: comment_article_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: coco98
--

ALTER TABLE ONLY comment
    ADD CONSTRAINT comment_article_id_fkey FOREIGN KEY (article_id) REFERENCES article(id);


--
-- Name: comment_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: coco98
--

ALTER TABLE ONLY comment
    ADD CONSTRAINT comment_user_id_fkey FOREIGN KEY (user_id) REFERENCES "user"(id);
Contact GitHub API Training Shop Blog About
© 2016 GitHub, Inc. Terms Privacy Security Status Help
