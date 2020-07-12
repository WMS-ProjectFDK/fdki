
  CREATE OR REPLACE TRIGGER "PORDER"."DEL_KANBANPCK" 

  BEFORE DELETE ON ztb_kanban_pck
  FOR EACH ROW 

DECLARE

BEGIN

insert into ztb_kanban_pck_del (
ID, 
	PCK_STAT, 
	WORKER_ID_1, 
	WORKER_ID_2, 
	STARTDATE, 
	ENDDATE, 
	NO_OUTER_BOX, 
	PERSON, 
	ASY_LINE, 
	PCK_LINE, 
	LABEL_LINE, 
	ASY_DATE1, 
	LABEL_QTY1, 
	ASY_DATE2, 
	LABEL_QTY2, 
	ASY_DATE3, 
	LABEL_QTY3, 
	MESIN_NO, 
	SISA, 
	TAMBAHAN, 
	NG, 
	LOSSTIME
)values(
 :old.ID, 
	:old.PCK_STAT, 
	:old.WORKER_ID_1, 
	:old.WORKER_ID_2, 
	:old.STARTDATE, 
	:old.ENDDATE, 
	:old.NO_OUTER_BOX, 
	:old.PERSON, 
	:old.ASY_LINE, 
	:old.PCK_LINE, 
	:old.LABEL_LINE, 
	:old.ASY_DATE1, 
	:old.LABEL_QTY1, 
	:old.ASY_DATE2, 
	:old.LABEL_QTY2, 
	:old.ASY_DATE3, 
	:old.LABEL_QTY3, 
	:old.MESIN_NO, 
	:old.SISA, 
	:old.TAMBAHAN, 
	:old.NG, 
	:old.LOSSTIME


);
END;

/
ALTER TRIGGER "PORDER"."DEL_KANBANPCK" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."TRG_APPROVE_FG" 

  AFTER UPDATE ON ZTB_WH_KANBAN_TRANS_FG
  FOR EACH ROW 


/
ALTER TRIGGER "PORDER"."TRG_APPROVE_FG" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."TRG_BEFORE_ZTB_P_PLAN" 

BEFORE INSERT
  ON ztb_p_plan
  FOR EACH ROW

DECLARE
flag integer;

BEGIN

  -- Replaced by the current logged in user "HR" by a trigger.
select count(*) into flag
from 
(
        select  r.work_order,
                s.mps_date,
                date_code,
                i.date_code_month,
                add_months(to_date( case when length(substr(date_code,4,7)) < 3 then '20'||substr(date_code,4,7) else substr(date_code,4,7) end || '/' ||
                          substr(date_code, 0, 2) || '/' || '01 1:00:25', 'YYYY/MM/DD HH:MI:SS') , i.date_code_month * -1) Tanggal
        from mps_header r
        inner join mps_details s
        on r.po_line_no = s.po_line_no and r.po_no = s.po_no
        inner join item i
        on r.item_no = i.item_no
        where date_code_type  in (
        '1',
        'MM-YYYY',
        'MM/YYYY',
        'MMAYY'
        ) and date_code is not null and i.date_code_month is not null
        and i.item_no not in ('15990',
                              '16000',
                              '17390',
                              '30070',
                              '31820',
                              '31830',
                              '31840',
                              '31850',
                              '31940',
                              '31950',
                              '31990',
                              '32000',
                              '32010',
                              '32130',
                              '43610',
                              '44280',
                              '44290',
                              '44340',
                              '44360',
                              '44440',
                              '44460',
                              '44480',
                              '54780',
                              '54790',
                              '57886',
                              '59000',
                              '59001',
                              '66470',
                              '68250',
                              '68260',
                              '68350',
                              '68360',
                              '68400',
                              '68450',
                              '68460',
                              '68470',
                              '68480',
                              '68500',
                              '71355',
                              '71356',
                              '76385',
                              '76386',
                              '77195',
                              '77196',
                              '84010',
                              '84011',
                              '84090',
                              '84091',
                              '84370',
                              '84371',
                              '84390',
                              '84391',
                              '85335',
                              '95340',
                              '86585',
                              '86575',
                              '95590',
                              '95630',
                              '96530',
                              '96535',
                              '73012220',
                              '73012230'
                              ) and work_order = :NEW.WO_NO
) where   case when nvl(tanggal,(select sysdate from dual)) between trunc(add_months(mps_date,-2),'MONTH')-1 and trunc(add_months(mps_date, 2),'MONTH')+1 then 1 else 0 end =0;


  
  -- Setting created_by and created_Date values.
  IF FLAG > 0  THEN 
      RAISE_APPLICATION_ERROR(-20000,'Wrong date code');
  END IF;


