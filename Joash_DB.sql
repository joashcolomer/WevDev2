PGDMP         -                 x            d9bqdvmavgkqvf     11.6 (Ubuntu 11.6-1.pgdg16.04+1)    11.5                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    23820502    d9bqdvmavgkqvf    DATABASE     �   CREATE DATABASE d9bqdvmavgkqvf WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE d9bqdvmavgkqvf;
             zvefpusifneoyn    false                       0    0    DATABASE d9bqdvmavgkqvf    ACL     A   REVOKE CONNECT,TEMPORARY ON DATABASE d9bqdvmavgkqvf FROM PUBLIC;
                  zvefpusifneoyn    false    3843                       0    0    SCHEMA public    ACL     �   REVOKE ALL ON SCHEMA public FROM postgres;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO zvefpusifneoyn;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  zvefpusifneoyn    false    3                       0    0    LANGUAGE plpgsql    ACL     1   GRANT ALL ON LANGUAGE plpgsql TO zvefpusifneoyn;
                  postgres    false    600            �            1259    23885848    owners    TABLE     �   CREATE TABLE public.owners (
    owner_id integer NOT NULL,
    name character varying(20) NOT NULL,
    gender character varying(20),
    age smallint,
    occupation character varying(30)
);
    DROP TABLE public.owners;
       public         zvefpusifneoyn    false            �            1259    23885846    owners_owner_id_seq    SEQUENCE     �   CREATE SEQUENCE public.owners_owner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.owners_owner_id_seq;
       public       zvefpusifneoyn    false    197                       0    0    owners_owner_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.owners_owner_id_seq OWNED BY public.owners.owner_id;
            public       zvefpusifneoyn    false    196            �            1259    23886236    pets    TABLE     �   CREATE TABLE public.pets (
    pet_id integer NOT NULL,
    pet_name character varying(20) NOT NULL,
    class character varying(30),
    age smallint,
    family character varying(30),
    owner_id integer
);
    DROP TABLE public.pets;
       public         zvefpusifneoyn    false            �            1259    23886234    pets_pet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pets_pet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.pets_pet_id_seq;
       public       zvefpusifneoyn    false    199                       0    0    pets_pet_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.pets_pet_id_seq OWNED BY public.pets.pet_id;
            public       zvefpusifneoyn    false    198            {           2604    23885851    owners owner_id    DEFAULT     r   ALTER TABLE ONLY public.owners ALTER COLUMN owner_id SET DEFAULT nextval('public.owners_owner_id_seq'::regclass);
 >   ALTER TABLE public.owners ALTER COLUMN owner_id DROP DEFAULT;
       public       zvefpusifneoyn    false    197    196    197            |           2604    23886239    pets pet_id    DEFAULT     j   ALTER TABLE ONLY public.pets ALTER COLUMN pet_id SET DEFAULT nextval('public.pets_pet_id_seq'::regclass);
 :   ALTER TABLE public.pets ALTER COLUMN pet_id DROP DEFAULT;
       public       zvefpusifneoyn    false    198    199    199           