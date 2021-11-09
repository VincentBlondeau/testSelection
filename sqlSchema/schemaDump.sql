--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- Name: datediff(character varying, timestamp without time zone, timestamp without time zone); Type: FUNCTION; Schema: public; Owner: pharo
--

CREATE FUNCTION datediff(units character varying, start_t timestamp without time zone, end_t timestamp without time zone) RETURNS integer
    LANGUAGE plpgsql
    AS $$
   DECLARE
     diff_interval INTERVAL; 
     diff INT = 0;
     years_diff INT = 0;
   BEGIN
     IF units IN ('yy', 'yyyy', 'year', 'mm', 'm', 'month') THEN
       years_diff = DATE_PART('year', end_t) - DATE_PART('year', start_t);
 
       IF units IN ('yy', 'yyyy', 'year') THEN
         -- SQL Server does not count full years passed (only difference between year parts)
         RETURN years_diff;
       ELSE
         -- If end month is less than start month it will subtracted
         RETURN years_diff * 12 + (DATE_PART('month', end_t) - DATE_PART('month', start_t)); 
       END IF;
     END IF;
 
     -- Minus operator returns interval 'DDD days HH:MI:SS'  
     diff_interval = end_t - start_t;
 
     diff = diff + DATE_PART('day', diff_interval);
 
     IF units IN ('wk', 'ww', 'week') THEN
       diff = diff/7;
       RETURN diff;
     END IF;
 
     IF units IN ('dd', 'd', 'day') THEN
       RETURN diff;
     END IF;
 
     diff = diff * 24 + DATE_PART('hour', diff_interval); 
 
     IF units IN ('hh', 'hour') THEN
        RETURN diff;
     END IF;
 
     diff = diff * 60 + DATE_PART('minute', diff_interval);
 
     IF units IN ('mi', 'n', 'minute') THEN
        RETURN diff;
     END IF;
 
     diff = diff * 60 + DATE_PART('second', diff_interval);
 
     RETURN diff;
   END;
   $$;


ALTER FUNCTION public.datediff(units character varying, start_t timestamp without time zone, end_t timestamp without time zone) OWNER TO pharo;

--
-- Name: datediff(character varying, timestamp with time zone, timestamp with time zone); Type: FUNCTION; Schema: public; Owner: pharo
--

CREATE FUNCTION datediff(units character varying, start_t timestamp with time zone, end_t timestamp with time zone) RETURNS integer
    LANGUAGE plpgsql
    AS $$
   DECLARE
     diff_interval INTERVAL; 
     diff INT = 0;
     years_diff INT = 0;
   BEGIN
     IF units IN ('yy', 'yyyy', 'year', 'mm', 'm', 'month') THEN
       years_diff = DATE_PART('year', end_t) - DATE_PART('year', start_t);
 
       IF units IN ('yy', 'yyyy', 'year') THEN
         -- SQL Server does not count full years passed (only difference between year parts)
         RETURN years_diff;
       ELSE
         -- If end month is less than start month it will subtracted
         RETURN years_diff * 12 + (DATE_PART('month', end_t) - DATE_PART('month', start_t)); 
       END IF;
     END IF;
 
     -- Minus operator returns interval 'DDD days HH:MI:SS'  
     diff_interval = end_t - start_t;
 
     diff = diff + DATE_PART('day', diff_interval);
 
     IF units IN ('wk', 'ww', 'week') THEN
       diff = diff/7;
       RETURN diff;
     END IF;
 
     IF units IN ('dd', 'd', 'day') THEN
       RETURN diff;
     END IF;
 
     diff = diff * 24 + DATE_PART('hour', diff_interval); 
 
     IF units IN ('hh', 'hour') THEN
        RETURN diff;
     END IF;
 
     diff = diff * 60 + DATE_PART('minute', diff_interval);
 
     IF units IN ('mi', 'n', 'minute') THEN
        RETURN diff;
     END IF;
 
     diff = diff * 60 + DATE_PART('second', diff_interval);
 
     RETURN diff;
   END;
   $$;


ALTER FUNCTION public.datediff(units character varying, start_t timestamp with time zone, end_t timestamp with time zone) OWNER TO pharo;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: class; Type: TABLE; Schema: public; Owner: pharo; Tablespace: 
--

CREATE TABLE class (
    id integer NOT NULL,
    name character varying,
    project_id integer NOT NULL,
    version_number character varying
);


ALTER TABLE public.class OWNER TO pharo;

--
-- Name: class_id_seq; Type: SEQUENCE; Schema: public; Owner: pharo
--

CREATE SEQUENCE class_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.class_id_seq OWNER TO pharo;