END;

/
ALTER TRIGGER "PORDER"."TRG_BEFORE_ZTB_P_PLAN" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."TRG_TRANSACTION_DELETE" 

AFTER DELETE ON TRANSACTION
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW 
begin
  insert into transaction_delete select * from transaction where slip_no= :old.slip_no and item_no= :old.item_no;
end;
/
ALTER TRIGGER "PORDER"."TRG_TRANSACTION_DELETE" DISABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."TRG_TRANSACTION_FOR_ACCPAC" 

AFTER INSERT OR DELETE OR UPDATE 
ON TRANSACTION
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW 

/
ALTER TRIGGER "PORDER"."TRG_TRANSACTION_FOR_ACCPAC" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."TRG_TRANSACTION_PR_FOR_ACCPAC" 

AFTER INSERT OR DELETE OR UPDATE 
ON TRANSACTION_PR
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW 

/
ALTER TRIGGER "PORDER"."TRG_TRANSACTION_PR_FOR_ACCPAC" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."UP_ZTB_OUT_DET" 

  BEFORE UPDATE ON ztb_wh_out_det
  FOR EACH ROW 

DECLARE

BEGIN
 IF :NEW.Print = '1' THEN
      Insert into mte_header
     (Slip_no, slip_date, company_code, slip_type, display_type, section_code, person_code)
     select 'MT-'|| :NEW.slip_no,:NEW.WO_Date,'100001','21','C',100,'KANBAN' from dual where NOT EXISTS
     (select * from mte_header where slip_no='MT-'|| :NEW.slip_no);
      
      Insert into mte_details
      (slip_no, line_no, item_no,qty,  reg_date, upto_date, wo_no,remark)
      select 'MT-'|| :NEW.slip_no,1,:NEW.item_no,:NEW.qty,sysdate,sysdate,'MATERIAL COMMON','KANBAN' from dual where NOT EXISTS
      (select * from mte_details where slip_no='MT-'|| :NEW.slip_no AND item_no= :NEW.item_no);
      
 END IF;
END;

/
ALTER TRIGGER "PORDER"."UP_ZTB_OUT_DET" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTB_ASSY_KANBAN" 

before insert on ZTB_ASSY_KANBAN
for each row
begin
  select ZTB_ASSY_KANBAN_seq.nextval into :new."ID" from dual;
end;

/
ALTER TRIGGER "PORDER"."ZTB_ASSY_KANBAN" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTB_ASSY_PRINT_TRG" 

before insert on ZTB_ASSY_PRINT
for each row
begin
  select ztb_assy_kanban_print_seq.nextval into :new."ID" from dual;
end;

/
ALTER TRIGGER "PORDER"."ZTB_ASSY_PRINT_TRG" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTB_DELAY_REASON" 
 
 

before insert on ZTB_DELAY_REASON
for each row
begin
  select ZTB_DELAY_REASON_seq.nextval into :new."ID" from dual;
end;

/
ALTER TRIGGER "PORDER"."ZTB_DELAY_REASON" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTB_KANBAN_LBL" 
 
 

before insert on ZTB_KANBAN_LBL
for each row
begin
  select ZTB_KANBAN_LBL_seq.nextval into :new."ID" from dual;
end;
/
ALTER TRIGGER "PORDER"."ZTB_KANBAN_LBL" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTB_KANBAN_PERSON_TRG" 

before insert on ZTB_kanban_person
for each row
begin
  select ZTB_kanban_person_seq.nextval into :new."ID" from dual;
end;
/
ALTER TRIGGER "PORDER"."ZTB_KANBAN_PERSON_TRG" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTB_MENU" 
 
 

before insert on ZTB_MENU
for each row
begin
  select ZTB_MENU_seq.nextval into :new."ID" from dual;
end;
/
ALTER TRIGGER "PORDER"."ZTB_MENU" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTB_PLAN_L_TRG" 
 
 

before insert on ZTB_PLAN_L
for each row
begin
  select ZTB_PLAN_L_seq.nextval into :new."ID" from dual;
end;
/
ALTER TRIGGER "PORDER"."ZTB_PLAN_L_TRG" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTB_PLAN_M_TRG" 
 

before insert on ZTB_PLAN_M
for each row
begin
  select ZTB_PLAN_M_seq.nextval into :new."ID" from dual;
end;
/
ALTER TRIGGER "PORDER"."ZTB_PLAN_M_TRG" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTB_PLAN_TRG" 

before insert on ZTB_PLAN
for each row
begin
  select ZTB_PLAN_seq.nextval into :new."ID" from dual;
