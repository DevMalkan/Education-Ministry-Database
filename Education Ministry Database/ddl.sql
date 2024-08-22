CREATE TABLE IF NOT EXISTS "DDL"."Education_Minister_Serves"
(
    "Minister_ID" integer NOT NULL,
    "First_Name" character varying COLLATE pg_catalog."default" NOT NULL,
    "Last_Name" character varying COLLATE pg_catalog."default" NOT NULL,
    "DOB" date NOT NULL,
    "Sex" character(1) COLLATE pg_catalog."default" NOT NULL,
    "Political_Party" character varying COLLATE pg_catalog."default" NOT NULL,
    "Prime_Minister" character varying COLLATE pg_catalog."default" NOT NULL,
    "Start_Date" date NOT NULL,
    "End_Date" date NOT NULL,
    "Terms_Of_Service" integer,
    "S_ID" integer NOT NULL,
    CONSTRAINT "Education_Minister_pkey" PRIMARY KEY ("Minister_ID"),
    CONSTRAINT "Education_Minister" FOREIGN KEY ("S_ID")
        REFERENCES "DDL"."Region" ("S_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "DDL"."Education_Minister_Serves"
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS "DDL"."Region"
(
    "S_ID" integer NOT NULL,
    "No_Of_Schools" integer,
    "No_Of_Colleges" integer,
    "No_Of_Students" integer,
    "No_Of_Teachers" integer,
    "Population" integer NOT NULL,
    "Literacy_Rate" double precision,
    CONSTRAINT "Region_pkey" PRIMARY KEY ("S_ID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "DDL"."Region"
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS "DDL"."State"
(
    "S_ID" integer NOT NULL,
    "Name" character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "State_pkey" PRIMARY KEY ("S_ID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "DDL"."State"
    OWNER to postgres;


CREATE TABLE IF NOT EXISTS "DDL"."School"
(
    "School_ID" integer NOT NULL,
    "Name" character varying COLLATE pg_catalog."default" NOT NULL,
    "Type" character(1) COLLATE pg_catalog."default" NOT NULL,
    "Date_Of_Establishment" date,
    "Fees" integer NOT NULL,
    "No_Of_Teachers" integer,
    "No_Of_Students" integer,
    "Mid_Day_Meal" boolean NOT NULL,
    CONSTRAINT "School_pkey" PRIMARY KEY ("School_ID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "DDL"."School"
    OWNER to postgres;


CREATE TABLE IF NOT EXISTS "DDL"."School_Phone_No"
(
    "School_ID" integer NOT NULL,
    "Phone_No" integer NOT NULL,
    CONSTRAINT "School_Phone_No_pkey" PRIMARY KEY ("School_ID", "Phone_No"),
    CONSTRAINT "School_Phone_No" FOREIGN KEY ("School_ID")
        REFERENCES "DDL"."School" ("School_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "DDL"."School_Phone_No"
    OWNER to postgres;


CREATE TABLE IF NOT EXISTS "DDL"."College"
(
    "College_ID" integer NOT NULL,
    "Name" character varying COLLATE pg_catalog."default" NOT NULL,
    "Type" character(1) COLLATE pg_catalog."default" NOT NULL,
    "Date_Of_Establishment" date,
    "Fees" integer NOT NULL,
    "No_Of_Teachers" integer,
    "No_Of_Students" integer,
    CONSTRAINT "College_pkey" PRIMARY KEY ("College_ID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "DDL"."College"
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS "DDL"."College_Phone_No"
(
    "College_ID" integer NOT NULL,
    "Phone_No" integer NOT NULL,
    CONSTRAINT "College_Phone_No_pkey" PRIMARY KEY ("College_ID", "Phone_No"),
    CONSTRAINT "College_Phone_No" FOREIGN KEY ("College_ID")
        REFERENCES "DDL"."College" ("College_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "DDL"."College_Phone_No"
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS "DDL"."Student"
(
    "Student_ID" integer NOT NULL,
    "First_Name" character varying COLLATE pg_catalog."default" NOT NULL,
    "Last_Name" character varying COLLATE pg_catalog."default" NOT NULL,
    "Sex" character(1) COLLATE pg_catalog."default" NOT NULL,
    "Type" character(1) COLLATE pg_catalog."default" NOT NULL,
    "Standard" integer,
    "DOB" date NOT NULL,
    CONSTRAINT "Student_pkey" PRIMARY KEY ("Student_ID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "DDL"."Student"
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS "DDL"."Student_Phone_No"
(
    "Student_ID" integer NOT NULL,
    "Phone_No" integer NOT NULL,
    CONSTRAINT "Student_Phone_No_pkey" PRIMARY KEY ("Student_ID", "Phone_No"),
    CONSTRAINT "Student_Phone_No" FOREIGN KEY ("Student_ID")
        REFERENCES "DDL"."Student" ("Student_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "DDL"."Student_Phone_No"
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS "DDL"."Teacher"
(
    "Teacher_ID" integer NOT NULL,
    "First_Name" character varying COLLATE pg_catalog."default" NOT NULL,
    "Last_Name" character varying COLLATE pg_catalog."default" NOT NULL,
    "Salary" integer,
    "Type" character(1) COLLATE pg_catalog."default" NOT NULL,
    "DOB" date NOT NULL,
    "Sex" character(1) COLLATE pg_catalog."default",
    CONSTRAINT "Teacher_pkey" PRIMARY KEY ("Teacher_ID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "DDL"."Teacher"
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS "DDL"."Teacher_Subject"
(
    "Teacher_ID" integer NOT NULL,
    "Subject" character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Teacher_Subject_pkey" PRIMARY KEY ("Teacher_ID", "Subject"),
    CONSTRAINT "Teacher_Subject" FOREIGN KEY ("Teacher_ID")
        REFERENCES "DDL"."Teacher" ("Teacher_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "DDL"."Teacher_Subject"
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS "DDL"."Student_Studies_School"
(
    "Student_ID" integer NOT NULL,
    "School_ID" integer NOT NULL,
    CONSTRAINT "Student_Studies_School_pkey" PRIMARY KEY ("Student_ID", "School_ID"),
    CONSTRAINT "Student_Studies" FOREIGN KEY ("Student_ID")
        REFERENCES "DDL"."Student" ("Student_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "Studies_School" FOREIGN KEY ("School_ID")
        REFERENCES "DDL"."School" ("School_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "DDL"."Student_Studies_School"
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS "DDL"."Student_Studies_College"
(
    "Student_ID" integer NOT NULL,
    "College_ID" integer NOT NULL,
    CONSTRAINT "Student_Studies_College_pkey" PRIMARY KEY ("Student_ID", "College_ID"),
    CONSTRAINT "Student_Studies" FOREIGN KEY ("Student_ID")
        REFERENCES "DDL"."Student" ("Student_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "Studies_College" FOREIGN KEY ("College_ID")
        REFERENCES "DDL"."College" ("College_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "DDL"."Student_Studies_College"
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS "DDL"."Teacher_Teaches_School"
(
    "Teacher_ID" integer NOT NULL,
    "School_ID" integer NOT NULL,
    CONSTRAINT "Teacher_Teaches_School_pkey" PRIMARY KEY ("Teacher_ID", "School_ID"),
    CONSTRAINT "Teacher_Teaches" FOREIGN KEY ("Teacher_ID")
        REFERENCES "DDL"."Teacher" ("Teacher_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "Teaches_School" FOREIGN KEY ("School_ID")
        REFERENCES "DDL"."School" ("School_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "DDL"."Teacher_Teaches_School"
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS "DDL"."Teacher_Teaches_College"
(
    "Teacher_ID" integer NOT NULL,
    "College_ID" integer NOT NULL,
    CONSTRAINT "Teacher_Teaches_College_pkey" PRIMARY KEY ("Teacher_ID", "College_ID"),
    CONSTRAINT "Teacher_Teaches" FOREIGN KEY ("Teacher_ID")
        REFERENCES "DDL"."Teacher" ("Teacher_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "Teaches_College" FOREIGN KEY ("College_ID")
        REFERENCES "DDL"."College" ("College_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "DDL"."Teacher_Teaches_College"
    OWNER to postgres;

CREATE TABLE IF NOT EXISTS "DDL"."Address"
(
    "Type" character(1) COLLATE pg_catalog."default" NOT NULL,
    "ID" integer NOT NULL,
    "Line_1" character varying[] COLLATE pg_catalog."default" NOT NULL,
    "City" character varying COLLATE pg_catalog."default" NOT NULL,
    "S_ID" integer NOT NULL,
    CONSTRAINT "Address_pkey" PRIMARY KEY ("Type", "ID"),
    CONSTRAINT "Address" FOREIGN KEY ("S_ID")
        REFERENCES "DDL"."Region" ("S_ID") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS "DDL"."Address"
    OWNER to postgres;