--
-- Name: class_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pharo
--

ALTER SEQUENCE class_id_seq OWNED BY class.id;


--
-- Name: execution; Type: TABLE; Schema: public; Owner: pharo; Tablespace: 
--

CREATE TABLE execution (
    id integer NOT NULL,
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    type character varying,
    people_id integer,
    execution_attributes character varying,
    scope character varying,
    governor character varying,
    isselectionpluginused boolean DEFAULT false,
    idename character varying
);


ALTER TABLE public.execution OWNER TO pharo;

--
-- Name: execution_entity; Type: TABLE; Schema: public; Owner: pharo; Tablespace: 
--

CREATE TABLE execution_entity (
    id integer NOT NULL,
    status character varying,
    duration double precision,
    class_id integer,
    method_id integer,
    execution_id integer,
    CONSTRAINT execution_entity_method_or_class_check CHECK ((((class_id IS NULL) AND (method_id IS NOT NULL)) OR ((class_id IS NOT NULL) AND (method_id IS NULL))))
);


ALTER TABLE public.execution_entity OWNER TO pharo;

--
-- Name: execution_entity_id_seq; Type: SEQUENCE; Schema: public; Owner: pharo
--

CREATE SEQUENCE execution_entity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.execution_entity_id_seq OWNER TO pharo;

--
-- Name: execution_entity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pharo
--

ALTER SEQUENCE execution_entity_id_seq OWNED BY execution_entity.id;


--
-- Name: execution_id_seq; Type: SEQUENCE; Schema: public; Owner: pharo
--

CREATE SEQUENCE execution_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.execution_id_seq OWNER TO pharo;

--
-- Name: execution_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pharo
--

ALTER SEQUENCE execution_id_seq OWNED BY execution.id;


--
-- Name: method; Type: TABLE; Schema: public; Owner: pharo; Tablespace: 
--

CREATE TABLE method (
    id integer NOT NULL,
    name character varying,
    class_id integer,
    project_id integer,
    version_number character varying
);


ALTER TABLE public.method OWNER TO pharo;

--
-- Name: method_id_seq; Type: SEQUENCE; Schema: public; Owner: pharo
--

CREATE SEQUENCE method_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.method_id_seq OWNER TO pharo;

--
-- Name: method_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pharo
--

ALTER SEQUENCE method_id_seq OWNED BY method.id;


--
-- Name: people; Type: TABLE; Schema: public; Owner: pharo; Tablespace: 
--

CREATE TABLE people (
    user_id character varying(100),
    id integer NOT NULL
);


ALTER TABLE public.people OWNER TO pharo;

--
-- Name: people_duplicates; Type: TABLE; Schema: public; Owner: pharo; Tablespace: 
--

CREATE TABLE people_duplicates (
    real_id integer NOT NULL,
    virtual_id integer
);


ALTER TABLE public.people_duplicates OWNER TO pharo;

--
-- Name: project; Type: TABLE; Schema: public; Owner: pharo; Tablespace: 
--