end;
/
ALTER TRIGGER "PORDER"."ZTB_PLAN_TRG" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTB_WH_DO_DET_TRG" 

before insert on ZTB_wh_do_det
for each row
begin
  select ZTB_wh_do_det_seq.nextval into :new."ID" from dual;
end;
/
ALTER TRIGGER "PORDER"."ZTB_WH_DO_DET_TRG" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTB_WH_IN_DET_TRG" 

before insert on ZTB_wh_in_det
for each row
begin
  select ztb_wh_in_det_seq.nextval into :new."ID" from dual;
end;
/
ALTER TRIGGER "PORDER"."ZTB_WH_IN_DET_TRG" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTB_WH_OUT_DET_TRG" 

before insert on ZTB_wh_out_det
for each row
begin
  select ztb_wh_out_det_seq.nextval into :new."ID" from dual;
end;
/
ALTER TRIGGER "PORDER"."ZTB_WH_OUT_DET_TRG" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTB_WH_STICKER_DET_TRG" 

before insert on ZTB_wh_sticker_det
for each row
begin
  select ZTB_wh_sticker_det_seq.nextval into :new."ID" from dual;
end;
/
ALTER TRIGGER "PORDER"."ZTB_WH_STICKER_DET_TRG" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTB_WH_Trans_trg" 
 
 

before insert on ZTB_WH_Trans
for each row
begin
  select ZTB_WH_Trans_seq.nextval into :new."ID" from dual;
end;
/
ALTER TRIGGER "PORDER"."ZTB_WH_Trans_trg" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTG_ASSY_HEATING_1" 

  AFTER INSERT ON  ZTB_ASSY_HEATING
  FOR EACH ROW 
BEGIN
   IF (:NEW.position = 1  ) THEN
    insert into  ZTB_WIP_BAT (id_print, qty_heat)
    select id_print , sum(qty_act_perpallet) from ztb_assy_kanban where id_print = :NEW.id_print 
    group by id_print;
   END IF;
   IF (:NEW.position = 2  ) THEN
    update ZTB_WIP_BAT set  qty_aging =  qty_heat,qty_heat = 0 where id_print = :NEW.id_print;
   END IF;
   IF (:NEW.position = 3  ) THEN
    update ZTB_WIP_BAT set  qty_label =  qty_aging,qty_aging = 0  where id_print = :NEW.id_print;
   END IF;

END;

/
ALTER TRIGGER "PORDER"."ZTG_ASSY_HEATING_1" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTG_KANBAN_PRINT" 

BEFORE INSERT
  ON ztb_kanban_print
  FOR EACH ROW

DECLARE
flag integer;

BEGIN

  -- Replaced by the current logged in user "HR" by a trigger.
select count(*) into flag
from 
(
        select  r.work_order,
                s.mps_date,
                date_code,
                i.date_code_month,
                add_months(to_date( case when length(substr(date_code,4,7)) < 3 then '20'||substr(date_code,4,7) else substr(date_code,4,7) end || '/' ||
                          substr(date_code, 0, 2) || '/' || '01 1:00:25', 'YYYY/MM/DD HH:MI:SS') , i.date_code_month * -1) Tanggal
        from mps_header r
        inner join mps_details s
        on r.po_line_no = s.po_line_no and r.po_no = s.po_no
        inner join item i
        on r.item_no = i.item_no
        where date_code_type  in (
        '1',
        'MM-YYYY',
        'MM/YYYY',
        'MMAYY'
        ) and date_code is not null and i.date_code_month is not null
        and i.item_no not in ('15990',
                              '16000',
                              '17390',
                              '30070',
                              '31820',
                              '31830',
                              '31840',
                              '31850',
                              '31940',
                              '31950',
                              '31990',
                              '32000',
                              '32010',
                              '32130',
                              '43610',
                              '44280',
                              '44290',
                              '44340',
                              '44360',
                              '44440',
                              '44460',
                              '44480',
                              '54780',
                              '54790',
                              '57886',
                              '59000',
                              '59001',
                              '66470',
                              '68250',
                              '68260',
                              '68350',
                              '68360',
                              '68400',
                              '68450',
                              '68460',
                              '68470',
                              '68480',
                              '68500',
                              '71355',
                              '71356',
                              '76385',
                              '76386',
                              '77195',
                              '77196',
                              '84010',
                              '84011',
                              '84090',
                              '84091',
                              '84370',
                              '84371',
                              '84390',
                              '84391',
                              '85335',
                              '95340',
                              '86585',
                              '86575',
                              '95590',
                              '95630',
                              '96530',
                              '96535',
                              '73012220',
                              '73012230'
                              ) and work_order = :NEW.WO_NO
) where   case when nvl(tanggal,(select sysdate from dual)) between trunc(add_months(mps_date,-2),'MONTH')-1 and trunc(add_months(mps_date, 3),'MONTH')+1 then 1 else 0 end =0;


  
  -- Setting created_by and created_Date values.
  IF FLAG > 0  THEN 
      RAISE_APPLICATION_ERROR(-20000,'Wrong date code');
  END IF;


