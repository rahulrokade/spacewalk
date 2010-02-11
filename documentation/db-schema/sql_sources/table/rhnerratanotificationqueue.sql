-- created by Oraschemadoc Fri Jan 22 13:39:13 2010
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHNERRATANOTIFICATIONQUEUE"
   (	"ERRATA_ID" NUMBER NOT NULL ENABLE, 
	"ORG_ID" NUMBER NOT NULL ENABLE, 
	"NEXT_ACTION" DATE DEFAULT (sysdate), 
	"CHANNEL_ID" NUMBER NOT NULL ENABLE, 
	"CREATED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	"MODIFIED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_ENQUEUE_EOID_UQ" UNIQUE ("ERRATA_ID", "ORG_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE, 
	 CONSTRAINT "RHN_ENQUEUE_EID_FK" FOREIGN KEY ("ERRATA_ID")
	  REFERENCES "SPACEWALK"."RHNERRATA" ("ID") ON DELETE CASCADE ENABLE,
	 CONSTRAINT "RHN_ENQUEUE_OID_FK" FOREIGN KEY ("ORG_ID")
	  REFERENCES "SPACEWALK"."WEB_CUSTOMER" ("ID") ON DELETE CASCADE ENABLE,
	 CONSTRAINT "RHN_ENQUEUE_CID_FK" FOREIGN KEY ("CHANNEL_ID")
	  REFERENCES "SPACEWALK"."RHNCHANNEL" ("ID") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/