CREATE TABLE project (
    id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.project OWNER TO pharo;

--
-- Name: project_id_seq; Type: SEQUENCE; Schema: public; Owner: pharo
--

CREATE SEQUENCE project_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.project_id_seq OWNER TO pharo;

--
-- Name: project_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pharo
--

ALTER SEQUENCE project_id_seq OWNED BY project.id;


--
-- Name: project_repository; Type: TABLE; Schema: public; Owner: pharo; Tablespace: 
--

CREATE TABLE project_repository (
    project_id integer NOT NULL,
    repository_id integer NOT NULL
);


ALTER TABLE public.project_repository OWNER TO pharo;

--
-- Name: repository; Type: TABLE; Schema: public; Owner: pharo; Tablespace: 
--

CREATE TABLE repository (
    url character varying,
    id integer NOT NULL
);


ALTER TABLE public.repository OWNER TO pharo;

--
-- Name: repository_id_seq; Type: SEQUENCE; Schema: public; Owner: pharo
--

CREATE SEQUENCE repository_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.repository_id_seq OWNER TO pharo;

--
-- Name: repository_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pharo
--

ALTER SEQUENCE repository_id_seq OWNED BY repository.id;


--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: pharo
--

CREATE SEQUENCE user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO pharo;

--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pharo
--

ALTER SEQUENCE user_id_seq OWNED BY people.id;


--
-- Name: version; Type: TABLE; Schema: public; Owner: pharo; Tablespace: 
--

CREATE TABLE version (
    project_id integer NOT NULL,
    number character varying NOT NULL
);


ALTER TABLE public.version OWNER TO pharo;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pharo
--

ALTER TABLE ONLY class ALTER COLUMN id SET DEFAULT nextval('class_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pharo
--

ALTER TABLE ONLY execution ALTER COLUMN id SET DEFAULT nextval('execution_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pharo
--

ALTER TABLE ONLY execution_entity ALTER COLUMN id SET DEFAULT nextval('execution_entity_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pharo
--

ALTER TABLE ONLY method ALTER COLUMN id SET DEFAULT nextval('method_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pharo
--

ALTER TABLE ONLY people ALTER COLUMN id SET DEFAULT nextval('user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pharo
--

ALTER TABLE ONLY project ALTER COLUMN id SET DEFAULT nextval('project_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pharo
--

ALTER TABLE ONLY repository ALTER COLUMN id SET DEFAULT nextval('repository_id_seq'::regclass);


--
-- Name: class_pk; Type: CONSTRAINT; Schema: public; Owner: pharo; Tablespace: 
--

ALTER TABLE ONLY class
    ADD CONSTRAINT class_pk PRIMARY KEY (id);


--
-- Name: das_uniq; Type: CONSTRAINT; Schema: public; Owner: pharo; Tablespace: 
--

ALTER TABLE ONLY people
    ADD CONSTRAINT das_uniq UNIQUE (user_id);


--
-- Name: execution_pk; Type: CONSTRAINT; Schema: public; Owner: pharo; Tablespace: 
--

ALTER TABLE ONLY execution
    ADD CONSTRAINT execution_pk PRIMARY KEY (id);


--
-- Name: executions_entities_pk; Type: CONSTRAINT; Schema: public; Owner: pharo; Tablespace: 
--

ALTER TABLE ONLY execution_entity
    ADD CONSTRAINT executions_entities_pk PRIMARY KEY (id);


--
-- Name: method_pk; Type: CONSTRAINT; Schema: public; Owner: pharo; Tablespace: 
--

ALTER TABLE ONLY method
    ADD CONSTRAINT method_pk PRIMARY KEY (id);


--
-- Name: people_pk; Type: CONSTRAINT; Schema: public; Owner: pharo; Tablespace: 
--

ALTER TABLE ONLY people
    ADD CONSTRAINT people_pk PRIMARY KEY (id);


--
-- Name: pk_people_duplicates; Type: CONSTRAINT; Schema: public; Owner: pharo; Tablespace: 
--

ALTER TABLE ONLY people_duplicates
    ADD CONSTRAINT pk_people_duplicates PRIMARY KEY (real_id);


--
-- Name: project_name_uniq; Type: CONSTRAINT; Schema: public; Owner: pharo; Tablespace: 
--

ALTER TABLE ONLY project
    ADD CONSTRAINT project_name_uniq UNIQUE (name);


--
-- Name: project_pk; Type: CONSTRAINT; Schema: public; Owner: pharo; Tablespace: 
--

ALTER TABLE ONLY project
    ADD CONSTRAINT project_pk PRIMARY KEY (id);


--
-- Name: project_repository_pk; Type: CONSTRAINT; Schema: public; Owner: pharo; Tablespace: 
--

ALTER TABLE ONLY project_repository
    ADD CONSTRAINT project_repository_pk PRIMARY KEY (repository_id, project_id);


--
-- Name: repository_pk; Type: CONSTRAINT; Schema: public; Owner: pharo; Tablespace: 
--

ALTER TABLE ONLY repository
    ADD CONSTRAINT repository_pk PRIMARY KEY (id);


--
-- Name: repository_url_uniq; Type: CONSTRAINT; Schema: public; Owner: pharo; Tablespace: 
--

ALTER TABLE ONLY repository
    ADD CONSTRAINT repository_url_uniq UNIQUE (url);


--
-- Name: version_pk; Type: CONSTRAINT; Schema: public; Owner: pharo; Tablespace: 
--

ALTER TABLE ONLY version
    ADD CONSTRAINT version_pk PRIMARY KEY (number, project_id);


--
-- Name: class_id; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX class_id ON class USING btree (id);


--
-- Name: class_project_id_idx; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX class_project_id_idx ON class USING btree (project_id);


--
-- Name: class_project_id_version_number_idx; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX class_project_id_version_number_idx ON class USING btree (version_number, project_id);


--
-- Name: class_version_number_idx; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX class_version_number_idx ON class USING btree (version_number);


--
-- Name: execution_entity_id_idx; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX execution_entity_id_idx ON execution_entity USING btree (id);


--
-- Name: execution_entity_method_idx; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX execution_entity_method_idx ON execution_entity USING btree (method_id);


--
-- Name: execution_id_idx; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX execution_id_idx ON execution USING btree (id);


--
-- Name: fki_execution_entity_class_fk; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX fki_execution_entity_class_fk ON execution_entity USING btree (class_id);


--
-- Name: fki_execution_entity_execution_fk; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX fki_execution_entity_execution_fk ON execution_entity USING btree (execution_id);


--
-- Name: fki_execution_people_fk; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX fki_execution_people_fk ON execution USING btree (people_id);


--
-- Name: fki_method_class_fk; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX fki_method_class_fk ON method USING btree (class_id);


--
-- Name: fki_project_repository_project_fk; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX fki_project_repository_project_fk ON project_repository USING btree (project_id);


--
-- Name: method_id_idx; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX method_id_idx ON method USING btree (id);


--
-- Name: method_project_id_idx; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX method_project_id_idx ON method USING btree (project_id);


--
-- Name: method_version_number_idx; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX method_version_number_idx ON method USING btree (version_number);


--
-- Name: people_duplicates_real_id_idx; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX people_duplicates_real_id_idx ON people_duplicates USING btree (real_id);


--
-- Name: people_duplicates_virtual_id_idx; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX people_duplicates_virtual_id_idx ON people_duplicates USING btree (virtual_id);


--
-- Name: people_pk_idx; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX people_pk_idx ON people USING btree (id);


--
-- Name: project_id_idx; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX project_id_idx ON project USING btree (id);


--
-- Name: project_repository_repository_id; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX project_repository_repository_id ON project_repository USING btree (repository_id);


--
-- Name: repository_id; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX repository_id ON repository USING btree (id);


--
-- Name: version_number_idx; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX version_number_idx ON version USING btree (number);


--
-- Name: version_project_id_idx; Type: INDEX; Schema: public; Owner: pharo; Tablespace: 
--

CREATE INDEX version_project_id_idx ON version USING btree (project_id);


--
-- Name: class_version_fk; Type: FK CONSTRAINT; Schema: public; Owner: pharo
--

ALTER TABLE ONLY class
    ADD CONSTRAINT class_version_fk FOREIGN KEY (project_id, version_number) REFERENCES version(project_id, number);


--
-- Name: execution_entity_class_fk; Type: FK CONSTRAINT; Schema: public; Owner: pharo
--

ALTER TABLE ONLY execution_entity
    ADD CONSTRAINT execution_entity_class_fk FOREIGN KEY (class_id) REFERENCES class(id);


--
-- Name: execution_entity_execution_fk; Type: FK CONSTRAINT; Schema: public; Owner: pharo
--

ALTER TABLE ONLY execution_entity
    ADD CONSTRAINT execution_entity_execution_fk FOREIGN KEY (execution_id) REFERENCES execution(id);


--
-- Name: execution_entity_method_fk; Type: FK CONSTRAINT; Schema: public; Owner: pharo
--

ALTER TABLE ONLY execution_entity
    ADD CONSTRAINT execution_entity_method_fk FOREIGN KEY (method_id) REFERENCES method(id);


--
-- Name: execution_people_fk; Type: FK CONSTRAINT; Schema: public; Owner: pharo
--

ALTER TABLE ONLY execution
    ADD CONSTRAINT execution_people_fk FOREIGN KEY (people_id) REFERENCES people(id);


--
-- Name: method_class_fk; Type: FK CONSTRAINT; Schema: public; Owner: pharo
--

ALTER TABLE ONLY method
    ADD CONSTRAINT method_class_fk FOREIGN KEY (class_id) REFERENCES class(id);


--
-- Name: method_version_fk; Type: FK CONSTRAINT; Schema: public; Owner: pharo
--

ALTER TABLE ONLY method
    ADD CONSTRAINT method_version_fk FOREIGN KEY (project_id, version_number) REFERENCES version(project_id, number);


--
-- Name: project_repository_project_fk; Type: FK CONSTRAINT; Schema: public; Owner: pharo
--

ALTER TABLE ONLY project_repository
    ADD CONSTRAINT project_repository_project_fk FOREIGN KEY (project_id) REFERENCES project(id);


--
-- Name: project_repository_repository_fk; Type: FK CONSTRAINT; Schema: public; Owner: pharo
--

ALTER TABLE ONLY project_repository
    ADD CONSTRAINT project_repository_repository_fk FOREIGN KEY (repository_id) REFERENCES repository(id);


--
-- Name: version_project_fk; Type: FK CONSTRAINT; Schema: public; Owner: pharo
--

ALTER TABLE ONLY version
    ADD CONSTRAINT version_project_fk FOREIGN KEY (project_id) REFERENCES project(id);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