END;

/
ALTER TRIGGER "PORDER"."ZTG_KANBAN_PRINT" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTG_KANBAN_PRINT_LABEL" 

BEFORE INSERT
  ON ztb_kanban_print_label
  FOR EACH ROW

DECLARE
flag integer;

BEGIN

  -- Replaced by the current logged in user "HR" by a trigger.
select count(*) into flag
from 
(
        select  r.work_order,
                s.mps_date,
                date_code,
                i.date_code_month,
                add_months(to_date( case when length(substr(date_code,4,7)) < 3 then '20'||substr(date_code,4,7) else substr(date_code,4,7) end || '/' ||
                          substr(date_code, 0, 2) || '/' || '01 1:00:25', 'YYYY/MM/DD HH:MI:SS') , i.date_code_month * -1) Tanggal
        from mps_header r
        inner join mps_details s
        on r.po_line_no = s.po_line_no and r.po_no = s.po_no
        inner join item i
        on r.item_no = i.item_no
        where date_code_type  in (
        '1',
        'MM-YYYY',
        'MM/YYYY',
        'MMAYY'
        ) and date_code is not null and i.date_code_month is not null
        and i.item_no not in ('15990',
                              '16000',
                              '17390',
                              '30070',
                              '31820',
                              '31830',
                              '31840',
                              '31850',
                              '31940',
                              '31950',
                              '31990',
                              '32000',
                              '32010',
                              '32130',
                              '43610',
                              '44280',
                              '44290',
                              '44340',
                              '44360',
                              '44440',
                              '44460',
                              '44480',
                              '54780',
                              '54790',
                              '57886',
                              '59000',
                              '59001',
                              '66470',
                              '68250',
                              '68260',
                              '68350',
                              '68360',
                              '68400',
                              '68450',
                              '68460',
                              '68470',
                              '68480',
                              '68500',
                              '71355',
                              '71356',
                              '76385',
                              '76386',
                              '77195',
                              '77196',
                              '84010',
                              '84011',
                              '84090',
                              '84091',
                              '84370',
                              '84371',
                              '84390',
                              '84391',
                              '85335',
                              '95340',
                              '86585',
                              '86575',
                              '95590',
                              '95630',
                              '96530',
                              '96535',
                              '73012220',
                              '73012230'
                              ) and work_order = :NEW.WO_NO
) where   case when nvl(tanggal,(select sysdate from dual)) between trunc(add_months(mps_date,-2),'MONTH')-1 and trunc(add_months(mps_date, 2),'MONTH')+1 then 1 else 0 end =0;



  
  -- Setting created_by and created_Date values.
  IF FLAG > 0  THEN 
      RAISE_APPLICATION_ERROR(-20000,'Wrong date code');
  END IF;


END;

/
ALTER TRIGGER "PORDER"."ZTG_KANBAN_PRINT_LABEL" DISABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTG_LBL_TRANS" 

AFTER UPDATE ON  ZTB_LBL_TRANS
  FOR EACH ROW 
BEGIN
   
    update ZTB_WIP_BAT set  qty_after_lbl =  :NEW.QTY_TERPAKAI + :NEW.NG_QTY ,qty_label = :NEW.QTY - :NEW.QTY_TERPAKAI + :NEW.NG_QTY where id_print = :NEW.id_print;
   

END;
/
ALTER TRIGGER "PORDER"."ZTG_LBL_TRANS" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTR_ANSWER" 

AFTER INSERT OR DELETE OR UPDATE ON ZTB_ANSWER
FOR EACH ROW 
  
/
ALTER TRIGGER "PORDER"."ZTR_ANSWER" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTR_ANSWER_FIX" 

AFTER INSERT OR DELETE OR UPDATE ON ANSWER
FOR EACH ROW 
  
/
ALTER TRIGGER "PORDER"."ZTR_ANSWER_FIX" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTR_ASSY_ANODE_GEL" 
 
 
before insert on ztb_assy_anode_gel
for each row
begin
  select ZTB_ASSY_ANODE_GEL_SEQ.nextval into :new."ID" from dual;
end;

