-- created by Oraschemadoc Fri Jan 22 13:39:00 2010
-- visit http://www.yarpen.cz/oraschemadoc/ for more info

  CREATE TABLE "SPACEWALK"."RHNACTIONKICKSTARTGUEST"
   (	"ID" NUMBER NOT NULL ENABLE, 
	"ACTION_ID" NUMBER NOT NULL ENABLE, 
	"APPEND_STRING" VARCHAR2(1024), 
	"KS_SESSION_ID" NUMBER, 
	"GUEST_NAME" VARCHAR2(256), 
	"MEM_KB" NUMBER, 
	"VCPUS" NUMBER, 
	"DISK_GB" NUMBER, 
	"COBBLER_SYSTEM_NAME" VARCHAR2(256), 
	"DISK_PATH" VARCHAR2(256), 
	"VIRT_BRIDGE" VARCHAR2(256), 
	"KICKSTART_HOST" VARCHAR2(256), 
	"CREATED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	"MODIFIED" DATE DEFAULT (sysdate) NOT NULL ENABLE, 
	 CONSTRAINT "RHN_ACTIONKS_XENGUEST_ID_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE, 
	 CONSTRAINT "RHN_ACTIONKS_XENGUEST_AID_FK" FOREIGN KEY ("ACTION_ID")
	  REFERENCES "SPACEWALK"."RHNACTION" ("ID") ON DELETE CASCADE ENABLE,
	 CONSTRAINT "RHN_ACTIONKS_XENGUEST_KSID_FK" FOREIGN KEY ("KS_SESSION_ID")
	  REFERENCES "SPACEWALK"."RHNKICKSTARTSESSION" ("ID") ON DELETE CASCADE ENABLE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "DATA_TBS"  ENABLE ROW MOVEMENT 
 
/
