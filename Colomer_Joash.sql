PGDMP         )                 x            d9bqdvmavgkqvf     11.6 (Ubuntu 11.6-1.pgdg16.04+1)    11.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    23820502    d9bqdvmavgkqvf    DATABASE     �   CREATE DATABASE d9bqdvmavgkqvf WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE d9bqdvmavgkqvf;
             zvefpusifneoyn    false            �           0    0    DATABASE d9bqdvmavgkqvf    ACL     A   REVOKE CONNECT,TEMPORARY ON DATABASE d9bqdvmavgkqvf FROM PUBLIC;
                  zvefpusifneoyn    false    3836            �           0    0    LANGUAGE plpgsql    ACL     1   GRANT ALL ON LANGUAGE plpgsql TO zvefpusifneoyn;
                  postgres    false    598            �            1259    23885848    owners    TABLE     �   CREATE TABLE public.owners (
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
       public       zvefpusifneoyn    false    197            �           0    0    owners_owner_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.owners_owner_id_seq OWNED BY public.owners.owner_id;
            public       zvefpusifneoyn    false    196            y           2604    23885851    owners owner_id    DEFAULT     r   ALTER TABLE ONLY public.owners ALTER COLUMN owner_id SET DEFAULT nextval('public.owners_owner_id_seq'::regclass);
 >   ALTER TABLE public.owners ALTER COLUMN owner_id DROP DEFAULT;
       public       zvefpusifneoyn    false    197    196    197            �          0    23885848    owners 
   TABLE DATA               I   COPY public.owners (owner_id, name, gender, age, occupation) FROM stdin;
    public       zvefpusifneoyn    false    197   �                   0    0    owners_owner_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.owners_owner_id_seq', 1, false);
            public       zvefpusifneoyn    false    196            {           2606    23885853    owners owners_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.owners
    ADD CONSTRAINT owners_pkey PRIMARY KEY (owner_id);
 <   ALTER TABLE ONLY public.owners DROP CONSTRAINT owners_pkey;
       public         zvefpusifneoyn    false    197            �   {  x�eR�N�@}��
��t�K�cC���ڨ���e�;ɲ���Z@���pΜ�JXW���B�1�tg�{��	�vT����߇d%֦�"d�;��8������g��D[͓s�3��1\��z��n�H"��u�4��<��@���m1]�"x��`��E��,'ͷŦ�������Rص�N&R�`'n�'�vy��r^I�h����v�k�
n}jk�`Ḱ!l�GKȈ>��Xfe� F�31�i?ś(xDoB&�|����o='i��5�%<�T�1��/�
:���s�2�'�Xj7X��Rx�Y5��V��u}����sj��|���QkpВr���{�B�!�OÖ{4��.�*�g����f��3moWB�j<��     