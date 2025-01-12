PGDMP                      {            FIXJOSJANCOK    16.1    16.1 X    T           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            U           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            V           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            W           1262    24813    FIXJOSJANCOK    DATABASE     �   CREATE DATABASE "FIXJOSJANCOK" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE "FIXJOSJANCOK";
                postgres    false            �            1259    24814    dosen    TABLE     �   CREATE TABLE public.dosen (
    id_dosen integer NOT NULL,
    nama character varying(100) NOT NULL,
    no_telepon character varying(20) NOT NULL
);
    DROP TABLE public.dosen;
       public         heap    postgres    false            �            1259    24817    dosen_id_dosen_seq    SEQUENCE     �   CREATE SEQUENCE public.dosen_id_dosen_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.dosen_id_dosen_seq;
       public          postgres    false    215            X           0    0    dosen_id_dosen_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.dosen_id_dosen_seq OWNED BY public.dosen.id_dosen;
          public          postgres    false    216            �            1259    24818    dosen_minat    TABLE     �   CREATE TABLE public.dosen_minat (
    id_dosen_minat integer NOT NULL,
    nama character varying(100) NOT NULL,
    minat character varying(100) NOT NULL,
    detail_minat character varying(100) NOT NULL
);
    DROP TABLE public.dosen_minat;
       public         heap    postgres    false            �            1259    24821    dosen_minat_id_dosen_minat_seq    SEQUENCE     �   CREATE SEQUENCE public.dosen_minat_id_dosen_minat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.dosen_minat_id_dosen_minat_seq;
       public          postgres    false    217            Y           0    0    dosen_minat_id_dosen_minat_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.dosen_minat_id_dosen_minat_seq OWNED BY public.dosen_minat.id_dosen_minat;
          public          postgres    false    218            �            1259    24822    himpunan    TABLE     v   CREATE TABLE public.himpunan (
    id_himpunan integer NOT NULL,
    nama_himpunan character varying(100) NOT NULL
);
    DROP TABLE public.himpunan;
       public         heap    postgres    false            �            1259    24825    himpunan_id_himpunan_seq    SEQUENCE     �   CREATE SEQUENCE public.himpunan_id_himpunan_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.himpunan_id_himpunan_seq;
       public          postgres    false    219            Z           0    0    himpunan_id_himpunan_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.himpunan_id_himpunan_seq OWNED BY public.himpunan.id_himpunan;
          public          postgres    false    220            �            1259    24826 	   mahasiswa    TABLE     �   CREATE TABLE public.mahasiswa (
    id_mahasiswa integer NOT NULL,
    nama character varying(100) NOT NULL,
    nim character varying(100) NOT NULL,
    no_telpon character varying(20) NOT NULL,
    prodi character varying(100) NOT NULL
);
    DROP TABLE public.mahasiswa;
       public         heap    postgres    false            �            1259    24829    mahasiswa_id_mahasiswa_seq    SEQUENCE     �   CREATE SEQUENCE public.mahasiswa_id_mahasiswa_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.mahasiswa_id_mahasiswa_seq;
       public          postgres    false    221            [           0    0    mahasiswa_id_mahasiswa_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.mahasiswa_id_mahasiswa_seq OWNED BY public.mahasiswa.id_mahasiswa;
          public          postgres    false    222            �            1259    24830    minat    TABLE     �   CREATE TABLE public.minat (
    id_minat integer NOT NULL,
    minat character varying(100) NOT NULL,
    detail_minat character varying(100) NOT NULL
);
    DROP TABLE public.minat;
       public         heap    postgres    false            �            1259    24833    minat_id_minat_seq    SEQUENCE     �   CREATE SEQUENCE public.minat_id_minat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.minat_id_minat_seq;
       public          postgres    false    223            \           0    0    minat_id_minat_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.minat_id_minat_seq OWNED BY public.minat.id_minat;
          public          postgres    false    224            �            1259    24834    pengajuan_sempro    TABLE     �  CREATE TABLE public.pengajuan_sempro (
    id_pengajuan_sempro integer NOT NULL,
    nama_mahasiswa character varying(100) NOT NULL,
    nim character varying(15) NOT NULL,
    prodi character varying(100) NOT NULL,
    total_sks character varying(10) NOT NULL,
    judul_proposal character varying(255) NOT NULL,
    tanggal_pengajuan character varying(20) NOT NULL,
    rumusan_masalah text NOT NULL,
    draft_proposal character varying(50) NOT NULL,
    bukti_krs character varying(50) NOT NULL,
    bukti_dosen_pembimbing character varying(50) NOT NULL,
    topik character varying(255) NOT NULL,
    status character varying(100) NOT NULL,
    pembimbing1 character varying(100) NOT NULL,
    pembimbing2 character varying(100) NOT NULL
);
 $   DROP TABLE public.pengajuan_sempro;
       public         heap    postgres    false            �            1259    24839 (   pengajuan_sempro_id_pengajuan_sempro_seq    SEQUENCE     �   CREATE SEQUENCE public.pengajuan_sempro_id_pengajuan_sempro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.pengajuan_sempro_id_pengajuan_sempro_seq;
       public          postgres    false    225            ]           0    0 (   pengajuan_sempro_id_pengajuan_sempro_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public.pengajuan_sempro_id_pengajuan_sempro_seq OWNED BY public.pengajuan_sempro.id_pengajuan_sempro;
          public          postgres    false    226            �            1259    24840    pengajuan_sidang_skripsi    TABLE     �  CREATE TABLE public.pengajuan_sidang_skripsi (
    id_pengajuan_sidang integer NOT NULL,
    nama_mahasiswa character varying(100) NOT NULL,
    nim character varying(15) NOT NULL,
    prodi character varying(100) NOT NULL,
    judul character varying(255) NOT NULL,
    file_skripsi character varying(100) NOT NULL,
    transkrip_nilai character varying(100) NOT NULL,
    bukti_acc character varying(100) NOT NULL,
    bukti_orisinalitas character varying(100) NOT NULL,
    status character varying(100) NOT NULL,
    pembimbing1 character varying(100) NOT NULL,
    pembimbing2 character varying(100) NOT NULL,
    no_telepon character varying(100) NOT NULL
);
 ,   DROP TABLE public.pengajuan_sidang_skripsi;
       public         heap    postgres    false            �            1259    24845 0   pengajuan_sidang_skripsi_id_pengajuan_sidang_seq    SEQUENCE     �   CREATE SEQUENCE public.pengajuan_sidang_skripsi_id_pengajuan_sidang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.pengajuan_sidang_skripsi_id_pengajuan_sidang_seq;
       public          postgres    false    227            ^           0    0 0   pengajuan_sidang_skripsi_id_pengajuan_sidang_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.pengajuan_sidang_skripsi_id_pengajuan_sidang_seq OWNED BY public.pengajuan_sidang_skripsi.id_pengajuan_sidang;
          public          postgres    false    228            �            1259    24846    penjadwalan_sempro    TABLE     N  CREATE TABLE public.penjadwalan_sempro (
    id_jadwal_sempro integer NOT NULL,
    nama_mahasiswa character varying(100),
    nim character varying(15),
    prodi character varying(100),
    tanggal character varying(20),
    jam character varying(10),
    judul character varying(255),
    link_zoom character varying(100),
    br_zoom character varying(10),
    pembimbing1 character varying(100),
    pembimbing2 character varying(100),
    penguji1 character varying(100),
    penguji2 character varying(100),
    no_telepon character varying(100),
    status character varying(20)
);
 &   DROP TABLE public.penjadwalan_sempro;
       public         heap    postgres    false            �            1259    24851 '   penjadwalan_sempro_id_jadwal_sempro_seq    SEQUENCE     �   CREATE SEQUENCE public.penjadwalan_sempro_id_jadwal_sempro_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE public.penjadwalan_sempro_id_jadwal_sempro_seq;
       public          postgres    false    229            _           0    0 '   penjadwalan_sempro_id_jadwal_sempro_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE public.penjadwalan_sempro_id_jadwal_sempro_seq OWNED BY public.penjadwalan_sempro.id_jadwal_sempro;
          public          postgres    false    230            �            1259    24852    penjadwalan_sidang_skripsi    TABLE     Y  CREATE TABLE public.penjadwalan_sidang_skripsi (
    id_jadwal_sidang integer NOT NULL,
    nama_mahasiswa character varying(100) NOT NULL,
    nim character varying(15) NOT NULL,
    prodi character varying(100) NOT NULL,
    tanggal character varying(20) NOT NULL,
    jam character varying(10) NOT NULL,
    ruang character varying(100) NOT NULL,
    judul character varying(255) NOT NULL,
    pembimbing1 character varying(100) NOT NULL,
    pembimbing2 character varying(100) NOT NULL,
    penguji1 character varying(100),
    penguji2 character varying(100),
    status character varying(20)
);
 .   DROP TABLE public.penjadwalan_sidang_skripsi;
       public         heap    postgres    false            �            1259    24857 /   penjadwalan_sidang_skripsi_id_jadwal_sidang_seq    SEQUENCE     �   CREATE SEQUENCE public.penjadwalan_sidang_skripsi_id_jadwal_sidang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE public.penjadwalan_sidang_skripsi_id_jadwal_sidang_seq;
       public          postgres    false    231            `           0    0 /   penjadwalan_sidang_skripsi_id_jadwal_sidang_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.penjadwalan_sidang_skripsi_id_jadwal_sidang_seq OWNED BY public.penjadwalan_sidang_skripsi.id_jadwal_sidang;
          public          postgres    false    232            �            1259    24858    prodi    TABLE     l   CREATE TABLE public.prodi (
    id_prodi integer NOT NULL,
    nama_prodi character varying(25) NOT NULL
);
    DROP TABLE public.prodi;
       public         heap    postgres    false            �            1259    24861    prodi_id_prodi_seq    SEQUENCE     �   CREATE SEQUENCE public.prodi_id_prodi_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.prodi_id_prodi_seq;
       public          postgres    false    233            a           0    0    prodi_id_prodi_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.prodi_id_prodi_seq OWNED BY public.prodi.id_prodi;
          public          postgres    false    234            �            1259    24862    status    TABLE     j   CREATE TABLE public.status (
    id_status integer NOT NULL,
    status character varying(25) NOT NULL
);
    DROP TABLE public.status;
       public         heap    postgres    false            �            1259    24865    status_id_status_seq    SEQUENCE     �   CREATE SEQUENCE public.status_id_status_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.status_id_status_seq;
       public          postgres    false    235            b           0    0    status_id_status_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.status_id_status_seq OWNED BY public.status.id_status;
          public          postgres    false    236            �            1259    24866 
   user_login    TABLE     �   CREATE TABLE public.user_login (
    id_user_login integer NOT NULL,
    username character varying(15) NOT NULL,
    sandi character varying(15) NOT NULL,
    peran character varying(25) NOT NULL
);
    DROP TABLE public.user_login;
       public         heap    postgres    false            �            1259    24869    user_login_id_user_login_seq    SEQUENCE     �   CREATE SEQUENCE public.user_login_id_user_login_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.user_login_id_user_login_seq;
       public          postgres    false    237            c           0    0    user_login_id_user_login_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.user_login_id_user_login_seq OWNED BY public.user_login.id_user_login;
          public          postgres    false    238            �           2604    24870    dosen id_dosen    DEFAULT     p   ALTER TABLE ONLY public.dosen ALTER COLUMN id_dosen SET DEFAULT nextval('public.dosen_id_dosen_seq'::regclass);
 =   ALTER TABLE public.dosen ALTER COLUMN id_dosen DROP DEFAULT;
       public          postgres    false    216    215            �           2604    24871    dosen_minat id_dosen_minat    DEFAULT     �   ALTER TABLE ONLY public.dosen_minat ALTER COLUMN id_dosen_minat SET DEFAULT nextval('public.dosen_minat_id_dosen_minat_seq'::regclass);
 I   ALTER TABLE public.dosen_minat ALTER COLUMN id_dosen_minat DROP DEFAULT;
       public          postgres    false    218    217            �           2604    24872    himpunan id_himpunan    DEFAULT     |   ALTER TABLE ONLY public.himpunan ALTER COLUMN id_himpunan SET DEFAULT nextval('public.himpunan_id_himpunan_seq'::regclass);
 C   ALTER TABLE public.himpunan ALTER COLUMN id_himpunan DROP DEFAULT;
       public          postgres    false    220    219            �           2604    24873    mahasiswa id_mahasiswa    DEFAULT     �   ALTER TABLE ONLY public.mahasiswa ALTER COLUMN id_mahasiswa SET DEFAULT nextval('public.mahasiswa_id_mahasiswa_seq'::regclass);
 E   ALTER TABLE public.mahasiswa ALTER COLUMN id_mahasiswa DROP DEFAULT;
       public          postgres    false    222    221            �           2604    24874    minat id_minat    DEFAULT     p   ALTER TABLE ONLY public.minat ALTER COLUMN id_minat SET DEFAULT nextval('public.minat_id_minat_seq'::regclass);
 =   ALTER TABLE public.minat ALTER COLUMN id_minat DROP DEFAULT;
       public          postgres    false    224    223            �           2604    24875 $   pengajuan_sempro id_pengajuan_sempro    DEFAULT     �   ALTER TABLE ONLY public.pengajuan_sempro ALTER COLUMN id_pengajuan_sempro SET DEFAULT nextval('public.pengajuan_sempro_id_pengajuan_sempro_seq'::regclass);
 S   ALTER TABLE public.pengajuan_sempro ALTER COLUMN id_pengajuan_sempro DROP DEFAULT;
       public          postgres    false    226    225            �           2604    24876 ,   pengajuan_sidang_skripsi id_pengajuan_sidang    DEFAULT     �   ALTER TABLE ONLY public.pengajuan_sidang_skripsi ALTER COLUMN id_pengajuan_sidang SET DEFAULT nextval('public.pengajuan_sidang_skripsi_id_pengajuan_sidang_seq'::regclass);
 [   ALTER TABLE public.pengajuan_sidang_skripsi ALTER COLUMN id_pengajuan_sidang DROP DEFAULT;
       public          postgres    false    228    227            �           2604    24877 #   penjadwalan_sempro id_jadwal_sempro    DEFAULT     �   ALTER TABLE ONLY public.penjadwalan_sempro ALTER COLUMN id_jadwal_sempro SET DEFAULT nextval('public.penjadwalan_sempro_id_jadwal_sempro_seq'::regclass);
 R   ALTER TABLE public.penjadwalan_sempro ALTER COLUMN id_jadwal_sempro DROP DEFAULT;
       public          postgres    false    230    229            �           2604    24878 +   penjadwalan_sidang_skripsi id_jadwal_sidang    DEFAULT     �   ALTER TABLE ONLY public.penjadwalan_sidang_skripsi ALTER COLUMN id_jadwal_sidang SET DEFAULT nextval('public.penjadwalan_sidang_skripsi_id_jadwal_sidang_seq'::regclass);
 Z   ALTER TABLE public.penjadwalan_sidang_skripsi ALTER COLUMN id_jadwal_sidang DROP DEFAULT;
       public          postgres    false    232    231            �           2604    24879    prodi id_prodi    DEFAULT     p   ALTER TABLE ONLY public.prodi ALTER COLUMN id_prodi SET DEFAULT nextval('public.prodi_id_prodi_seq'::regclass);
 =   ALTER TABLE public.prodi ALTER COLUMN id_prodi DROP DEFAULT;
       public          postgres    false    234    233            �           2604    24880    status id_status    DEFAULT     t   ALTER TABLE ONLY public.status ALTER COLUMN id_status SET DEFAULT nextval('public.status_id_status_seq'::regclass);
 ?   ALTER TABLE public.status ALTER COLUMN id_status DROP DEFAULT;
       public          postgres    false    236    235            �           2604    24881    user_login id_user_login    DEFAULT     �   ALTER TABLE ONLY public.user_login ALTER COLUMN id_user_login SET DEFAULT nextval('public.user_login_id_user_login_seq'::regclass);
 G   ALTER TABLE public.user_login ALTER COLUMN id_user_login DROP DEFAULT;
       public          postgres    false    238    237            :          0    24814    dosen 
   TABLE DATA           ;   COPY public.dosen (id_dosen, nama, no_telepon) FROM stdin;
    public          postgres    false    215   p       <          0    24818    dosen_minat 
   TABLE DATA           P   COPY public.dosen_minat (id_dosen_minat, nama, minat, detail_minat) FROM stdin;
    public          postgres    false    217   �r       >          0    24822    himpunan 
   TABLE DATA           >   COPY public.himpunan (id_himpunan, nama_himpunan) FROM stdin;
    public          postgres    false    219   �x       @          0    24826 	   mahasiswa 
   TABLE DATA           N   COPY public.mahasiswa (id_mahasiswa, nama, nim, no_telpon, prodi) FROM stdin;
    public          postgres    false    221   �x       B          0    24830    minat 
   TABLE DATA           >   COPY public.minat (id_minat, minat, detail_minat) FROM stdin;
    public          postgres    false    223   z       D          0    24834    pengajuan_sempro 
   TABLE DATA           �   COPY public.pengajuan_sempro (id_pengajuan_sempro, nama_mahasiswa, nim, prodi, total_sks, judul_proposal, tanggal_pengajuan, rumusan_masalah, draft_proposal, bukti_krs, bukti_dosen_pembimbing, topik, status, pembimbing1, pembimbing2) FROM stdin;
    public          postgres    false    225   Y}       F          0    24840    pengajuan_sidang_skripsi 
   TABLE DATA           �   COPY public.pengajuan_sidang_skripsi (id_pengajuan_sidang, nama_mahasiswa, nim, prodi, judul, file_skripsi, transkrip_nilai, bukti_acc, bukti_orisinalitas, status, pembimbing1, pembimbing2, no_telepon) FROM stdin;
    public          postgres    false    227   #�       H          0    24846    penjadwalan_sempro 
   TABLE DATA           �   COPY public.penjadwalan_sempro (id_jadwal_sempro, nama_mahasiswa, nim, prodi, tanggal, jam, judul, link_zoom, br_zoom, pembimbing1, pembimbing2, penguji1, penguji2, no_telepon, status) FROM stdin;
    public          postgres    false    229   ��       J          0    24852    penjadwalan_sidang_skripsi 
   TABLE DATA           �   COPY public.penjadwalan_sidang_skripsi (id_jadwal_sidang, nama_mahasiswa, nim, prodi, tanggal, jam, ruang, judul, pembimbing1, pembimbing2, penguji1, penguji2, status) FROM stdin;
    public          postgres    false    231   �       L          0    24858    prodi 
   TABLE DATA           5   COPY public.prodi (id_prodi, nama_prodi) FROM stdin;
    public          postgres    false    233   7�       N          0    24862    status 
   TABLE DATA           3   COPY public.status (id_status, status) FROM stdin;
    public          postgres    false    235   |�       P          0    24866 
   user_login 
   TABLE DATA           K   COPY public.user_login (id_user_login, username, sandi, peran) FROM stdin;
    public          postgres    false    237   ��       d           0    0    dosen_id_dosen_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.dosen_id_dosen_seq', 31, true);
          public          postgres    false    216            e           0    0    dosen_minat_id_dosen_minat_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.dosen_minat_id_dosen_minat_seq', 110, true);
          public          postgres    false    218            f           0    0    himpunan_id_himpunan_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.himpunan_id_himpunan_seq', 3, true);
          public          postgres    false    220            g           0    0    mahasiswa_id_mahasiswa_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.mahasiswa_id_mahasiswa_seq', 10, true);
          public          postgres    false    222            h           0    0    minat_id_minat_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.minat_id_minat_seq', 110, true);
          public          postgres    false    224            i           0    0 (   pengajuan_sempro_id_pengajuan_sempro_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public.pengajuan_sempro_id_pengajuan_sempro_seq', 10, true);
          public          postgres    false    226            j           0    0 0   pengajuan_sidang_skripsi_id_pengajuan_sidang_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.pengajuan_sidang_skripsi_id_pengajuan_sidang_seq', 10, true);
          public          postgres    false    228            k           0    0 '   penjadwalan_sempro_id_jadwal_sempro_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('public.penjadwalan_sempro_id_jadwal_sempro_seq', 10, true);
          public          postgres    false    230            l           0    0 /   penjadwalan_sidang_skripsi_id_jadwal_sidang_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.penjadwalan_sidang_skripsi_id_jadwal_sidang_seq', 10, true);
          public          postgres    false    232            m           0    0    prodi_id_prodi_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.prodi_id_prodi_seq', 3, true);
          public          postgres    false    234            n           0    0    status_id_status_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.status_id_status_seq', 2, true);
          public          postgres    false    236            o           0    0    user_login_id_user_login_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.user_login_id_user_login_seq', 5, true);
          public          postgres    false    238            �           2606    24883    dosen_minat dosen_minat_pk 
   CONSTRAINT     d   ALTER TABLE ONLY public.dosen_minat
    ADD CONSTRAINT dosen_minat_pk PRIMARY KEY (id_dosen_minat);
 D   ALTER TABLE ONLY public.dosen_minat DROP CONSTRAINT dosen_minat_pk;
       public            postgres    false    217            �           2606    24885    dosen dosen_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.dosen
    ADD CONSTRAINT dosen_pk PRIMARY KEY (id_dosen);
 8   ALTER TABLE ONLY public.dosen DROP CONSTRAINT dosen_pk;
       public            postgres    false    215            �           2606    24887    himpunan himpunan_pk 
   CONSTRAINT     [   ALTER TABLE ONLY public.himpunan
    ADD CONSTRAINT himpunan_pk PRIMARY KEY (id_himpunan);
 >   ALTER TABLE ONLY public.himpunan DROP CONSTRAINT himpunan_pk;
       public            postgres    false    219            �           2606    24889    mahasiswa mahasiswa_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.mahasiswa
    ADD CONSTRAINT mahasiswa_pk PRIMARY KEY (id_mahasiswa);
 @   ALTER TABLE ONLY public.mahasiswa DROP CONSTRAINT mahasiswa_pk;
       public            postgres    false    221            �           2606    24891    minat minat_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.minat
    ADD CONSTRAINT minat_pk PRIMARY KEY (id_minat);
 8   ALTER TABLE ONLY public.minat DROP CONSTRAINT minat_pk;
       public            postgres    false    223            �           2606    24893 $   pengajuan_sempro pengajuan_sempro_pk 
   CONSTRAINT     s   ALTER TABLE ONLY public.pengajuan_sempro
    ADD CONSTRAINT pengajuan_sempro_pk PRIMARY KEY (id_pengajuan_sempro);
 N   ALTER TABLE ONLY public.pengajuan_sempro DROP CONSTRAINT pengajuan_sempro_pk;
       public            postgres    false    225            �           2606    24895 4   pengajuan_sidang_skripsi pengajuan_sidang_skirpsi_pk 
   CONSTRAINT     �   ALTER TABLE ONLY public.pengajuan_sidang_skripsi
    ADD CONSTRAINT pengajuan_sidang_skirpsi_pk PRIMARY KEY (id_pengajuan_sidang);
 ^   ALTER TABLE ONLY public.pengajuan_sidang_skripsi DROP CONSTRAINT pengajuan_sidang_skirpsi_pk;
       public            postgres    false    227            �           2606    24897 (   penjadwalan_sempro penjadwalan_sempro_pk 
   CONSTRAINT     t   ALTER TABLE ONLY public.penjadwalan_sempro
    ADD CONSTRAINT penjadwalan_sempro_pk PRIMARY KEY (id_jadwal_sempro);
 R   ALTER TABLE ONLY public.penjadwalan_sempro DROP CONSTRAINT penjadwalan_sempro_pk;
       public            postgres    false    229            �           2606    24899 8   penjadwalan_sidang_skripsi penjadwalan_sidang_skripsi_pk 
   CONSTRAINT     �   ALTER TABLE ONLY public.penjadwalan_sidang_skripsi
    ADD CONSTRAINT penjadwalan_sidang_skripsi_pk PRIMARY KEY (id_jadwal_sidang);
 b   ALTER TABLE ONLY public.penjadwalan_sidang_skripsi DROP CONSTRAINT penjadwalan_sidang_skripsi_pk;
       public            postgres    false    231            �           2606    24901    prodi prodi_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.prodi
    ADD CONSTRAINT prodi_pk PRIMARY KEY (id_prodi);
 8   ALTER TABLE ONLY public.prodi DROP CONSTRAINT prodi_pk;
       public            postgres    false    233            �           2606    24903    status status_pk 
   CONSTRAINT     U   ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pk PRIMARY KEY (id_status);
 :   ALTER TABLE ONLY public.status DROP CONSTRAINT status_pk;
       public            postgres    false    235            �           2606    24905    user_login user_login_pk 
   CONSTRAINT     a   ALTER TABLE ONLY public.user_login
    ADD CONSTRAINT user_login_pk PRIMARY KEY (id_user_login);
 B   ALTER TABLE ONLY public.user_login DROP CONSTRAINT user_login_pk;
       public            postgres    false    237            :   �  x�}��n�0E��W̮�@���T�y@�Rt3�d��D��C���lǑ
�+n����̥�җ��24�)Dy���� ���ٱ�z~Fqbs���
RYh��S���Nj'q��=v^��۲��;�l��9��g3�������M��@->K\�Մx@ܺ�!+�p%t����:U-�!�if������=��J�<��F<b���xU�������
+���{H25Vg��D���ԯZH�7�H�X
�����;c���V ?��ū�;Q=vZ-���Ɓ��Q��ˮQ�rU��Tĩ
w<v�Ҡ&���x
��;z�D�����ZC��O�8v=��lPu��������|l�AKׇ,S6Ò���a{�����@z�B��kQ-;E�܉w�[/3����p^�"�$쾬�~�;|�-��m�+��d1�b���^�#\֔Zz[5�^�q�]�wS���lD7�l6�ڧ��l��_�9�H�ʧ���z$WK�E*ǭ�s���8��v�a���֢�SR�.�ꩲWC�2+}{ʞ���f�k\��k��!1��|y��O�����zCM���T��Mx?��{��n�B��B��fg:�※1[P�ҕ��eXl��H��o����GA��5f����bBEܳ��.p�w�Ox�����c�9�����R*��۞H�o�s���{      <   �  x���K��8�����iU)����d3I`�1I6[{�`��Ld)����0`p2��*?K��w�mj�<]���LdB�f�h<��m�F�6'��J���@�L�,��j]����)�l�[=����F
��GZМ��ef�]�9��)f��)��{��no�e�h�H��$(.A�Z,0Kp���+�mG�������a�DK8�L�G�l���k�����8������凿u����g�ǅ�r.$���Hq��3�$k\��)�H���b�ʈ-�5��[��䫤�i7�q�.���s���㦩�"��%\Q�����R}j`���qe��	j&���`�(�7�t��6��3��xv7�=��ć�s����6�8EQ)a]�/(�$�*%8=�8�Y���^%LO�6�M_�=�rj�iA�����}�� ���IB1zM�7�(q�tܥ=�x��%���Ͱ��=\��[��e�B��r��UnW@,m�h��@,G���%N(����YMv�
�e�z�r���V��r;�����҃~��(P۠� �\��˙vBI�E��N�)v�M�5Ny��XBu��s��B���k�V�Ͷ���j�� �Md%(�C�k�]lS�k+��d|����T��Y�����<z'�Y�P������`����V� �XpZ	��FW��Ŵ�b�}�*X�]Z�pD��@m�L��cw���o�b�8��y��l�І'Z���R]A�k/����N���LbiB�TB��f����	��/�s������!m��u���]K{y�0�TI�qF��Vm�k�Ƭ�i�;*�V��}!k*�z*P�,s}P,@�AK�R�bwo�0?q������/R[D�gh�<��j���U�h�B�[�g�D���gud�w��}�<Ir����7 �&U]�M���s�$׋���I>z�W�+7^�D�#U�K�5��aӤ�~�	兊���x��a�=fK	a[���&刺�����fG�i�[�YV�?W���w[�W�f7��o�>�5����Uë;��&�7�F�EZ��m@�m���1���~p�,j�˔�(0���P��[��⤖�gm{��l���U5���Z5C���pA�h��*p�)��a4GI�O��MK] �d���5�r"��� US��t��\�y}d�Q����3������th��n��u�1�3*t����i
�˫9�xm6��^�i:�2�������(T�:YM�BG�Kr�CLF���QP� S�~�a����\]e�z(xڌ�h�b0��t�x[�}�kuh3^�*B��&�C4{�3�0TE�y�i��_�M��>Q�P4Za�YV�+V�|7k��|NRӰ��O㍉�	=�F��lLùJ��ݜ�v�6�i�e�B�et�"0aٜ(�i�]p�lAع?B��i�i
������/��      >   "   x�3����u�t�2�B�,cN_ ���� u~�      @   *  x����N�0�uy�����D%�h3��{JR`&����Q�l0�X�/�
VN
�%�N�2}M�IP�prLd~(�����T�A�I�e��h��tݛ��Y{�V�����4�`�d�	Xٟ����'�f"ࡸ �ّ�BV�i	��Hp�����R�����Z����-j�8��2�Zn"���l;�ߕ;�~2�������yry�s���?h�$n����­-!՟!��j��[��0<�׈�՛��޸y5����`M�嵍£��F�h_5�ͧ�?��o<��٬�P      B   *  x��XMs�0=[�§N{)�?d�Hf�L�� ��Ћb�)�T����Wp��]_�J�ݧ���]J+�y�U�)����*u��ҟ�V��z�[�����:�����-�f[Ye�{]�"'�76V?�L�u;�ZfO� �JI��!�&��\��?-��xs+�\.��O$9	�Q��0N"�����ܯ3�eadf]z��tt����t��,��2[�]�����k�˕ڨ��^x���>Kw�$_���qž/���J��Si��W�k߭)2��]�(�\����]��	z����4^�] �!(~�O�+��#�۱�g�lu�Ƙb؋�!eh�h�Mv�o�.����CK[��;Z]QYe�}%T��7������r�.����;��!��!��!��!鰇�'������R���$��qq�����ץ�ښ�Q/g?�<��$��O�X�H����D���i��D)�d�.Y FR�oOL�ݱ��'���=��$q7)'/[e�81��l�bcB���a:�s�F�3�(SAa�%!r�$�yʼ�֩�8�$	�I�MГtF	�S��r8N���z��'󅅸��"�G �蟚Dgl�,�k9�V����d�� �m�כ��o$�)����h����Ѱ��7pڷ4A���ݨϊ�b?�Rm%��<@*,�S�a��W�U�)�0�n�1�1ādn
 G�wC�OG�pY�u�.H�裧=Z��G��z,1@���b �b����;D�����:�(���>6bO(�4��|�	�l� ��48��6h U_ �2��?%~'��/��      D   �  x���[s�8��ͯ�Ǥ*�ڐ�	$llv.�/��H�,�q~���$3[le�RE�X����
��M�b��b�T���P'���(�7/�h��k�x�(_POΔ^����-�9_pi���b"�{�
c5]q��F����%L���YilF�Ya4�6�.�0T	ϩ�c����fW��!-Y�h�I\��~�9�W장^�o4?��F�[z3��q��'�#
n��v��ѵHX��EuDP?�a�ߋ��N��ɗ��Ɩ�G��І,�2�l������l�q���n���3=M)֜SQ.\��k1s������BW�i�����
���\�ݻ� D�"�}V؂F1�l�P$�$J�(��������<�q(q
�C0i��W����u����z�%Á�+�ܙYanzC�������G�6���q�=�j ���VY�Z�B�S�Y����S��N�8���TAVs��o`�g����m�F��|n%��do��u��4�0��Rr?h��:d6A��E4�{8�#R�d���+H׎���9r��fi��Ή��-����4�;�T�a����Z���ӄ�^������S���Vr&�>ͼlc�*�aU�,�(��2�t�^�����A~o�K�m<��|m�\,�"�m��Ye�^�W��QH(�2c��:�w�&��΋�/4U���/6`0@�5ʠ���|w���Cں�a�	���j�j�����S	���������6����y&U��╟j&�k�箨�����b�D���똻�����>[��@�(D�%{�EΜ�Ց�Tۜ���$݄���j
��!ˢjk��q d��B;��$�+a̋�{2�e�71����~�og7<�K��{���D��3o!ό~�ek�[��a�C>�b�?=�@��w��G-�'���[j���Jj�ł�[[��V��/��-��*(�o�Z��!��(�k��<�>Z���������|iҥk�Ac��)*���
�`uϺfz^]1������5HWY��
�y|�V9u��c	����lm��ӑ��^��%nj�|�E}{�en�t���*!��m���LT�g��z��3����β@�k�����Emj1�Jp.�`��~Jp��b�񡭜�w3�XC�s�����h>�yTd���j�����y      F   �  x���os�8�_۟b_�3ǿ��	�B�	���ܛ��Ʋ��9���ʐ G�Go:̀<���o�g���%J4���V��$�u��iu�ތ�R�0RKmr,ȻY��<���o�@(T�X�*�:p+��(��ܒ��)�ObQP) ��`���ޒ���Q����Q�i~�Io@�(��%o��ыEA�P}�Yc���'�l���8�$-!��*ܟ�~���y�}��]u۝����%q�S�1e�c�Z����˶7��R'���(_I�U������;�A�y̹��*m[`c�b�c���
d6�6�+�[��^i�����ŃY�+���]
޽F��0OI%'��TD�\lOV"dȁ��XnT����2<MÈ�V1��`����=Bx�w�Ц���|2�ΒXA�r�E�v:j����wBw���������v�a*�q��W%Bj��%���@g��(S.�!�0ƅ]a)�\dX��<�j���^�+��2���wq�@����F�C|�ab��L����U�}�=��:m�[�J�e�Ʃ׺|�h�꘭���~�NH*f��r��F�a��6q��� ���'g��X~)�v���X>u�%eB�H�Ne+�����l��Q�Ք'���ʢaT\=˳�|;5�\D[g���g�!����	7Fr�l1V�;�v��9fu�*�V�X����z,rן�>=�^���H�W�~��V�T�D��@j�����g���D.���Z��t���Q����A���ˡҎ�z����6~�_��Q=��&�4�-oK�����[��9�h��{��{&:�|M��'B��XH\����K��HW���s!�R�`l9�mO��n��,'Hk}�D�	�g"�&��t�M]�]9�cgp_�����1��6�V��0+��ĉt�m��9Ŭ���t��u�3��6�˝:&X�F�r�{o3�^��:cw{��ЯE�XU:e�s�5Nc4�q'q���m�#4,1����n�.����쎀�ּqs#��2ae���i"���Ii�R�F�BN�ǌj��}v[���|"�
1�����׻�a��bl��Y��[b.���aŝ�#Q��ģH�6�
Y�>���#O޶萸�(���T��Y���'"��Ո�+}�V~�wݶ�jzCr�!�kL����[�7�}J�?�ttKx��Q��%tG�m�xАB�ହm�51�/�B�/<�%�N�����}�����      H   �  x���]S�H�����*�D������0�������iH���t�u�߷A�֩ek��h�t:�s�{N<gh��υ&�B�r��׮y.�y��\�u�,S)�©��Ɓ�xu�sO]�馋��\j��^�N��W�BŮx�r<)�g��p��$ٻW�Hmbv�ZQ����#`��<a���Dl7���O����A\R�@ܿP��tK�i��OM���I�!�Қ�o[���m6�^��}����|z���ş4[�>uN�����Y�h^^'5�񜁉(���J�{'B*Hﳠ�W���A��3;'(sO���5O��}�5�	b~(��-v�q�(�F5�=ICʮ2˄^�⶚�V��n�n�9ة;�^��K��'� �3�k-�y�Ffn�2��\��j�5�f@S8�i�F�s�VB�Uh"�Jd
ْ��ߌP%s6\!I'T�{�t6 I�6��9�l7�G�Qnr6��&[�0��Ilw�U�U�Wfhڬ��M�uǗ8.�e�J��%��{�����Z��X-�8���"&��$8��Q?UL�Ѩ�����HpR솢�J�aXԂ�:�#�m81���|	�c�AM�I=U��t�@���F�B�P�9%E�9��b�ld�:XqP%�l�,�� -H��{l��F��Fb�U���f�B�-p��$���m�k8�4�u9 "��
��8����p�������:�����#eK 㨋P�V_�a���A��'	
��ok�N�R�]�9d��Q��c��;�wf:�y�����^��|��سL�����ȋ3�K���J��E�.)֙*s����9��@
;�5��D�K�T�{��EM���x�t�,�cO(�G��+o�/�v齹�AFN��o'9��2n�:�c�l.s�YR�zFIam}��f��m�]gi�ǲs����p���4۪�6�#�K�:vm����w&��/��WО ���]��f��o �^DrZ5�qb�r�=�Z�����������_�����.�Մ���w�r��ؑ�&�Ç|6���a��П4@+�AFG�g[��݂�'ι���Sk��(fK���H�H�5�[�7��/>@��r�:Z�c#�ѫ-�6@ �F0�EW�L}�]LQa�➵���k����f�Q5CF�!rY0V�m5�6д�(;�'9��i�ּ�����q���uY��	��n��5<�uQm�u�{6(T�[������{6�B�;��dPai\(��P��}<���&�0�CIUi[u���ٔ��ڞ�y.��� �HP��c�5`��F�j���Iȓy9�m����ʾP1<�Y��Q�G�ui
 L9���lY}η�{۹��]$H.�zd�˫/�������o+�Ip*�-�����;i���K�8��v ���-�I1�������G�Y�O?o!����no�#c|�3xl.d�p��d���=�?E��X�y6�e��l�,<wC�yc���k~����@Ѓ��j;;;� �=I�      J   :  x���[w�6���_qg��!�G!&L �NW_X`�F�������2�&�隗 ���w��:/�JV40�Dq�^�y��~ӿhz#�(�Ꙥ��j3�LzM�y\�/j�S���}�3�Ռ�rFR��(ӊS���S������w
��ͬ�+�"ב�a��r9���/Ҁ#�G1�d.(�����l�{m�1��{�+��m�*b#�а>���~�fu�m��~��4u1�����3��vlO��^_�iAwI�ϒ)��|�ݨ�,����W�cK2S�:��Y��Dn��T���ژ�s����FO%k���׸\��So����{p/<��0��|���P�ܱ��ݢR,5���ۄVK�8��z�
�,A�l$#�ndd�B+�Ј�*�LtA-a�X%�F�DNwS�Rͼ��qp��.�pح�񓑊�ָ�#�R��V�|
���6�7���*�<3��?�B��mæt�S�^�bŸ�_`|\�x#��[��A��U?c�+ ���}��Hu������N�R�Hr(��c��\8�s�pV��Gʥ�c�\(�6��D`*S���n�y?YY6�x�f�[�WY���XPE��}�p��)��YN���]�-M����Shډw�▨�x1�I�ڠ�
ڂ�6ei��񁲜z��Ჸ�J�ǁ�� �-�Q��mwJV��D�bB�(GVp�_��f�a��{4)m���R7���Y8�܋�F���3!��8���1�h/����Lb�!��[���2@�fSgJ(.G��N�˨�{F��r��ɗc�����@��{Y��n��R�=<�e�򻘻v[�	��B���l��וm
m��l!&���)�f�ci���*�WD�2�"��B���䴪J�%]�v�zި�
���M��w]��%��;��;v�v�����S��bs@0t��K���.��.���T^�K�L���������+I��{+J}�ςZ\���j} YN}!g�X�RkC�p(	y #�|\`buK�
QPp"s�F'�c���8��G;��mAe�r�K��N�qv~ �Ie�*fM�U�L�ʝV�D����j�'x�ur�z��RO@�f�{ʾ�;7( }uM��>[Zc���hL�r6�����֢"4jG�^G�����8F�t���څ|qr�~���Yjl�u�Fb��S�
-%2 �L�b	!ğҧ�}~���]J�|y�H�U�V[A����V�;L�v�� ��+A�������l���m��A�����[9^����X�כy�������PV觅��u9�����7E�L8X Go"`�N�*�֏���W�~=      L   5   x�3��,.I�U��K�/�M,��2�I�����O�D5愲K2��b���� n��      N   #   x�3�t�,N-)�*��2��LI�V@���qqq ʭ
�      P   ^   x�3��/H-J,�/B0��.#���ܤL(�"��9���L�ЄL�&f$g�'r�pfd��i���i�@�)gIf>����q��qqq ��#�     