/
ALTER TRIGGER "PORDER"."ZTR_ASSY_ANODE_GEL" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTR_CHECK_DUPLICATE_DETAILS" 

before insert  on mte_details
FOR each ROW
declare
 v_dup number;
 
 begin
 if :NEW.remark = 'KANBAN' Then
     select count(slip_no) INTO v_dup from mte_details where slip_no = :NEW.slip_no and line_no=:NEW.line_no ;
 end if;
 
  if v_dup > 0 then
    Raise_Application_Error (-20100, 'This property already exists. The insert is cancelled.');
 end if;
 end;
/
ALTER TRIGGER "PORDER"."ZTR_CHECK_DUPLICATE_DETAILS" DISABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTR_CHECK_DUPLICATE_HEADER1" 

before insert  on mte_header
FOR each ROW
declare
 v_dup number;
 
 begin
  if :NEW.display_type = 'C' then
     select count(slip_no) INTO v_dup from mte_header where slip_no = :NEW.slip_no and slip_no not like '%MT-17%'  and slip_no not like '%RMT-17%' ;
 end if;
 
  if v_dup > 0 then
    Raise_Application_Error (-20100, 'This property already exists. The insert is cancelled.');
 end if;
 end;
/
ALTER TRIGGER "PORDER"."ZTR_CHECK_DUPLICATE_HEADER1" DISABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTR_CONTAINER_TEMP" 

AFTER INSERT OR UPDATE ON ZTB_CONTAINER_TEMP
FOR EACH ROW 
  DECLARE

    v_qty varchar(100) := 0;
    
    --v_date_code VARCHAR(100) := 0; 
  BEGIN
   ZSP_SHIP_DETAIL( :NEW.ITEM_NO, :NEW.QUANTITY, :NEW.PPBE, :NEW.WO_NO );
  END;

/
ALTER TRIGGER "PORDER"."ZTR_CONTAINER_TEMP" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTR_DO_TEMP" 

AFTER INSERT OR DELETE OR UPDATE 
ON ZTB_DO_TEMP
FOR EACH ROW 
  
/
ALTER TRIGGER "PORDER"."ZTR_DO_TEMP" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTR_PCK_STATUS" 

  AFTER INSERT ON ZTB_PCK_STATUS
  FOR EACH ROW 

DECLARE
c_wo varchar(100); 
c_qty varchar(100); 
c_plt_no varchar(100); 
c_id varchar(100); 

CURSOR c_mte is 
  select wo_no  , plt_no, qty_pallet, id 
  from ztb_p_plan 
  where id= :NEW.id ;
BEGIN
  
   OPEN c_mte; 
        LOOP 
          FETCH c_mte into c_wo,c_plt_no,c_qty,c_id; 
          EXIT WHEN c_mte%notfound; 
            begin
              update ztb_pck_status set wo = c_wo, plt_no = c_plt_no , qty = c_qty
              where id = c_id;
          --commit;
          end;
   END LOOP; 
   CLOSE c_mte;  
      
      
    
      
END;

/
ALTER TRIGGER "PORDER"."ZTR_PCK_STATUS" DISABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTR_WH_KANBAN_TRANS" 

AFTER INSERT ON ZTB_WH_KANBAN_TRANS
FOR EACH ROW 
BEGIN
  delete ztb_item_book where wo_no = :new.wo_no and plt_no = :new.plt_no ;
END;

/
ALTER TRIGGER "PORDER"."ZTR_WH_KANBAN_TRANS" ENABLE;
 

  CREATE OR REPLACE TRIGGER "PORDER"."ZTR_ZTB_KANBAN_TRANS" 

  AFTER INSERT ON ztb_wh_kanban_trans
  FOR EACH ROW 

DECLARE

BEGIN
    Insert into mte_details
    (slip_no, line_no, item_no,qty,reg_date, upto_date, wo_no,remark)
    select :NEW.slip_no,:NEW.line_no,:NEW.item_no,:NEW.qty,sysdate,sysdate,'MATERIAL COMMON','KANBAN' from dual where NOT EXISTS
    (select * from mte_details where slip_no= :NEW.slip_no AND item_no= :NEW.item_no);
        
--    Insert into mte_header
--    (Slip_no, slip_date, company_code, slip_type, display_type, section_code, person_code)
--    select :NEW.slip_no,:NEW.date_in,'100001','21','C',100, 'KANBAN' from dual where NOT EXISTS
--    (select * from mte_header where slip_no=:NEW.slip_no);
END;

/
ALTER TRIGGER "PORDER"."ZTR_ZTB_KANBAN_TRANS" ENABLE;
 
