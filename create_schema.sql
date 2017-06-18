--------------------------------------------------------
--  File created - Sunday-June-18-2017   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DEANS
--------------------------------------------------------

  CREATE TABLE "DEANS" 
   (	"ID" NUMBER(38,0), 
	"NGAYBD" VARCHAR2(255 CHAR), 
	"DIADIEM_DA" VARCHAR2(255 CHAR), 
	"PHONGBAN_ID" NUMBER(38,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table DIADIEM_PHGS
--------------------------------------------------------

  CREATE TABLE "DIADIEM_PHGS" 
   (	"ID" NUMBER(38,0), 
	"DIADIEM" VARCHAR2(255 CHAR), 
	"PHONGBAN_ID" NUMBER(38,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NHANVIENS
--------------------------------------------------------

  CREATE TABLE "NHANVIENS" 
   (	"ID" NUMBER(38,0), 
	"HONV" VARCHAR2(255 CHAR), 
	"TENLOT" VARCHAR2(255 CHAR), 
	"TENNV" VARCHAR2(255 CHAR), 
	"PHAI" VARCHAR2(255 CHAR), 
	"LUONG" VARCHAR2(255 CHAR), 
	"DIACHI" VARCHAR2(255 CHAR), 
	"NGAYSINH" VARCHAR2(255 CHAR), 
	"MANQL" NUMBER(38,0), 
	"PHG" NUMBER(38,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PHANCONGS
--------------------------------------------------------

  CREATE TABLE "PHANCONGS" 
   (	"ID" NUMBER(38,0), 
	"THOIGIAN" VARCHAR2(255 CHAR), 
	"NHANVIEN_ID" NUMBER(38,0), 
	"DEAN_ID" NUMBER(38,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PHONGBANS
--------------------------------------------------------

  CREATE TABLE "PHONGBANS" 
   (	"ID" NUMBER(38,0), 
	"TENPB" VARCHAR2(255 CHAR), 
	"NGAYBD" VARCHAR2(255 CHAR), 
	"TRPHG" NUMBER(38,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011551
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0011551" ON "DEANS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INDEX_DEANS_ON_PHONGBAN_ID
--------------------------------------------------------

  CREATE INDEX "INDEX_DEANS_ON_PHONGBAN_ID" ON "DEANS" ("PHONGBAN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011549
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0011549" ON "DIADIEM_PHGS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index I_DIADIEM_PHGS_PHONGBAN_ID
--------------------------------------------------------

  CREATE INDEX "I_DIADIEM_PHGS_PHONGBAN_ID" ON "DIADIEM_PHGS" ("PHONGBAN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011545
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0011545" ON "NHANVIENS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INDEX_NHANVIENS_ON_MANQL
--------------------------------------------------------

  CREATE INDEX "INDEX_NHANVIENS_ON_MANQL" ON "NHANVIENS" ("MANQL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INDEX_NHANVIENS_ON_PHG
--------------------------------------------------------

  CREATE INDEX "INDEX_NHANVIENS_ON_PHG" ON "NHANVIENS" ("PHG") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011553
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0011553" ON "PHANCONGS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INDEX_PHANCONGS_ON_NHANVIEN_ID
--------------------------------------------------------

  CREATE INDEX "INDEX_PHANCONGS_ON_NHANVIEN_ID" ON "PHANCONGS" ("NHANVIEN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INDEX_PHANCONGS_ON_DEAN_ID
--------------------------------------------------------

  CREATE INDEX "INDEX_PHANCONGS_ON_DEAN_ID" ON "PHANCONGS" ("DEAN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0011547
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0011547" ON "PHONGBANS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index INDEX_PHONGBANS_ON_TRPHG
--------------------------------------------------------

  CREATE INDEX "INDEX_PHONGBANS_ON_TRPHG" ON "PHONGBANS" ("TRPHG") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table DEANS
--------------------------------------------------------

  ALTER TABLE "DEANS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DEANS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DIADIEM_PHGS
--------------------------------------------------------

  ALTER TABLE "DIADIEM_PHGS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "DIADIEM_PHGS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table NHANVIENS
--------------------------------------------------------

  ALTER TABLE "NHANVIENS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "NHANVIENS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PHANCONGS
--------------------------------------------------------

  ALTER TABLE "PHANCONGS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "PHANCONGS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PHONGBANS
--------------------------------------------------------

  ALTER TABLE "PHONGBANS" MODIFY ("ID" NOT NULL ENABLE);
 
  ALTER TABLE "PHONGBANS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOCOMPRESS LOGGING
  TABLESPACE "USERS"  ENABLE;
