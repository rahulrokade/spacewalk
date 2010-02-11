-- created by Oraschemadoc Fri Jan 22 13:39:11 2010
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHNERRATABUGLIST"
   (	"ERRATA_ID" NUMBER NOT NULL ENABLE, 
	"BUG_ID" NUMBER NOT NULL ENABLE, 
	"SUMMARY" VARCHAR2(4000), 
	"CREATED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	"MODIFIED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_ERRATA_BUGLIST_ERRATA_FK" FOREIGN KEY ("ERRATA_ID")
	  REFERENCES "SPACEWALK"."RHNERRATA" ("ID") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/
