PGDMP                      
    z            retail    15.0    15.0                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16477    retail    DATABASE     }   CREATE DATABASE retail WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE retail;
                postgres    false            �            1259    16495    barang    TABLE     �   CREATE TABLE public.barang (
    id_barang integer NOT NULL,
    nama_barang character varying(50),
    harga integer,
    stok integer,
    id_supplier integer
);
    DROP TABLE public.barang;
       public         heap    postgres    false            �            1259    16494    barang_id_barang_seq    SEQUENCE     �   CREATE SEQUENCE public.barang_id_barang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.barang_id_barang_seq;
       public          postgres    false    219                       0    0    barang_id_barang_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.barang_id_barang_seq OWNED BY public.barang.id_barang;
          public          postgres    false    218            �            1259    16488 	   pelanggan    TABLE     �   CREATE TABLE public.pelanggan (
    id_pelanggan integer NOT NULL,
    nama_pelanggan character varying(50),
    phone character(15),
    alamat character varying(30)
);
    DROP TABLE public.pelanggan;
       public         heap    postgres    false            �            1259    16487    pelanggan_id_pelanggan_seq    SEQUENCE     �   CREATE SEQUENCE public.pelanggan_id_pelanggan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.pelanggan_id_pelanggan_seq;
       public          postgres    false    217                       0    0    pelanggan_id_pelanggan_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.pelanggan_id_pelanggan_seq OWNED BY public.pelanggan.id_pelanggan;
          public          postgres    false    216            �            1259    16502 
   pembayaran    TABLE     �   CREATE TABLE public.pembayaran (
    nomor_pembayaran integer NOT NULL,
    id_pelanggan integer,
    id_barang integer,
    tgl_bayar date,
    jml_barang integer,
    total_bayar integer
);
    DROP TABLE public.pembayaran;
       public         heap    postgres    false            �            1259    16501    pembayaran_nomor_pembayaran_seq    SEQUENCE     �   CREATE SEQUENCE public.pembayaran_nomor_pembayaran_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.pembayaran_nomor_pembayaran_seq;
       public          postgres    false    221                       0    0    pembayaran_nomor_pembayaran_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.pembayaran_nomor_pembayaran_seq OWNED BY public.pembayaran.nomor_pembayaran;
          public          postgres    false    220            �            1259    16481    supplier    TABLE     �   CREATE TABLE public.supplier (
    id_supplier integer NOT NULL,
    nama_supplier character varying(30),
    phone character(15),
    alamat character varying(100)
);
    DROP TABLE public.supplier;
       public         heap    postgres    false            �            1259    16480    supplier_id_supplier_seq    SEQUENCE     �   CREATE SEQUENCE public.supplier_id_supplier_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.supplier_id_supplier_seq;
       public          postgres    false    215                       0    0    supplier_id_supplier_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.supplier_id_supplier_seq OWNED BY public.supplier.id_supplier;
          public          postgres    false    214            v           2604    16498    barang id_barang    DEFAULT     t   ALTER TABLE ONLY public.barang ALTER COLUMN id_barang SET DEFAULT nextval('public.barang_id_barang_seq'::regclass);
 ?   ALTER TABLE public.barang ALTER COLUMN id_barang DROP DEFAULT;
       public          postgres    false    218    219    219            u           2604    16491    pelanggan id_pelanggan    DEFAULT     �   ALTER TABLE ONLY public.pelanggan ALTER COLUMN id_pelanggan SET DEFAULT nextval('public.pelanggan_id_pelanggan_seq'::regclass);
 E   ALTER TABLE public.pelanggan ALTER COLUMN id_pelanggan DROP DEFAULT;
       public          postgres    false    217    216    217            w           2604    16505    pembayaran nomor_pembayaran    DEFAULT     �   ALTER TABLE ONLY public.pembayaran ALTER COLUMN nomor_pembayaran SET DEFAULT nextval('public.pembayaran_nomor_pembayaran_seq'::regclass);
 J   ALTER TABLE public.pembayaran ALTER COLUMN nomor_pembayaran DROP DEFAULT;
       public          postgres    false    221    220    221            t           2604    16484    supplier id_supplier    DEFAULT     |   ALTER TABLE ONLY public.supplier ALTER COLUMN id_supplier SET DEFAULT nextval('public.supplier_id_supplier_seq'::regclass);
 C   ALTER TABLE public.supplier ALTER COLUMN id_supplier DROP DEFAULT;
       public          postgres    false    215    214    215                      0    16495    barang 
   TABLE DATA           R   COPY public.barang (id_barang, nama_barang, harga, stok, id_supplier) FROM stdin;
    public          postgres    false    219   �#                 0    16488 	   pelanggan 
   TABLE DATA           P   COPY public.pelanggan (id_pelanggan, nama_pelanggan, phone, alamat) FROM stdin;
    public          postgres    false    217   �#                 0    16502 
   pembayaran 
   TABLE DATA           s   COPY public.pembayaran (nomor_pembayaran, id_pelanggan, id_barang, tgl_bayar, jml_barang, total_bayar) FROM stdin;
    public          postgres    false    221   $                 0    16481    supplier 
   TABLE DATA           M   COPY public.supplier (id_supplier, nama_supplier, phone, alamat) FROM stdin;
    public          postgres    false    215   S$                   0    0    barang_id_barang_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.barang_id_barang_seq', 1, false);
          public          postgres    false    218            !           0    0    pelanggan_id_pelanggan_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.pelanggan_id_pelanggan_seq', 1, false);
          public          postgres    false    216            "           0    0    pembayaran_nomor_pembayaran_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.pembayaran_nomor_pembayaran_seq', 1, false);
          public          postgres    false    220            #           0    0    supplier_id_supplier_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.supplier_id_supplier_seq', 1, false);
          public          postgres    false    214            }           2606    16500    barang barang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.barang
    ADD CONSTRAINT barang_pkey PRIMARY KEY (id_barang);
 <   ALTER TABLE ONLY public.barang DROP CONSTRAINT barang_pkey;
       public            postgres    false    219            {           2606    16493    pelanggan pelanggan_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.pelanggan
    ADD CONSTRAINT pelanggan_pkey PRIMARY KEY (id_pelanggan);
 B   ALTER TABLE ONLY public.pelanggan DROP CONSTRAINT pelanggan_pkey;
       public            postgres    false    217                       2606    16507    pembayaran pembayaran_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.pembayaran
    ADD CONSTRAINT pembayaran_pkey PRIMARY KEY (nomor_pembayaran);
 D   ALTER TABLE ONLY public.pembayaran DROP CONSTRAINT pembayaran_pkey;
       public            postgres    false    221            y           2606    16486    supplier supplier_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id_supplier);
 @   ALTER TABLE ONLY public.supplier DROP CONSTRAINT supplier_pkey;
       public            postgres    false    215               '   x�310��I�)-�41500�43�46�0������ nS         /   x�322���L,J�4�05251�4373UPP�tJ,*MO����� ���         1   x���  �w�E�� e��C�����4�D�QZ�K5��H{��>��         6   x�322��Qpr��t�Sp��4�026�41152U N�ĒԼt�=... e
�     