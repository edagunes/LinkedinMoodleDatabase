PGDMP                         z            LinkedinMoodle    14.1    14.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17470    LinkedinMoodle    DATABASE     m   CREATE DATABASE "LinkedinMoodle" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Turkish_Turkey.1254';
     DROP DATABASE "LinkedinMoodle";
                postgres    false            �            1259    17598    assignment_    TABLE     �   CREATE TABLE public.assignment_ (
    assign_id character(6) NOT NULL,
    course_id character(6) NOT NULL,
    assign_name character varying(10) NOT NULL,
    ins_ssn character(9) NOT NULL
);
    DROP TABLE public.assignment_;
       public         heap    postgres    false            �            1259    17678    comment_    TABLE     �   CREATE TABLE public.comment_ (
    user_id character(9) NOT NULL,
    post_id character(6) NOT NULL,
    contents character varying(50) NOT NULL
);
    DROP TABLE public.comment_;
       public         heap    postgres    false            �            1259    17488    company    TABLE     �   CREATE TABLE public.company (
    comp_id character(9) NOT NULL,
    emp_count integer,
    comp_name character varying(50) NOT NULL,
    sector character varying(50) NOT NULL,
    user_id character(9) NOT NULL
);
    DROP TABLE public.company;
       public         heap    postgres    false            �            1259    17648    connect_    TABLE     s   CREATE TABLE public.connect_ (
    following_ssn character(9) NOT NULL,
    followers_ssn character(9) NOT NULL
);
    DROP TABLE public.connect_;
       public         heap    postgres    false            �            1259    17557    course    TABLE     �   CREATE TABLE public.course (
    course_id character(5) NOT NULL,
    course_name character varying(20) NOT NULL,
    student_count integer,
    term character varying(10) NOT NULL,
    dept_id character(5) NOT NULL,
    ins_ssn character(9) NOT NULL
);
    DROP TABLE public.course;
       public         heap    postgres    false            �            1259    17522 
   department    TABLE     �   CREATE TABLE public.department (
    dept_id character(5) NOT NULL,
    dept_name character varying(20) NOT NULL,
    uni_id character(5) NOT NULL
);
    DROP TABLE public.department;
       public         heap    postgres    false            �            1259    17552    employee    TABLE     r   CREATE TABLE public.employee (
    ssn character(9) NOT NULL,
    graduated_uni character varying(20) NOT NULL
);
    DROP TABLE public.employee;
       public         heap    postgres    false            �            1259    17783    employee_job    TABLE     �   CREATE TABLE public.employee_job (
    employee_ssn character(9) NOT NULL,
    job_id character(6) NOT NULL,
    comp_id character(6) NOT NULL,
    isaccept boolean NOT NULL
);
     DROP TABLE public.employee_job;
       public         heap    postgres    false            �            1259    17572    group_    TABLE     �   CREATE TABLE public.group_ (
    group_id character(6) NOT NULL,
    group_name character varying(20) NOT NULL,
    mem_count integer,
    owner_id character(9) NOT NULL
);
    DROP TABLE public.group_;
       public         heap    postgres    false            �            1259    17803 
   has_exp_on    TABLE     �   CREATE TABLE public.has_exp_on (
    employee_ssn character(9) NOT NULL,
    comp_id character(6) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    roles character varying(50) NOT NULL
);
    DROP TABLE public.has_exp_on;
       public         heap    postgres    false            �            1259    17532 
   instructor    TABLE     �   CREATE TABLE public.instructor (
    ssn character(9) NOT NULL,
    ins_type character varying(20) NOT NULL,
    dept_id character(5)
);
    DROP TABLE public.instructor;
       public         heap    postgres    false            �            1259    17512    job    TABLE       CREATE TABLE public.job (
    job_id character(5) NOT NULL,
    comp_id character(9) NOT NULL,
    position_name character varying(50) NOT NULL,
    working_type character varying(50) NOT NULL,
    advert_date date NOT NULL,
    job_location character varying(50) NOT NULL
);
    DROP TABLE public.job;
       public         heap    postgres    false            �            1259    17693    like_    TABLE     d   CREATE TABLE public.like_ (
    user_id character(9) NOT NULL,
    post_id character(6) NOT NULL
);
    DROP TABLE public.like_;
       public         heap    postgres    false            �            1259    17718    member_endorse_skill    TABLE     �   CREATE TABLE public.member_endorse_skill (
    member_ssn character(9) NOT NULL,
    skill_id character(3) NOT NULL,
    endorsed_by character(9) NOT NULL
);
 (   DROP TABLE public.member_endorse_skill;
       public         heap    postgres    false            �            1259    17708    member_language    TABLE     |   CREATE TABLE public.member_language (
    member_ssn character(9) NOT NULL,
    languages character varying(15) NOT NULL
);
 #   DROP TABLE public.member_language;
       public         heap    postgres    false            �            1259    17478    members    TABLE        CREATE TABLE public.members (
    ssn character(9) NOT NULL,
    birth_date date NOT NULL,
    sex character(1) NOT NULL,
    fname character varying(50) NOT NULL,
    lname character varying(50) NOT NULL,
    user_id character(9) NOT NULL,
    mem_type character varying(10) NOT NULL
);
    DROP TABLE public.members;
       public         heap    postgres    false            �            1259    17618    message    TABLE     �   CREATE TABLE public.message (
    sender_ssn character(9) NOT NULL,
    receiver_ssn character(9) NOT NULL,
    context character varying(100) NOT NULL,
    message_date date NOT NULL
);
    DROP TABLE public.message;
       public         heap    postgres    false            �            1259    17582    post    TABLE     �   CREATE TABLE public.post (
    post_id character(6) NOT NULL,
    post_date date NOT NULL,
    like_count integer DEFAULT 0,
    group_id character(6),
    user_id character(9) NOT NULL
);
    DROP TABLE public.post;
       public         heap    postgres    false            �            1259    17613    skill    TABLE     q   CREATE TABLE public.skill (
    skill_id character(3) NOT NULL,
    skill_name character varying(20) NOT NULL
);
    DROP TABLE public.skill;
       public         heap    postgres    false            �            1259    17542    student    TABLE     �   CREATE TABLE public.student (
    ssn character(9) NOT NULL,
    cpga double precision NOT NULL,
    start_year integer NOT NULL,
    dept_id character(5)
);
    DROP TABLE public.student;
       public         heap    postgres    false            �            1259    17733    student_assignment    TABLE     �   CREATE TABLE public.student_assignment (
    student_ssn character(9) NOT NULL,
    assign_id character(6) NOT NULL,
    course_id character(6) NOT NULL,
    grade integer NOT NULL
);
 &   DROP TABLE public.student_assignment;
       public         heap    postgres    false            �            1259    17748    student_course    TABLE     s   CREATE TABLE public.student_course (
    student_ssn character(9) NOT NULL,
    course_id character(6) NOT NULL
);
 "   DROP TABLE public.student_course;
       public         heap    postgres    false            �            1259    17763    student_job    TABLE     �   CREATE TABLE public.student_job (
    student_ssn character(9) NOT NULL,
    job_id character(6) NOT NULL,
    comp_id character(6) NOT NULL
);
    DROP TABLE public.student_job;
       public         heap    postgres    false            �            1259    17500 
   university    TABLE     �   CREATE TABLE public.university (
    uni_id character(5) NOT NULL,
    uni_name character varying(50) NOT NULL,
    location_name character varying(50) NOT NULL,
    user_id character(9) NOT NULL
);
    DROP TABLE public.university;
       public         heap    postgres    false            �            1259    17663 
   user_group    TABLE     �   CREATE TABLE public.user_group (
    user_id character(9) NOT NULL,
    group_id character(6) NOT NULL,
    ismanager boolean NOT NULL
);
    DROP TABLE public.user_group;
       public         heap    postgres    false            �            1259    17471    users    TABLE     �   CREATE TABLE public.users (
    user_id character(9) NOT NULL,
    address character varying(30) NOT NULL,
    e_mail character varying(50) NOT NULL,
    username character varying(20) NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    17633    view_profile    TABLE     s   CREATE TABLE public.view_profile (
    viewers_ssn character(9) NOT NULL,
    viewing_ssn character(9) NOT NULL
);
     DROP TABLE public.view_profile;
       public         heap    postgres    false            �          0    17598    assignment_ 
   TABLE DATA           Q   COPY public.assignment_ (assign_id, course_id, assign_name, ins_ssn) FROM stdin;
    public          postgres    false    221   �       �          0    17678    comment_ 
   TABLE DATA           >   COPY public.comment_ (user_id, post_id, contents) FROM stdin;
    public          postgres    false    227   ��       �          0    17488    company 
   TABLE DATA           Q   COPY public.company (comp_id, emp_count, comp_name, sector, user_id) FROM stdin;
    public          postgres    false    211   l�       �          0    17648    connect_ 
   TABLE DATA           @   COPY public.connect_ (following_ssn, followers_ssn) FROM stdin;
    public          postgres    false    225   (�       �          0    17557    course 
   TABLE DATA           _   COPY public.course (course_id, course_name, student_count, term, dept_id, ins_ssn) FROM stdin;
    public          postgres    false    218   ��       �          0    17522 
   department 
   TABLE DATA           @   COPY public.department (dept_id, dept_name, uni_id) FROM stdin;
    public          postgres    false    214   =�       �          0    17552    employee 
   TABLE DATA           6   COPY public.employee (ssn, graduated_uni) FROM stdin;
    public          postgres    false    217   è       �          0    17783    employee_job 
   TABLE DATA           O   COPY public.employee_job (employee_ssn, job_id, comp_id, isaccept) FROM stdin;
    public          postgres    false    234   %�       �          0    17572    group_ 
   TABLE DATA           K   COPY public.group_ (group_id, group_name, mem_count, owner_id) FROM stdin;
    public          postgres    false    219   {�       �          0    17803 
   has_exp_on 
   TABLE DATA           X   COPY public.has_exp_on (employee_ssn, comp_id, start_date, end_date, roles) FROM stdin;
    public          postgres    false    235   �       �          0    17532 
   instructor 
   TABLE DATA           <   COPY public.instructor (ssn, ins_type, dept_id) FROM stdin;
    public          postgres    false    215   ��       �          0    17512    job 
   TABLE DATA           f   COPY public.job (job_id, comp_id, position_name, working_type, advert_date, job_location) FROM stdin;
    public          postgres    false    213   ^�       �          0    17693    like_ 
   TABLE DATA           1   COPY public.like_ (user_id, post_id) FROM stdin;
    public          postgres    false    228   ��       �          0    17718    member_endorse_skill 
   TABLE DATA           Q   COPY public.member_endorse_skill (member_ssn, skill_id, endorsed_by) FROM stdin;
    public          postgres    false    230   ��       �          0    17708    member_language 
   TABLE DATA           @   COPY public.member_language (member_ssn, languages) FROM stdin;
    public          postgres    false    229   }�       �          0    17478    members 
   TABLE DATA           X   COPY public.members (ssn, birth_date, sex, fname, lname, user_id, mem_type) FROM stdin;
    public          postgres    false    210   ��       �          0    17618    message 
   TABLE DATA           R   COPY public.message (sender_ssn, receiver_ssn, context, message_date) FROM stdin;
    public          postgres    false    223   �       �          0    17582    post 
   TABLE DATA           Q   COPY public.post (post_id, post_date, like_count, group_id, user_id) FROM stdin;
    public          postgres    false    220   Ͱ       �          0    17613    skill 
   TABLE DATA           5   COPY public.skill (skill_id, skill_name) FROM stdin;
    public          postgres    false    222   .�       �          0    17542    student 
   TABLE DATA           A   COPY public.student (ssn, cpga, start_year, dept_id) FROM stdin;
    public          postgres    false    216   ��       �          0    17733    student_assignment 
   TABLE DATA           V   COPY public.student_assignment (student_ssn, assign_id, course_id, grade) FROM stdin;
    public          postgres    false    231   <�       �          0    17748    student_course 
   TABLE DATA           @   COPY public.student_course (student_ssn, course_id) FROM stdin;
    public          postgres    false    232   ��       �          0    17763    student_job 
   TABLE DATA           C   COPY public.student_job (student_ssn, job_id, comp_id) FROM stdin;
    public          postgres    false    233   �       �          0    17500 
   university 
   TABLE DATA           N   COPY public.university (uni_id, uni_name, location_name, user_id) FROM stdin;
    public          postgres    false    212   k�       �          0    17663 
   user_group 
   TABLE DATA           B   COPY public.user_group (user_id, group_id, ismanager) FROM stdin;
    public          postgres    false    226   г       �          0    17471    users 
   TABLE DATA           C   COPY public.users (user_id, address, e_mail, username) FROM stdin;
    public          postgres    false    209   2�       �          0    17633    view_profile 
   TABLE DATA           @   COPY public.view_profile (viewers_ssn, viewing_ssn) FROM stdin;
    public          postgres    false    224   ~�       �           2606    17602    assignment_ assignment__pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.assignment_
    ADD CONSTRAINT assignment__pkey PRIMARY KEY (assign_id, course_id);
 F   ALTER TABLE ONLY public.assignment_ DROP CONSTRAINT assignment__pkey;
       public            postgres    false    221    221            �           2606    17682    comment_ comment__pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.comment_
    ADD CONSTRAINT comment__pkey PRIMARY KEY (user_id, post_id);
 @   ALTER TABLE ONLY public.comment_ DROP CONSTRAINT comment__pkey;
       public            postgres    false    227    227            �           2606    17494    company company_comp_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_comp_name_key UNIQUE (comp_name);
 G   ALTER TABLE ONLY public.company DROP CONSTRAINT company_comp_name_key;
       public            postgres    false    211            �           2606    17492    company company_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (comp_id);
 >   ALTER TABLE ONLY public.company DROP CONSTRAINT company_pkey;
       public            postgres    false    211            �           2606    17652    connect_ connect__pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.connect_
    ADD CONSTRAINT connect__pkey PRIMARY KEY (following_ssn, followers_ssn);
 @   ALTER TABLE ONLY public.connect_ DROP CONSTRAINT connect__pkey;
       public            postgres    false    225    225            �           2606    17561    course course_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_pkey PRIMARY KEY (course_id);
 <   ALTER TABLE ONLY public.course DROP CONSTRAINT course_pkey;
       public            postgres    false    218            �           2606    17526    department department_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_pkey PRIMARY KEY (dept_id);
 D   ALTER TABLE ONLY public.department DROP CONSTRAINT department_pkey;
       public            postgres    false    214            �           2606    17787    employee_job employee_job_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.employee_job
    ADD CONSTRAINT employee_job_pkey PRIMARY KEY (employee_ssn, job_id, comp_id);
 H   ALTER TABLE ONLY public.employee_job DROP CONSTRAINT employee_job_pkey;
       public            postgres    false    234    234    234            �           2606    17556    employee employee_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (ssn);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public            postgres    false    217            �           2606    17576    group_ group__pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.group_
    ADD CONSTRAINT group__pkey PRIMARY KEY (group_id);
 <   ALTER TABLE ONLY public.group_ DROP CONSTRAINT group__pkey;
       public            postgres    false    219            �           2606    17807    has_exp_on has_exp_on_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.has_exp_on
    ADD CONSTRAINT has_exp_on_pkey PRIMARY KEY (employee_ssn, comp_id);
 D   ALTER TABLE ONLY public.has_exp_on DROP CONSTRAINT has_exp_on_pkey;
       public            postgres    false    235    235            �           2606    17536    instructor instructor_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT instructor_pkey PRIMARY KEY (ssn);
 D   ALTER TABLE ONLY public.instructor DROP CONSTRAINT instructor_pkey;
       public            postgres    false    215            �           2606    17516    job job_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.job
    ADD CONSTRAINT job_pkey PRIMARY KEY (job_id);
 6   ALTER TABLE ONLY public.job DROP CONSTRAINT job_pkey;
       public            postgres    false    213            �           2606    17697    like_ like__pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.like_
    ADD CONSTRAINT like__pkey PRIMARY KEY (user_id, post_id);
 :   ALTER TABLE ONLY public.like_ DROP CONSTRAINT like__pkey;
       public            postgres    false    228    228            �           2606    17722 .   member_endorse_skill member_endorse_skill_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.member_endorse_skill
    ADD CONSTRAINT member_endorse_skill_pkey PRIMARY KEY (member_ssn, skill_id, endorsed_by);
 X   ALTER TABLE ONLY public.member_endorse_skill DROP CONSTRAINT member_endorse_skill_pkey;
       public            postgres    false    230    230    230            �           2606    17712 $   member_language member_language_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.member_language
    ADD CONSTRAINT member_language_pkey PRIMARY KEY (member_ssn, languages);
 N   ALTER TABLE ONLY public.member_language DROP CONSTRAINT member_language_pkey;
       public            postgres    false    229    229            �           2606    17482    members members_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (ssn);
 >   ALTER TABLE ONLY public.members DROP CONSTRAINT members_pkey;
       public            postgres    false    210            �           2606    17622    message message_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_pkey PRIMARY KEY (sender_ssn, receiver_ssn);
 >   ALTER TABLE ONLY public.message DROP CONSTRAINT message_pkey;
       public            postgres    false    223    223            �           2606    17587    post post_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (post_id);
 8   ALTER TABLE ONLY public.post DROP CONSTRAINT post_pkey;
       public            postgres    false    220            �           2606    17617    skill skill_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.skill
    ADD CONSTRAINT skill_pkey PRIMARY KEY (skill_id);
 :   ALTER TABLE ONLY public.skill DROP CONSTRAINT skill_pkey;
       public            postgres    false    222            �           2606    17737 *   student_assignment student_assignment_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.student_assignment
    ADD CONSTRAINT student_assignment_pkey PRIMARY KEY (student_ssn, assign_id, course_id);
 T   ALTER TABLE ONLY public.student_assignment DROP CONSTRAINT student_assignment_pkey;
       public            postgres    false    231    231    231            �           2606    17752 "   student_course student_course_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.student_course
    ADD CONSTRAINT student_course_pkey PRIMARY KEY (student_ssn, course_id);
 L   ALTER TABLE ONLY public.student_course DROP CONSTRAINT student_course_pkey;
       public            postgres    false    232    232            �           2606    17767    student_job student_job_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.student_job
    ADD CONSTRAINT student_job_pkey PRIMARY KEY (student_ssn, job_id, comp_id);
 F   ALTER TABLE ONLY public.student_job DROP CONSTRAINT student_job_pkey;
       public            postgres    false    233    233    233            �           2606    17546    student student_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (ssn);
 >   ALTER TABLE ONLY public.student DROP CONSTRAINT student_pkey;
       public            postgres    false    216            �           2606    17504    university university_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.university
    ADD CONSTRAINT university_pkey PRIMARY KEY (uni_id);
 D   ALTER TABLE ONLY public.university DROP CONSTRAINT university_pkey;
       public            postgres    false    212            �           2606    17506 "   university university_uni_name_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.university
    ADD CONSTRAINT university_uni_name_key UNIQUE (uni_name);
 L   ALTER TABLE ONLY public.university DROP CONSTRAINT university_uni_name_key;
       public            postgres    false    212            �           2606    17667    user_group user_group_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.user_group
    ADD CONSTRAINT user_group_pkey PRIMARY KEY (user_id, group_id);
 D   ALTER TABLE ONLY public.user_group DROP CONSTRAINT user_group_pkey;
       public            postgres    false    226    226            �           2606    17477    users users_e_mail_username_key 
   CONSTRAINT     f   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_e_mail_username_key UNIQUE (e_mail, username);
 I   ALTER TABLE ONLY public.users DROP CONSTRAINT users_e_mail_username_key;
       public            postgres    false    209    209            �           2606    17475    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    209            �           2606    17637    view_profile view_profile_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.view_profile
    ADD CONSTRAINT view_profile_pkey PRIMARY KEY (viewers_ssn, viewing_ssn);
 H   ALTER TABLE ONLY public.view_profile DROP CONSTRAINT view_profile_pkey;
       public            postgres    false    224    224                       2606    17603 &   assignment_ assignment__course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.assignment_
    ADD CONSTRAINT assignment__course_id_fkey FOREIGN KEY (course_id) REFERENCES public.course(course_id);
 P   ALTER TABLE ONLY public.assignment_ DROP CONSTRAINT assignment__course_id_fkey;
       public          postgres    false    221    218    3293                       2606    17608 $   assignment_ assignment__ins_ssn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.assignment_
    ADD CONSTRAINT assignment__ins_ssn_fkey FOREIGN KEY (ins_ssn) REFERENCES public.instructor(ssn);
 N   ALTER TABLE ONLY public.assignment_ DROP CONSTRAINT assignment__ins_ssn_fkey;
       public          postgres    false    221    215    3287                       2606    17688    comment_ comment__post_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment_
    ADD CONSTRAINT comment__post_id_fkey FOREIGN KEY (post_id) REFERENCES public.post(post_id);
 H   ALTER TABLE ONLY public.comment_ DROP CONSTRAINT comment__post_id_fkey;
       public          postgres    false    227    220    3297                       2606    17683    comment_ comment__user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.comment_
    ADD CONSTRAINT comment__user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 H   ALTER TABLE ONLY public.comment_ DROP CONSTRAINT comment__user_id_fkey;
       public          postgres    false    227    3271    209                       2606    17495    company company_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 F   ALTER TABLE ONLY public.company DROP CONSTRAINT company_user_id_fkey;
       public          postgres    false    211    3271    209                       2606    17658 $   connect_ connect__followers_ssn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.connect_
    ADD CONSTRAINT connect__followers_ssn_fkey FOREIGN KEY (followers_ssn) REFERENCES public.members(ssn);
 N   ALTER TABLE ONLY public.connect_ DROP CONSTRAINT connect__followers_ssn_fkey;
       public          postgres    false    210    3273    225                       2606    17653 $   connect_ connect__following_ssn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.connect_
    ADD CONSTRAINT connect__following_ssn_fkey FOREIGN KEY (following_ssn) REFERENCES public.members(ssn);
 N   ALTER TABLE ONLY public.connect_ DROP CONSTRAINT connect__following_ssn_fkey;
       public          postgres    false    210    3273    225                       2606    17562    course course_dept_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_dept_id_fkey FOREIGN KEY (dept_id) REFERENCES public.department(dept_id);
 D   ALTER TABLE ONLY public.course DROP CONSTRAINT course_dept_id_fkey;
       public          postgres    false    214    218    3285                       2606    17567    course course_ins_ssn_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_ins_ssn_fkey FOREIGN KEY (ins_ssn) REFERENCES public.instructor(ssn);
 D   ALTER TABLE ONLY public.course DROP CONSTRAINT course_ins_ssn_fkey;
       public          postgres    false    218    215    3287                       2606    17527 !   department department_uni_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.department
    ADD CONSTRAINT department_uni_id_fkey FOREIGN KEY (uni_id) REFERENCES public.university(uni_id);
 K   ALTER TABLE ONLY public.department DROP CONSTRAINT department_uni_id_fkey;
       public          postgres    false    212    214    3279            &           2606    17798 &   employee_job employee_job_comp_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_job
    ADD CONSTRAINT employee_job_comp_id_fkey FOREIGN KEY (comp_id) REFERENCES public.company(comp_id);
 P   ALTER TABLE ONLY public.employee_job DROP CONSTRAINT employee_job_comp_id_fkey;
       public          postgres    false    211    234    3277            $           2606    17788 +   employee_job employee_job_employee_ssn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_job
    ADD CONSTRAINT employee_job_employee_ssn_fkey FOREIGN KEY (employee_ssn) REFERENCES public.employee(ssn);
 U   ALTER TABLE ONLY public.employee_job DROP CONSTRAINT employee_job_employee_ssn_fkey;
       public          postgres    false    234    3291    217            %           2606    17793 %   employee_job employee_job_job_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_job
    ADD CONSTRAINT employee_job_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(job_id);
 O   ALTER TABLE ONLY public.employee_job DROP CONSTRAINT employee_job_job_id_fkey;
       public          postgres    false    234    3283    213            	           2606    17577    group_ group__owner_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.group_
    ADD CONSTRAINT group__owner_id_fkey FOREIGN KEY (owner_id) REFERENCES public.users(user_id);
 E   ALTER TABLE ONLY public.group_ DROP CONSTRAINT group__owner_id_fkey;
       public          postgres    false    3271    219    209            (           2606    17813 "   has_exp_on has_exp_on_comp_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.has_exp_on
    ADD CONSTRAINT has_exp_on_comp_id_fkey FOREIGN KEY (comp_id) REFERENCES public.company(comp_id);
 L   ALTER TABLE ONLY public.has_exp_on DROP CONSTRAINT has_exp_on_comp_id_fkey;
       public          postgres    false    211    3277    235            '           2606    17808 '   has_exp_on has_exp_on_employee_ssn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.has_exp_on
    ADD CONSTRAINT has_exp_on_employee_ssn_fkey FOREIGN KEY (employee_ssn) REFERENCES public.employee(ssn);
 Q   ALTER TABLE ONLY public.has_exp_on DROP CONSTRAINT has_exp_on_employee_ssn_fkey;
       public          postgres    false    217    235    3291                       2606    17537 "   instructor instructor_dept_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.instructor
    ADD CONSTRAINT instructor_dept_id_fkey FOREIGN KEY (dept_id) REFERENCES public.department(dept_id);
 L   ALTER TABLE ONLY public.instructor DROP CONSTRAINT instructor_dept_id_fkey;
       public          postgres    false    215    3285    214                       2606    17517    job job_comp_id_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.job
    ADD CONSTRAINT job_comp_id_fkey FOREIGN KEY (comp_id) REFERENCES public.company(comp_id);
 >   ALTER TABLE ONLY public.job DROP CONSTRAINT job_comp_id_fkey;
       public          postgres    false    213    3277    211                       2606    17703    like_ like__post_id_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY public.like_
    ADD CONSTRAINT like__post_id_fkey FOREIGN KEY (post_id) REFERENCES public.post(post_id);
 B   ALTER TABLE ONLY public.like_ DROP CONSTRAINT like__post_id_fkey;
       public          postgres    false    228    220    3297                       2606    17698    like_ like__user_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.like_
    ADD CONSTRAINT like__user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 B   ALTER TABLE ONLY public.like_ DROP CONSTRAINT like__user_id_fkey;
       public          postgres    false    228    209    3271                       2606    17723 9   member_endorse_skill member_endorse_skill_member_ssn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.member_endorse_skill
    ADD CONSTRAINT member_endorse_skill_member_ssn_fkey FOREIGN KEY (member_ssn) REFERENCES public.members(ssn);
 c   ALTER TABLE ONLY public.member_endorse_skill DROP CONSTRAINT member_endorse_skill_member_ssn_fkey;
       public          postgres    false    3273    210    230                       2606    17728 7   member_endorse_skill member_endorse_skill_skill_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.member_endorse_skill
    ADD CONSTRAINT member_endorse_skill_skill_id_fkey FOREIGN KEY (skill_id) REFERENCES public.skill(skill_id);
 a   ALTER TABLE ONLY public.member_endorse_skill DROP CONSTRAINT member_endorse_skill_skill_id_fkey;
       public          postgres    false    230    222    3301                       2606    17713 /   member_language member_language_member_ssn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.member_language
    ADD CONSTRAINT member_language_member_ssn_fkey FOREIGN KEY (member_ssn) REFERENCES public.members(ssn);
 Y   ALTER TABLE ONLY public.member_language DROP CONSTRAINT member_language_member_ssn_fkey;
       public          postgres    false    3273    229    210                        2606    17483    members members_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 F   ALTER TABLE ONLY public.members DROP CONSTRAINT members_user_id_fkey;
       public          postgres    false    209    3271    210                       2606    17628 !   message message_receiver_ssn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_receiver_ssn_fkey FOREIGN KEY (receiver_ssn) REFERENCES public.members(ssn);
 K   ALTER TABLE ONLY public.message DROP CONSTRAINT message_receiver_ssn_fkey;
       public          postgres    false    210    3273    223                       2606    17623    message message_sender_ssn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_sender_ssn_fkey FOREIGN KEY (sender_ssn) REFERENCES public.members(ssn);
 I   ALTER TABLE ONLY public.message DROP CONSTRAINT message_sender_ssn_fkey;
       public          postgres    false    3273    223    210            
           2606    17588    post post_group_id_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.group_(group_id);
 A   ALTER TABLE ONLY public.post DROP CONSTRAINT post_group_id_fkey;
       public          postgres    false    3295    219    220                       2606    17593    post post_user_id_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 @   ALTER TABLE ONLY public.post DROP CONSTRAINT post_user_id_fkey;
       public          postgres    false    3271    220    209                       2606    17738 >   student_assignment student_assignment_assign_id_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_assignment
    ADD CONSTRAINT student_assignment_assign_id_course_id_fkey FOREIGN KEY (assign_id, course_id) REFERENCES public.assignment_(assign_id, course_id);
 h   ALTER TABLE ONLY public.student_assignment DROP CONSTRAINT student_assignment_assign_id_course_id_fkey;
       public          postgres    false    231    231    221    221    3299                       2606    17743 6   student_assignment student_assignment_student_ssn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_assignment
    ADD CONSTRAINT student_assignment_student_ssn_fkey FOREIGN KEY (student_ssn) REFERENCES public.student(ssn);
 `   ALTER TABLE ONLY public.student_assignment DROP CONSTRAINT student_assignment_student_ssn_fkey;
       public          postgres    false    216    231    3289                        2606    17758 ,   student_course student_course_course_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_course
    ADD CONSTRAINT student_course_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.course(course_id);
 V   ALTER TABLE ONLY public.student_course DROP CONSTRAINT student_course_course_id_fkey;
       public          postgres    false    232    218    3293                       2606    17753 .   student_course student_course_student_ssn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_course
    ADD CONSTRAINT student_course_student_ssn_fkey FOREIGN KEY (student_ssn) REFERENCES public.student(ssn);
 X   ALTER TABLE ONLY public.student_course DROP CONSTRAINT student_course_student_ssn_fkey;
       public          postgres    false    232    3289    216                       2606    17547    student student_dept_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_dept_id_fkey FOREIGN KEY (dept_id) REFERENCES public.department(dept_id);
 F   ALTER TABLE ONLY public.student DROP CONSTRAINT student_dept_id_fkey;
       public          postgres    false    216    214    3285            #           2606    17778 $   student_job student_job_comp_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_job
    ADD CONSTRAINT student_job_comp_id_fkey FOREIGN KEY (comp_id) REFERENCES public.company(comp_id);
 N   ALTER TABLE ONLY public.student_job DROP CONSTRAINT student_job_comp_id_fkey;
       public          postgres    false    3277    211    233            "           2606    17773 #   student_job student_job_job_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_job
    ADD CONSTRAINT student_job_job_id_fkey FOREIGN KEY (job_id) REFERENCES public.job(job_id);
 M   ALTER TABLE ONLY public.student_job DROP CONSTRAINT student_job_job_id_fkey;
       public          postgres    false    233    3283    213            !           2606    17768 (   student_job student_job_student_ssn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_job
    ADD CONSTRAINT student_job_student_ssn_fkey FOREIGN KEY (student_ssn) REFERENCES public.student(ssn);
 R   ALTER TABLE ONLY public.student_job DROP CONSTRAINT student_job_student_ssn_fkey;
       public          postgres    false    3289    233    216                       2606    17507 "   university university_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.university
    ADD CONSTRAINT university_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 L   ALTER TABLE ONLY public.university DROP CONSTRAINT university_user_id_fkey;
       public          postgres    false    212    209    3271                       2606    17673 #   user_group user_group_group_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_group
    ADD CONSTRAINT user_group_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.group_(group_id);
 M   ALTER TABLE ONLY public.user_group DROP CONSTRAINT user_group_group_id_fkey;
       public          postgres    false    226    219    3295                       2606    17668 "   user_group user_group_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_group
    ADD CONSTRAINT user_group_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 L   ALTER TABLE ONLY public.user_group DROP CONSTRAINT user_group_user_id_fkey;
       public          postgres    false    209    226    3271                       2606    17638 *   view_profile view_profile_viewers_ssn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.view_profile
    ADD CONSTRAINT view_profile_viewers_ssn_fkey FOREIGN KEY (viewers_ssn) REFERENCES public.members(ssn);
 T   ALTER TABLE ONLY public.view_profile DROP CONSTRAINT view_profile_viewers_ssn_fkey;
       public          postgres    false    210    224    3273                       2606    17643 *   view_profile view_profile_viewing_ssn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.view_profile
    ADD CONSTRAINT view_profile_viewing_ssn_fkey FOREIGN KEY (viewing_ssn) REFERENCES public.members(ssn);
 T   ALTER TABLE ONLY public.view_profile DROP CONSTRAINT view_profile_viewing_ssn_fkey;
       public          postgres    false    3273    224    210            �   �   x�e�M�0��s�+rJ����nT�]����ז�L�</$d��(m��nbl��k;OP��2B�O�>_-)_
��nM��"4������L<SU��dt���z����#g�>�н��˻�j}���y���`�.n      �   �   x�]�;� Dk8'�.�Ϥr�2�<��A6�r��>]�b�؅ըx��nQ䑬N�d7R
q�4���\�38�1؝U�U�>���r���z`g�&�M���ߏƾ_�/�.��(���h�'"bXR2�)+���x7�j�t§~=��2�ȟ'��SF]      �   �   x�m�=�@�z������%�vV���U7,,مBo�8�d�J^1�7/�""M� �(2_hk�����|4�.[�jS����MO�S^��~�a1��`R�E�V�5�F+�5���)����-���j�t��\I׷�3�8�:����NM�J`���i���d��7����GJ      �   T   x�=˻A�X,� ��,{q�u�x�&��^�&E��Ԉt?ETMO�̳;V]�sH~���a.�C��Z��/�[v��Œ      �   �   x�]ϱ� ����>��^�"c��SW�P����2��E��a#_���D�pi�<���q����6���0���H1���S_�A���4hb?/���u2���`���榫��:!TQ�`�ڱ#)R��Թ�C0N��h�m�s��~G�SnG��l�C�      �   v   x�32400�t��-(-I-Rp�K��42 �qe�8���S�E�9}K2�L�`�1�Ȩ,�LF2â�,c�fD�aD���759#1/391�i���y)��%E��rF\1z\\\ �X9Q      �   R   x�30�4370�4�tMOU��,K-*�,I-��202554�45�t��N,JD��01031��{�J�[X��bJ��qqq �c"2      �   F   x�30�4370�4�44400T�� �����������,c�1R�L�2��066615˘Bd�Azb���� n�j      �   y   x�36 CN�ҌԼ����bN#N(0�2S��E�ř�ə9�E��py3��1gdbɑ�EG6�&٘�����Ą�5=U!4/S�7��4���F�*Cc�*S����,��Լ���<t�b���� SQ.�      �   �   x�u��N�@�k�S�����(
�A)(�М�A,��l#^?�s��A���b���A�E�eC��m�H��1K�@�<����OS?�!�Yk�^�B�B9@�lg�}�����g�c�O�}�q�9)��T@U@Dˬ���y�?t
�2��as�*�q?�6׉��D�)�2�T
���)v���.|V覅E@,��rE6�����X������a�_�vM���u؇>��-�/wB�3��lg      �   U   x�UȻ	�P �:F�)p �F������W^Q()E�����M��-�S�.a���U����s@��9o�T�G���/-��      �   7  x��ұn�0��<�_��g IGD5C�J�t��ZS�CU߾�i%�*�Y��Ͽ@`n��Ǟ��YY��뚓n�BB2����[_G��Ա����[s�F��'�K����믎�3Z���-޵���	gұɼI�yi�eޣHc��h�b{�er�Lw�����o�vd�I�ɣ�ϻN_{�Y�"�5���{�CU�R��s���"��Z�d[�����&�vڠ)��7�0R�;R[^x�.(r���Q`7K$A��m>zRv���(�0>+����wd5���\��v�y�I�7����wQ}b��w      �   G   x�30� CN0�e�*`0�� ��@�a�����&�hZ`�b�a0�!`��S�=... �/t      �   q   x�M���PLs�����|V��|��Q�#4�D[�Vw�ؤOA�z�{,�!��f�\6ʰ�C<�X�U��)D�:�@z/�x�쥮9�g"��/�Z=��������?�Z#�      �   o   x�U�;�@��a"��{��O�!�b��P�ڙyD�E8<s?��X)E#�«t�@�1KB�Twei2hRgC��ML%��fƔ�-��ݻ����}J� �[�)�      �     x�]�Mn�0���]T��Wo)4qZF�Y膵Y[%�)`��w���(;�i�է��\)��(�dV��=�?��/�?��q��n,��l� K��0=�֏���y�1�0D���;fJ�؊=�{�:?$D&�B�%Y�I	,)�]��u�Of����F��e<�"h���ڽ��{ǀ'L	��E�/�0�8�v��^�S���n�i;�B�PJ�"���z7��΅&�r	
%��,M<�(�*D����4��٤Zb �6F���ݎ������*���Q9%�\���&M�D���q^�ȗ��|q����o�އ��4j+���P���<�~���8r�F��\F��[sk�?�Z����'.��2�h�7�1��b�����5˩�8U��H,4�~����zI�a�}Ǔ��E�E�F娝�v�{�0�yY�"C��l���[Yσ�����2g�JJy�1V�������zi?�aƐ�8d3GI��ۭ��v��z�/W��SQ� [@W      �   �   x�U�;�0�z}�\ hw�c+N -�D8A2��pO��N�D1�O3�6茳�[����m�.����"���H;Fc�bQצa�K��4��k�}�$E,��s��7da�%��ҩ��X�-�n�C�͂���Y�����h�y4��<?s߄:7-�K�3��R�J�;�      �   Q   x�����0���%�q�#Kt��?G[Q�<�:�8D�ћOz��&l<C��p�����-*4�?(�����:��4z       �   \   x�350�tV�250��,���2�9=�JRӋs�������̼t ǔӱ�H�q:�%�Tg9��E)�E�@��s~
Hq� �ec      �   �   x�e���0��0Lf��?GI���+>�|`�	���'��S5颖z����Q��\P7�xg����'�YHE����-!�LV�>@�6����j�Og�I`����"2�W�(A�}C�3;$a���}'�ҞV��G���7H=O      �   m   x�]λ�@�Z��&��i�?G\ؕ�'��T�+��@��h��+;4�ElZ��CvS���̀}ȇl� �	�c1�{Q�oG�<'�P.�x�����ׇ���n%�      �   Q   x�]���@C�3�" '�Bz��:@#q`�O_��ᇛ�T�6�
�;,_��!�kUr��� vH��Ծ��}�����      �   A   x�Mʱ�@���
*��ы���/;q��h�c��Z�l����ft���PS�M��O�}x 
�      �   U   x�32000�tMOU��,K-*�,I-������,�4�3.# i��S�����ҩ��8���Ҙ�7�U�oiz\��W� �"�      �   R   x�30� #Nceș�10�	��������0��0�M!B�Hf����ЅL�,aBUP!S$�`B%������� �i)H      �   <  x��T[n�0�^�"'0d;�?'M
i�E�(Pl��D�e�ľU�Ѓum�+*�G�%gH�̒U��fp�:��Q��'��Lko���(�Ф'Ws�&�6FADK��@�Z-[������p��55�fG� 3�Ǣ���6&tO� ����),c^�|H;��"9���T1�v��Bq
����6V�%�4�&OS ��N�P�*�EqW9D�l2�1��&�e��T�j+�O�C}���_x��ȌN���z!kˑ
�_w�_�Y��j�:NB�=(��d��B��%��	C�m.�@�sn��ϻ�&�x�-��q��2:�L�k,��!.N'��7-&�ب��T�!��Oś5F.�Ų����}�jkV��G��F:4Ȍ˭ao��es�����y�`���5���e�x1�1��2���Ly7�͈`�'�!'�F10D��c�� w���H���Q���!��Wz=z�A�V�F>^n�������LDCĖ-�0����Ew&:n(���vL������:�ģP��˦q����� XT}h�(5��mQ_��d����n      �   g   x�=���@�PLC���_G6���i,�A�F�l��)�'��� �㍍:�i��\JB�4żr�d�ؖ���������e� ���g�lo'�W������     