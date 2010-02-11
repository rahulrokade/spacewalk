-- created by Oraschemadoc Fri Jan 22 13:38:48 2010
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."PXTSESSIONS"
   (	"ID" NUMBER, 
	"WEB_USER_ID" NUMBER, 
	"EXPIRES" NUMBER DEFAULT (0) NOT NULL ENABLE, 
	"VALUE" VARCHAR2(4000) NOT NULL ENABLE, 
	 CONSTRAINT "PXT_SESSIONS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 NOLOGGING COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE, 
	 CONSTRAINT "PXTSESSIONS_USER" FOREIGN KEY ("WEB_USER_ID")
	  REFERENCES "SPACEWALK"."WEB_CONTACT" ("ID") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/
