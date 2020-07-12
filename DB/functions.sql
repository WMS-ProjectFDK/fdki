
  CREATE OR REPLACE FUNCTION "PORDER"."ADD_WORK_DATE" (
    v_st_date in date,
    v_add_num in number
)
return  date
is
begin
  declare
   CAL_REC  CALENDAR%rowtype ;

   v_work_date date := null;
   v_cnt number(10) := 0 ;
   v_num number(10) := 0 ;
   st_flag number(1) := null ;

    cursor C1(PARAM1 in date) is
     select
       *
     from calendar
     where trunc(calen_date) >= trunc(PARAM1)
     order by calen_date
    ;

    cursor C2(PARAM1 in date) is
     select
       *
     from calendar
     where trunc(calen_date) <= trunc(PARAM1)
     order by calen_date desc
    ;

    cursor C3(PARAM1 in date) is
     select
       *
     from calendar
     where trunc(calen_date) = trunc(PARAM1)
    ;


  begin

    If v_add_num > 0 Then
         open C1(v_st_date) ;
            loop
                fetch C1 into CAL_REC;
                If ST_FLAG is null Then
                   CAL_REC.WORK_FLAG := 1 ;
                   ST_FLAG :=1 ;
                End If ;
                If trunc(CAL_REC.CALEN_DATE) != trunc(v_st_date + v_cnt) or  C1%notfound Then
                   exit ;
                End If ;
                If CAL_REC.WORK_FLAG =1  Then
                   if v_num = v_add_num Then
                        v_work_date := trunc(CAL_REC.CALEN_DATE) ;
                        exit ;
                   End if ;
                   v_num := v_num +1 ;
                End If ;

                v_cnt := v_cnt + 1 ;
            end loop ;
         close C1 ;
    ElsIf v_add_num <= 0 Then
         open C2(v_st_date) ;
            loop
                If ST_FLAG is null Then
                   CAL_REC.WORK_FLAG := 1 ;
                   ST_FLAG :=1 ;
                End If ;
                fetch C2 into CAL_REC;
                If trunc(CAL_REC.CALEN_DATE) != trunc(v_st_date - v_cnt) or  C2%notfound Then
                   exit ;
                End If ;
                If CAL_REC.WORK_FLAG =1  Then
                   if v_num = v_add_num Then
                        v_work_date := trunc(CAL_REC.CALEN_DATE) ;
                        exit ;
                   End if ;
                   v_num := v_num -1 ;
                End If ;

                v_cnt := v_cnt + 1 ;
            end loop ;
         close C2 ;
    Else
         open C3(v_st_date) ;
            fetch C3 into CAL_REC;
            If CAL_REC.WORK_FLAG = 1 Then
                v_work_date := trunc(CAL_REC.CALEN_DATE) ;
            End If ;
         close C3 ;
    End If ;

    return(v_work_date) ;
  end ;
end add_work_date ;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."CHECK_ITEM_DELETE" (v_item_no in number)
return number
is
begin
   declare
	cursor C1(para in number)
	is
	 SELECT COUNT(*) FROM SO_DETAILS
	  WHERE BAL_QTY >  0 
	    AND ITEM_NO = para;

	cursor C2(para in number)
	is
	SELECT COUNT(*) FROM SR_HEADER h,SR_DETAILS d
	WHERE  h.SR_NO = d.SR_NO
	 AND   h.SR_DATE >= trunc(add_months(sysdate,-3),'mm')
	 AND   d.ITEM_NO = para ;

	cursor C3(para in number)
	is
	 SELECT COUNT(*) FROM PO_DETAILS
	  WHERE BAL_QTY >  0 
	    AND ITEM_NO = para;

	cursor C4(para in number)
	is
	SELECT COUNT(*) FROM PR_HEADER h,PR_DETAILS d
	WHERE  h.PR_NO = d.PR_NO
	 AND   h.PR_DATE >= trunc(add_months(sysdate,-3),'mm')
	 AND   d.ITEM_NO = para ;

	cursor C5(para in number)
	is
	SELECT COUNT(*) FROM ANSWER  a
	WHERE  a.DATA_DATE >= trunc(add_months(sysdate,-3),'mm')
	 AND   a.ITEM_NO = para ;

	cursor C6(para in number)
	is
	SELECT COUNT(*) FROM DO_HEADER h,DO_DETAILS d
	WHERE  h.DO_NO = d.DO_NO
	 AND   h.DO_DATE >= trunc(add_months(sysdate,-3),'mm')
	 AND   d.ITEM_NO = para ;

	cursor C7(para in number)
	is
	SELECT COUNT(*) FROM SALES S
	WHERE  S.DATA_DATE >= trunc(add_months(sysdate,-12),'mm')
	 AND   S.ITEM_NO = para ;

	cursor C8(para in number)
	is
	SELECT COUNT(*) FROM PURCHASE P
	WHERE  P.DATA_DATE >= trunc(add_months(sysdate,-12),'mm')
	 AND   P.ITEM_NO = para ;

	cursor C9(para in number)
	is
	SELECT COUNT(*) FROM  WHINVENTORY w
	 WHERE ( w.THIS_INVENTORY <> 0
	   OR  w.LAST_INVENTORY <> 0
	   OR  w.LAST2_INVENTORY <> 0)
	   AND w.ITEM_NO = para ;

	cursor C10(para in number)
	is
	SELECT COUNT(*) FROM TRANSACTION t
	WHERE  t.SLIP_DATE >= trunc(add_months(sysdate,-12),'mm')
	 AND   t.ITEM_NO = para ;

	cursor C11(para in number)
	is
	SELECT COUNT(*) FROM  STRUCTURE S
	WHERE   S.UPPER_ITEM_NO = para  
          OR    S.LOWER_ITEM_NO =  para ;

	cursor C12(para in number)
	is
	SELECT COUNT(*) FROM PRODUCT_PLAN   a
	WHERE  a.REMAINDER_QUANTITY > 0
	 AND   a.ITEM_NO = para ;

	WK_CT1			NUMBER(12) :=  0;
	WK_CT2			NUMBER(12) :=  0;
	WK_CT3			NUMBER(12) :=  0;
	WK_CT4			NUMBER(12) :=  0;
	WK_CT5			NUMBER(12) :=  0;
	WK_CT6			NUMBER(12) :=  0;
	WK_CT7			NUMBER(12) :=  0;
	WK_CT8			NUMBER(12) :=  0;
	WK_CT9			NUMBER(12) :=  0;
	WK_CT10			NUMBER(12) :=  0;
	WK_CT11			NUMBER(12) :=  0;
	WK_CT12			NUMBER(12) :=  0;


        v_rc    number(12) ;
        loop_err   EXCEPTION;
        PRAGMA EXCEPTION_INIT (loop_err, -01436);
   begin
            v_rc := 0; 
 
           open c1(v_item_no);
               fetch c1 into WK_CT1;
               if c1%notfound or c1%notfound is null then
                  null;
               else
                 if  WK_CT1 > 0  then 
                     v_rc := v_rc + 1;
                 end if;
               end if;
            close c1;

           open c2(v_item_no);
               fetch c2 into WK_CT2;
               if c2%notfound or c2%notfound is null then
                  null;
               else
                 if  WK_CT2 > 0  then 
                     v_rc := v_rc + 10;
                 end if;
               end if;
            close c2;

           open c3(v_item_no);
               fetch c3 into WK_CT3;
               if c3%notfound or c3%notfound is null then
                  null;
               else
                 if  WK_CT3 > 0  then 
                     v_rc := v_rc + 100;
                 end if;
               end if;
            close c3;

           open c4(v_item_no);
               fetch c4 into WK_CT4;
               if c4%notfound or c4%notfound is null then
                  null;
               else
                 if  WK_CT4 > 0  then 
                     v_rc := v_rc + 1000;
                 end if;
               end if;
            close c4;

           open c5(v_item_no);
               fetch c5 into WK_CT5;
               if c5%notfound or c5%notfound is null then
                  null;
               else
                 if  WK_CT5 > 0  then 
                     v_rc := v_rc + 10000;
                 end if;
               end if;
            close c5;

           open c6(v_item_no);
               fetch c6 into WK_CT6;
               if c6%notfound or c6%notfound is null then
                  null;
               else
                 if  WK_CT6 > 0  then 
                     v_rc := v_rc + 100000;
                 end if;
               end if;
            close c6;

           open c7(v_item_no);
               fetch c7 into WK_CT7;
               if c7%notfound or c7%notfound is null then
                  null;
               else
                 if  WK_CT7 > 0  then 
                     v_rc := v_rc + 1000000;
                 end if;
               end if;
            close c7;

           open c8(v_item_no);
               fetch c8 into WK_CT8;
               if c8%notfound or c8%notfound is null then
                  null;
               else
                 if  WK_CT8 > 0  then 
                     v_rc := v_rc + 10000000;
                 end if;
               end if;
            close c8;

           open c9(v_item_no);
               fetch c9 into WK_CT9;
               if c9%notfound or c9%notfound is null then
                  null;
               else
                 if  WK_CT9 > 0  then 
                     v_rc := v_rc + 100000000;
                 end if;
               end if;
            close c9;

           open c10(v_item_no);
               fetch c10 into WK_CT10;
               if c10%notfound or c10%notfound is null then
                  null;
               else
                 if  WK_CT10 > 0  then 
                     v_rc := v_rc + 1000000000;
                 end if;
               end if;
            close c10;

           open c11(v_item_no);
               fetch c11 into WK_CT11;
               if c11%notfound or c11%notfound is null then
                  null;
               else
                 if  WK_CT11 > 0  then 
                     v_rc := v_rc + 10000000000;
                 end if;
               end if;
            close c11;

           open c12(v_item_no);
               fetch c12 into WK_CT12;
               if c12%notfound or c12%notfound is null then
                  null;
               else
                 if  WK_CT12 > 0  then 
                     v_rc := v_rc + 100000000000;
                 end if;
               end if;
            close c12;

   return(v_rc) ;

    EXCEPTION
       WHEN loop_err THEN
          v_rc := -99;
     return(v_rc) ;
   end;
end CHECK_ITEM_DELETE;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."CHK_ITEM_PHYSICAL_DELETE" (v_item_no in number)
return number
is
begin
   declare
	cursor C1(para in number)
	is
	 SELECT COUNT(*) FROM SO_DETAILS
	  WHERE BAL_QTY >  0 
	    AND ITEM_NO = para;

	cursor C2(para in number)
	is
	SELECT COUNT(*) FROM SR_HEADER h,SR_DETAILS d
	WHERE  h.SR_NO = d.SR_NO
	 AND   h.SR_DATE >= trunc(add_months(sysdate,-3),'mm')
	 AND   d.ITEM_NO = para ;

	cursor C3(para in number)
	is
	 SELECT COUNT(*) FROM PO_DETAILS
	  WHERE BAL_QTY >  0 
	    AND ITEM_NO = para;

	cursor C4(para in number)
	is
	SELECT COUNT(*) FROM PR_HEADER h,PR_DETAILS d
	WHERE  h.PR_NO = d.PR_NO
	 AND   h.PR_DATE >= trunc(add_months(sysdate,-3),'mm')
	 AND   d.ITEM_NO = para ;

	cursor C5(para in number)
	is
	SELECT COUNT(*) FROM ANSWER  a
	WHERE  a.ITEM_NO = para ;

	cursor C6(para in number)
	is
	SELECT COUNT(*) FROM DO_HEADER h,DO_DETAILS d
	WHERE  h.DO_NO = d.DO_NO
	 AND   h.DO_DATE >= trunc(add_months(sysdate,-3),'mm')
	 AND   d.ITEM_NO = para ;

	cursor C7(para in number)
	is
	SELECT COUNT(*) FROM SALES S
	WHERE  S.ITEM_NO = para ;

	cursor C8(para in number)
	is
	SELECT COUNT(*) FROM PURCHASE P
	WHERE  P.ITEM_NO = para ;

	cursor C9(para in number)
	is
	SELECT COUNT(*) FROM  WHINVENTORY w
	 WHERE ( w.THIS_INVENTORY <> 0
	   OR  w.LAST_INVENTORY <> 0
	   OR  w.LAST2_INVENTORY <> 0)
	   AND w.ITEM_NO = para ;

	cursor C10(para in number)
	is
	SELECT COUNT(*) FROM TRANSACTION t
	WHERE  t.ITEM_NO = para ;

	cursor C11(para in number)
	is
	SELECT COUNT(*) FROM  STRUCTURE S
	WHERE   S.UPPER_ITEM_NO = para  
          OR    S.LOWER_ITEM_NO =  para ;

	cursor C12(para in number)
	is
	SELECT COUNT(*) FROM PRODUCT_PLAN   a
	WHERE  a.REMAINDER_QUANTITY > 0
	 AND   a.ITEM_NO = para ;

	WK_CT1			NUMBER(12) :=  0;
	WK_CT2			NUMBER(12) :=  0;
	WK_CT3			NUMBER(12) :=  0;
	WK_CT4			NUMBER(12) :=  0;
	WK_CT5			NUMBER(12) :=  0;
	WK_CT6			NUMBER(12) :=  0;
	WK_CT7			NUMBER(12) :=  0;
	WK_CT8			NUMBER(12) :=  0;
	WK_CT9			NUMBER(12) :=  0;
	WK_CT10			NUMBER(12) :=  0;
	WK_CT11			NUMBER(12) :=  0;
	WK_CT12			NUMBER(12) :=  0;


        v_rc    number(12) ;
        loop_err   EXCEPTION;
        PRAGMA EXCEPTION_INIT (loop_err, -01436);
   begin
            v_rc := 0; 
 
           open c1(v_item_no);
               fetch c1 into WK_CT1;
               if c1%notfound or c1%notfound is null then
                  null;
               else
                 if  WK_CT1 > 0  then 
                     v_rc := v_rc + 1;
                 end if;
               end if;
            close c1;

           open c2(v_item_no);
               fetch c2 into WK_CT2;
               if c2%notfound or c2%notfound is null then
                  null;
               else
                 if  WK_CT2 > 0  then 
                     v_rc := v_rc + 10;
                 end if;
               end if;
            close c2;

           open c3(v_item_no);
               fetch c3 into WK_CT3;
               if c3%notfound or c3%notfound is null then
                  null;
               else
                 if  WK_CT3 > 0  then 
                     v_rc := v_rc + 100;
                 end if;
               end if;
            close c3;

           open c4(v_item_no);
               fetch c4 into WK_CT4;
               if c4%notfound or c4%notfound is null then
                  null;
               else
                 if  WK_CT4 > 0  then 
                     v_rc := v_rc + 1000;
                 end if;
               end if;
            close c4;

           open c5(v_item_no);
               fetch c5 into WK_CT5;
               if c5%notfound or c5%notfound is null then
                  null;
               else
                 if  WK_CT5 > 0  then 
                     v_rc := v_rc + 10000;
                 end if;
               end if;
            close c5;

           open c6(v_item_no);
               fetch c6 into WK_CT6;
               if c6%notfound or c6%notfound is null then
                  null;
               else
                 if  WK_CT6 > 0  then 
                     v_rc := v_rc + 100000;
                 end if;
               end if;
            close c6;

           open c7(v_item_no);
               fetch c7 into WK_CT7;
               if c7%notfound or c7%notfound is null then
                  null;
               else
                 if  WK_CT7 > 0  then 
                     v_rc := v_rc + 1000000;
                 end if;
               end if;
            close c7;

           open c8(v_item_no);
               fetch c8 into WK_CT8;
               if c8%notfound or c8%notfound is null then
                  null;
               else
                 if  WK_CT8 > 0  then 
                     v_rc := v_rc + 10000000;
                 end if;
               end if;
            close c8;

           open c9(v_item_no);
               fetch c9 into WK_CT9;
               if c9%notfound or c9%notfound is null then
                  null;
               else
                 if  WK_CT9 > 0  then 
                     v_rc := v_rc + 100000000;
                 end if;
               end if;
            close c9;

           open c10(v_item_no);
               fetch c10 into WK_CT10;
               if c10%notfound or c10%notfound is null then
                  null;
               else
                 if  WK_CT10 > 0  then 
                     v_rc := v_rc + 1000000000;
                 end if;
               end if;
            close c10;

           open c11(v_item_no);
               fetch c11 into WK_CT11;
               if c11%notfound or c11%notfound is null then
                  null;
               else
                 if  WK_CT11 > 0  then 
                     v_rc := v_rc + 10000000000;
                 end if;
               end if;
            close c11;

           open c12(v_item_no);
               fetch c12 into WK_CT12;
               if c12%notfound or c12%notfound is null then
                  null;
               else
                 if  WK_CT12 > 0  then 
                     v_rc := v_rc + 100000000000;
                 end if;
               end if;
            close c12;

   return(v_rc) ;

    EXCEPTION
       WHEN loop_err THEN
          v_rc := -99;
     return(v_rc) ;
   end;
end CHK_ITEM_PHYSICAL_DELETE;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."CUST_TO_SALES_CHANNELS" (
V_COMPANY_CODE  IN NUMBER,
V_CUSTOMER_CODE IN NUMBER
)
RETURN VARCHAR2
/* ?????????????????? */
IS
   CURSOR C1 (PARA1 IN NUMBER, PARA2 IN NUMBER)
   IS
   SELECT SALES_CHANNELS_CODE
     FROM SALES_CHANNELS_CUSTOMER
    WHERE COMPANY_CODE  = PARA1
      AND CUSTOMER_CODE = PARA2
   ;

   W_SALES_CHANNELS_CODE   VARCHAR2(10) := NULL;
BEGIN
   IF V_COMPANY_CODE = 996130 THEN -- FDK
        IF SUBSTRB(V_CUSTOMER_CODE, 1, 2) IN ('11', '14', '15') THEN -- ????(14)???BTOB(15)???BTOC(11)
       W_SALES_CHANNELS_CODE := SUBSTRB(V_CUSTOMER_CODE, 1, 2);
     ELSE
       W_SALES_CHANNELS_CODE := '00'; -- FDK??
     END IF;
   ELSE -- ENERGY?FI
     OPEN C1(V_COMPANY_CODE, V_CUSTOMER_CODE);
       FETCH C1 INTO W_SALES_CHANNELS_CODE;
       IF C1%NOTFOUND OR C1%NOTFOUND IS NULL THEN
         W_SALES_CHANNELS_CODE := '99';
       END IF;
     CLOSE C1;
   END IF;
   IF V_CUSTOMER_CODE = 996295 THEN
      W_SALES_CHANNELS_CODE := '996295';
    END IF;
   IF V_CUSTOMER_CODE = 996130 THEN
      W_SALES_CHANNELS_CODE := '996295';
    END IF;

   RETURN(W_SALES_CHANNELS_CODE);
END CUST_TO_SALES_CHANNELS;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_ACCPAC_EX_RATE" (
    v_curr_code in number,
    v_month  in date,
    v_rate_type in varchar2  DEFAULT NULL
)
return  number
is
  ex_rate  NUMBER(14,6) ;
  wk_curr_short varchar2(4) ;
begin
    if v_curr_code = 1 then 
        ex_rate := 1;
    else
        select curr_short into wk_curr_short
        from currency 
         where curr_code = v_curr_code;

        select a.EXC_RT into ex_rate
         from   KSMTRATE_TBL a
         where  a.OPEN_DT     = v_month         --????????TX?????????BI??????
           and  a.SRC_CURR_CD =  wk_curr_short  --???????
           and  a.EXC_TP      = 'TX'            --??????????
           and  a.RES_CURR_CD = 'USD'           --??????
           and  a.CO_CD       = '74'            --?????    return(ex_rate) ;
        ;
    end if;
    return(ex_rate) ;
End ;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_BUD_CURR" (
    v_curr_code in NUMBER,
    v_ym in DATE
)
return  NUMBER
is
  us_rate   NUMBER(14,6) ;
  ac_period NUMBER(5) ;

begin
    ac_period := GET_PERIOD(v_ym) ;
    
    select us_rate into us_rate
    from   budget_currency
    where  curr_code   = v_curr_code
      and  period_type = ac_period
    ;
    return(us_rate) ;
end ;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_DATE_CODE" (
	v_sod_etd in date,
	v_item_no in number
)
return  varchar2
is
	w_date_code  SO_DETAILS.DATE_CODE%type;

begin
	if v_item_no is null or v_sod_etd is null then
		return null;
	end if;
	
	select to_char(add_months(trunc(v_sod_etd, 'MM'), nvl(i.DATE_CODE_MONTH, 0)), RTRIM(i.DATE_CODE_TYPE))
             into w_date_code
	from   ITEM i
	where  i.ITEM_NO        = v_item_no
	  and  RTRIM(i.DATE_CODE_TYPE) = 'MM-YYYY'
	;

    return(w_date_code) ;
End ;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_EX_RATE" (
    v_curr_code in number,
    v_month  in date,
    v_rate_type in varchar2  DEFAULT NULL
)
return  number
is
  ex_rate  NUMBER(14,6) ;
begin
    select rate into ex_rate
    from ex_rate
    where curr_code = v_curr_code
      and trunc(ex_date,'mm') = trunc(v_month,'mm')
    ;
    return(ex_rate) ;
End ;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_LAST_EX_RATE" (
    v_curr_code in number,
    v_month  in date,
    v_rate_type in varchar2  DEFAULT NULL
)
return  number
is
  wk_ex_rate  NUMBER(14,6) :=0 ;
begin
DECLARE
CURSOR C1 IS 
    select rate 
    from ex_rate
    where curr_code = v_curr_code
      and trunc(ex_date,'mm') = trunc(v_month,'mm')
    ;
CURSOR C2 IS 
    select rate 
    from ex_rate
    where curr_code = v_curr_code
      and trunc(ex_date,'mm') =add_months(trunc(v_month,'mm'),-1)
    ;
begin
 open c1 ;
 fetch c1 into wk_ex_rate ;
 if c1%notfound then
    open c2 ;
    fetch c2 into wk_ex_rate ;
      if c2%notfound then
        select rate into wk_ex_rate
        from ex_rate
        where curr_code = v_curr_code
          and trunc(ex_date,'mm') = add_months(trunc(v_month,'mm'),-2)
        ;
      end if;
   close c2;

  end if;
 close c1;

    return(wk_ex_rate) ;
END;
End ;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_LLC" (v_item_no in number)
return number
is
begin
   declare
        v_llc    number(3) ;
        loop_err   EXCEPTION;
        PRAGMA EXCEPTION_INIT (loop_err, -01436);
   begin

   if v_item_no is not null Then
         select
           nvl(max(level),0) into v_llc
           from structure
          start with lower_item_no = v_item_no
          connect by prior upper_item_no = lower_item_no;
   Else
       v_llc := null ;
   End If ;

   return(v_llc) ;

    EXCEPTION
       WHEN loop_err THEN
          v_llc := -99;
     return(v_llc) ;
   end;
end GET_LLC;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_NENDO" ( p_ym IN VARCHAR2 )
RETURN VARCHAR2
AS
BEGIN
  DECLARE
    wk_nendo VARCHAR2(4);
    wk_y     NUMBER(4) := to_number(substr(p_ym, 1, 4));
    wk_m     NUMBER(2) := to_number(substr(p_ym, 5, 2));

  BEGIN
    IF wk_m >= 1 AND wk_m <= 3 THEN
      wk_nendo := to_char(wk_y - 1);
    ELSE
      wk_nendo := to_char(wk_y);
    END IF;

    RETURN wk_nendo;
  END;
END GET_NENDO;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_NEW_ACCTID" (
    v_old_code in varchar2
)
/***************************************************
         ACCTID?????????
         2014/10/6 Y.HAGAI
         XXXXX-YY? AAA-BBB

****************************************************/

return  varchar2
is
    wk_new_code  varchar2(20) := null ;
begin
DECLARE
CURSOR C1 IS 
    select NEW1_AC_CD || '-' || NEW2_SUB_CD  from  ks40.CONV_ACCT 
    where substrb(v_old_code,1,5) = OLD1_AC_CD(+)
      and substrb(v_old_code,7,2) = OLD2_PTL_CD(+)
    order by 1;
begin
 open c1 ;
 fetch c1 into wk_new_code ;
 if c1%notfound then
        wk_new_code := v_old_code ;
       
  end if;
 close c1;

    return(wk_new_code) ;
END;
End ;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_NEW_ACCTID2" (
    v_old_code in varchar2
)
/***************************************************
         ACCTID??????????
         2014/10/6 Y.HAGAI
         XXXXXYY? AAABBB
****************************************************/
return  varchar2
is
    wk_new_code  varchar2(20) := null ;
begin
DECLARE
CURSOR C1 IS 
    select NEW1_AC_CD || NEW2_SUB_CD  from  ks40.CONV_ACCT 
    where substrb(v_old_code,1,5) = OLD1_AC_CD(+)
      and substrb(v_old_code,6,2) = OLD2_PTL_CD(+)
    order by 1;
begin
 open c1 ;
 fetch c1 into wk_new_code ;
 if c1%notfound then
        wk_new_code := v_old_code ;
       
  end if;
 close c1;

    return(wk_new_code) ;
END;
End ;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_NEW_ACCTID3" (
    v_old_code in varchar2
)
/***************************************************
         ACCTID??????????
         2014/10/6 Y.HAGAI
         XXXXXYYZZZZZZ ? AAABBBCCC
         5300530311090 ? AAABBBCCC
****************************************************/
return  varchar2
is
    wk_new_code  varchar2(20) := null ;
begin
DECLARE
CURSOR C1 IS 
    select NEW1_AC_CD || NEW2_SUB_CD || NEW3_SEC_CD from  ks40.CONV_ACCT 
    where substrb(v_old_code,1,5) = OLD1_AC_CD(+)
      and substrb(v_old_code,6,2) = OLD2_PTL_CD(+)
      and substrb(v_old_code,8,6) = OLD3_SEC_CD(+)
    order by 1;
begin
 open c1 ;
 fetch c1 into wk_new_code ;
 if c1%notfound then
        wk_new_code := v_old_code ;
       
  end if;
 close c1;

    return(wk_new_code) ;
END;
End ;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_PACKING_CARTON" 
/*----------------------------------------------------------------------
  FUNCTION: ??????????????? (GET_PACKING_CARTON)
?
  ????:
      Item_No:      ?????  (IN)
      Qty:          ??        (IN)
  ???:
      ?????
----------------------------------------------------------------------
  2016/03/16  H.Suzuki      ????
----------------------------------------------------------------------*/
(
	Item_No			in		number,
	Qty				in		number
)
	return					number
as
/*
declare
	Item_No			number(8)		:= 12345678;
	Qty				number(14,3)	:= 1;
*/
/*---------- ?? ----------*/
	l_pieces		number(17,3)	:= null;
	l_carton		number(10,0)	:= null;
	l_pallet		number(10,0)	:= null;
	l_grs_weight	number(32,8)	:= null;
	l_net_weight	number(32,8)	:= null;
	l_mesurement	number(32,8)	:= null;
/*---------- ??? ----------*/
begin
	PACKING_SIZE_CALC(Item_No, Qty,
				l_pieces, l_carton, l_pallet, l_net_weight, l_grs_weight, l_mesurement);
	return l_carton;
end;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_PACKING_CARTON_SI" 
/*----------------------------------------------------------------------
  FUNCTION: ???????????????(??????) (GET_PACKING_CARTON_SI)
?
  ????:
      Si_No:        ??????(IN)
  ???:
      ?????
----------------------------------------------------------------------
  2016/03/16  H.Suzuki      ????
----------------------------------------------------------------------*/
(
	Si_No			in		varchar2
)
	return					number
as
/*
declare
	Si_No			varchar2(20)	:= '1234567890';
*/
/*---------- ?? ----------*/
	l_pieces		number(17,3)	:= null;
	l_carton		number(10,0)	:= null;
	l_pallet		number(10,0)	:= null;
	l_grs_weight	number(32,8)	:= null;
	l_net_weight	number(32,8)	:= null;
	l_mesurement	number(32,8)	:= null;
/*---------- ??? ----------*/
begin
	PACKING_SIZE_CALC_SI(Si_No,
				l_pieces, l_carton, l_pallet, l_net_weight, l_grs_weight, l_mesurement);
	return l_carton;
end;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_PACKING_GROSS_WEIGHT" 
/*----------------------------------------------------------------------
  FUNCTION: ????????????? (GET_PACKING_GROSS_WEIGHT)
?
  ????:
      Item_No:      ?????  (IN)
      Qty:          ??        (IN)
  ???:
      ???
----------------------------------------------------------------------
  2016/03/16  H.Suzuki      ????
----------------------------------------------------------------------*/
(
	Item_No			in		number,
	Qty				in		number
)
	return					number
as
/*
declare
	Item_No			number(8)		:= 12345678;
	Qty				number(14,3)	:= 1;
*/
/*---------- ?? ----------*/
	l_pieces		number(17,3)	:= null;
	l_carton		number(10,0)	:= null;
	l_pallet		number(10,0)	:= null;
	l_grs_weight	number(32,8)	:= null;
	l_net_weight	number(32,8)	:= null;
	l_mesurement	number(32,8)	:= null;
/*---------- ??? ----------*/
begin
	PACKING_SIZE_CALC(Item_No, Qty,
				l_pieces, l_carton, l_pallet, l_net_weight, l_grs_weight, l_mesurement);
	return l_grs_weight;
end;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_PACKING_GROSS_WEIGHT_SI" 
/*----------------------------------------------------------------------
  FUNCTION: ????????????? (GET_PACKING_GROSS_WEIGHT_SI)
?
  ????:
      Si_No:        ??????(IN)
  ???:
      ???
----------------------------------------------------------------------
  2016/03/16  H.Suzuki      ????
----------------------------------------------------------------------*/
(
	Si_No			in		varchar2
)
	return					number
as
/*
declare
	Si_No			varchar2(20)	:= '1234567890';
*/
/*---------- ?? ----------*/
	l_pieces		number(17,3)	:= null;
	l_carton		number(10,0)	:= null;
	l_pallet		number(10,0)	:= null;
	l_grs_weight	number(32,8)	:= null;
	l_net_weight	number(32,8)	:= null;
	l_mesurement	number(32,8)	:= null;
/*---------- ??? ----------*/
begin
	PACKING_SIZE_CALC_SI(Si_No,
				l_pieces, l_carton, l_pallet, l_net_weight, l_grs_weight, l_mesurement);
	return l_grs_weight;
end;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_PACKING_MESUREMENT" 
/*----------------------------------------------------------------------
  FUNCTION: ???????????? (GET_PACKING_MESUREMENT)
?
  ????:
      Item_No:      ?????  (IN)
      Qty:          ??        (IN)
  ???:
      ??
----------------------------------------------------------------------
  2016/03/16  H.Suzuki      ????
----------------------------------------------------------------------*/
(
	Item_No			in		number,
	Qty				in		number
)
	return					number
as
/*
declare
	Item_No			number(8)		:= 12345678;
	Qty				number(14,3)	:= 1;
*/
/*---------- ?? ----------*/
	l_pieces		number(17,3)	:= null;
	l_carton		number(10,0)	:= null;
	l_pallet		number(10,0)	:= null;
	l_grs_weight	number(32,8)	:= null;
	l_net_weight	number(32,8)	:= null;
	l_mesurement	number(32,8)	:= null;
/*---------- ??? ----------*/
begin
	PACKING_SIZE_CALC(Item_No, Qty,
				l_pieces, l_carton, l_pallet, l_net_weight, l_grs_weight, l_mesurement);
	return l_mesurement;
end;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_PACKING_MESUREMENT_SI" 
/*----------------------------------------------------------------------
  FUNCTION: ????????????(??????) (GET_PACKING_MESUREMENT_SI)
?
  ????:
      Si_No:        ??????(IN)
  ???:
      ??
----------------------------------------------------------------------
  2016/03/16  H.Suzuki      ????
----------------------------------------------------------------------*/
(
	Si_No			in		varchar2
)
	return					number
as
/*
declare
	Si_No			varchar2(20)	:= '1234567890';
*/
/*---------- ?? ----------*/
	l_pieces		number(17,3)	:= null;
	l_carton		number(10,0)	:= null;
	l_pallet		number(10,0)	:= null;
	l_grs_weight	number(32,8)	:= null;
	l_net_weight	number(32,8)	:= null;
	l_mesurement	number(32,8)	:= null;
/*---------- ??? ----------*/
begin
	PACKING_SIZE_CALC_SI(Si_No,
				l_pieces, l_carton, l_pallet, l_net_weight, l_grs_weight, l_mesurement);
	return l_mesurement;
end;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_PACKING_NET_WEIGHT" 
/*----------------------------------------------------------------------
  FUNCTION: ?????????????? (GET_PACKING_NET_WEIGHT)
?
  ????:
      Item_No:      ?????  (IN)
      Qty:          ??        (IN)
  ???:
      ????
----------------------------------------------------------------------
  2016/03/16  H.Suzuki      ????
----------------------------------------------------------------------*/
(
	Item_No			in		number,
	Qty				in		number
)
	return					number
as
/*
declare
	Item_No			number(8)		:= 12345678;
	Qty				number(14,3)	:= 1;
*/
/*---------- ?? ----------*/
	l_pieces		number(17,3)	:= null;
	l_carton		number(10,0)	:= null;
	l_pallet		number(10,0)	:= null;
	l_grs_weight	number(32,8)	:= null;
	l_net_weight	number(32,8)	:= null;
	l_mesurement	number(32,8)	:= null;
/*---------- ??? ----------*/
begin
	PACKING_SIZE_CALC(Item_No, Qty,
				l_pieces, l_carton, l_pallet, l_net_weight, l_grs_weight, l_mesurement);
	return l_net_weight;
end;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_PACKING_NET_WEIGHT_SI" 
/*----------------------------------------------------------------------
  FUNCTION: ??????????????(??????) (GET_PACKING_NET_WEIGHT_SI)
?
  ????:
      Si_No:        ??????(IN)
  ???:
      ????
----------------------------------------------------------------------
  2016/03/16  H.Suzuki      ????
----------------------------------------------------------------------*/
(
	Si_No			in		varchar2
)
	return					number
as
/*
declare
	Si_No			varchar2(20)	:= '1234567890';
*/
/*---------- ?? ----------*/
	l_pieces		number(17,3)	:= null;
	l_carton		number(10,0)	:= null;
	l_pallet		number(10,0)	:= null;
	l_grs_weight	number(32,8)	:= null;
	l_net_weight	number(32,8)	:= null;
	l_mesurement	number(32,8)	:= null;
/*---------- ??? ----------*/
begin
	PACKING_SIZE_CALC_SI(Si_No,
				l_pieces, l_carton, l_pallet, l_net_weight, l_grs_weight, l_mesurement);
	return l_net_weight;
end;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_PACKING_PALLET" 
/*----------------------------------------------------------------------
  FUNCTION: ??????????????? (GET_PACKING_PALLET)
?
  ????:
      Item_No:      ?????  (IN)
      Qty:          ??        (IN)
  ???:
      ?????
----------------------------------------------------------------------
  2016/03/16  H.Suzuki      ????
----------------------------------------------------------------------*/
(
	Item_No			in		number,
	Qty				in		number
)
	return					number
as
/*
declare
	Item_No			number(8)		:= 12345678;
	Qty				number(14,3)	:= 1;
*/
/*---------- ?? ----------*/
	l_pieces		number(17,3)	:= null;
	l_carton		number(10,0)	:= null;
	l_pallet		number(10,0)	:= null;
	l_grs_weight	number(32,8)	:= null;
	l_net_weight	number(32,8)	:= null;
	l_mesurement	number(32,8)	:= null;
/*---------- ??? ----------*/
begin
	PACKING_SIZE_CALC(Item_No, Qty,
				l_pieces, l_carton, l_pallet, l_net_weight, l_grs_weight, l_mesurement);
	return l_pallet;
end;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_PACKING_PALLET_SI" 
/*----------------------------------------------------------------------
  FUNCTION: ???????????????(??????) (GET_PACKING_PALLET_SI)
?
  ????:
      Si_No:        ??????(IN)
  ???:
      ?????
----------------------------------------------------------------------
  2016/03/16  H.Suzuki      ????
----------------------------------------------------------------------*/
(
	Si_No			in		varchar2
)
	return					number
as
/*
declare
	Si_No			varchar2(20)	:= '1234567890';
*/
/*---------- ?? ----------*/
	l_pieces		number(17,3)	:= null;
	l_carton		number(10,0)	:= null;
	l_pallet		number(10,0)	:= null;
	l_grs_weight	number(32,8)	:= null;
	l_net_weight	number(32,8)	:= null;
	l_mesurement	number(32,8)	:= null;
/*---------- ??? ----------*/
begin
	PACKING_SIZE_CALC_SI(Si_No,
				l_pieces, l_carton, l_pallet, l_net_weight, l_grs_weight, l_mesurement);
	return l_pallet;
end;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_PACKING_PIECES" 
/*----------------------------------------------------------------------
  FUNCTION: ?????????????? (GET_PACKING_PIECES)
?
  ????:
      Item_No:      ?????  (IN)
      Qty:          ??        (IN)
  ???:
      ????
----------------------------------------------------------------------
  2016/03/16  H.Suzuki      ????
----------------------------------------------------------------------*/
(
	Item_No			in		number,
	Qty				in		number
)
	return					number
as
/*
declare
	Item_No			number(8)		:= 12345678;
	Qty				number(14,3)	:= 1;
*/
/*---------- ?? ----------*/
	l_pieces		number(17,3)	:= null;
	l_carton		number(10,0)	:= null;
	l_pallet		number(10,0)	:= null;
	l_grs_weight	number(32,8)	:= null;
	l_net_weight	number(32,8)	:= null;
	l_mesurement	number(32,8)	:= null;
/*---------- ??? ----------*/
begin
	PACKING_SIZE_CALC(Item_No, Qty,
				l_pieces, l_carton, l_pallet, l_net_weight, l_grs_weight, l_mesurement);
	return l_pieces;
end;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_PACKING_PIECES_SI" 
/*----------------------------------------------------------------------
  FUNCTION: ??????????????(??????) (GET_PACKING_PIECES_SI)
?
  ????:
      Si_No:        ??????(IN)
  ???:
      ????
----------------------------------------------------------------------
  2016/03/16  H.Suzuki      ????
----------------------------------------------------------------------*/
(
	Si_No			in		varchar2
)
	return					number
as
/*
declare
	Si_No			varchar2(20)	:= '1234567890';
*/
/*---------- ?? ----------*/
	l_pieces		number(17,3)	:= null;
	l_carton		number(10,0)	:= null;
	l_pallet		number(10,0)	:= null;
	l_grs_weight	number(32,8)	:= null;
	l_net_weight	number(32,8)	:= null;
	l_mesurement	number(32,8)	:= null;
/*---------- ??? ----------*/
begin
	PACKING_SIZE_CALC_SI(Si_No,
				l_pieces, l_carton, l_pallet, l_net_weight, l_grs_weight, l_mesurement);
	return l_pieces;
end;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_PERIOD" 
  (ac_date in date)
  return number
    is
         ac_period number(5) ;
    begin
      select to_char(add_months(ac_date,-3),'YYYY') || decode(to_char(add_months(ac_date,-3),'Q'),1,1,2,1,3,2,4,2) into ac_period
    from dual ;
  return(ac_period) ;
  End ;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_RATE_BS" 
/*--- ????? ---*/
   (P_DATE IN DATE, P_CURR IN NUMBER)
   RETURN NUMBER
AS
BEGIN
   DECLARE
      CURSOR C1 (PARA1 IN DATE, PARA2 IN NUMBER)
      IS
      SELECT NVL(YEN_RATE, 0)
        FROM GORDER_CURRENCY_RATE
       WHERE COMPANY_CODE = 996130
         AND EX_DATE = TRUNC(PARA1, 'MM')
         AND CURR_CODE = PARA2;

      RATE   GORDER_CURRENCY_RATE.YEN_RATE%TYPE;
   BEGIN
      OPEN C1 (P_DATE, P_CURR);
         FETCH C1 INTO RATE;
         IF C1%NOTFOUND OR C1%NOTFOUND IS NULL THEN
            RATE := 0;
         END IF;
      CLOSE C1;

      RETURN(RATE);
   END;
END GET_RATE_BS;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."GET_STANDARD_PRICE" (
    v_item_no in number,
    v_month  in date
)
return  number
as
begin
  declare
   cursor c1(para in number)
     is
     select standard_price
       from item
      where  item_no = para;

       wk_standard_price item.standard_price%type  := 0;

  begin
            open c1(v_item_no);
               fetch c1 into wk_standard_price;
               if c1%notfound or c1%notfound is null then
                  wk_standard_price := 0;
                end if;
            close c1;
      return(wk_standard_price) ;
   end ;
end get_standard_price;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."LIST_COLLECT" (
    p_SI_NO VARCHAR2,
    P_DELIMITER IN VARCHAR2 := NULL
)
RETURN VARCHAR2
IS
    lv_List     VARCHAR2(32767);

    CURSOR cur_get_po IS
        SELECT PO_NO
          FROM SI_PO
         WHERE SI_NO = p_SI_NO
         ORDER BY LINE_NO
        ;
BEGIN
    FOR rec_get_po IN cur_get_po LOOP
        IF lv_List IS NULL THEN
            lv_List := rec_get_po.PO_NO;
        ELSE
            lv_List := lv_List || P_DELIMITER || rec_get_po.PO_NO;
        END IF;
    END LOOP;

    RETURN lv_List;
END;

/
 

  CREATE OR REPLACE FUNCTION "PORDER"."ROUNDUP" (P_NUM IN NUMBER, P_PLACE IN INTEGER := 0)
RETURN NUMBER
/*
 * ??????????????
 *
 * @param  : P_NUM     ??
 * @param  : [P_PLACE] ???????????????????????
 * @return : ?????????
 *
 * @samples:
 *   SELECT ROUNDUP(123.456) FROM DUAL    --> 124
 *   SELECT ROUNDUP(123.456,1) FROM DUAL  --> 123.5
 *   SELECT ROUNDUP(123.456,-1) FROM DUAL --> 130
 */
IS
	wk_value NUMBER;

BEGIN

	IF P_NUM is null THEN
		RETURN null;
	ELSIF P_NUM = 0 THEN
		RETURN 0;
	END IF;

	wk_value := nvl(10 ** P_PLACE, 1);
	RETURN ceil( abs (P_NUM) * wk_value) / wk_value * sign(P_NUM);

EXCEPTION
	WHEN OTHERS THEN
		RETURN null;
END;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."SPEC_TO_SALES_CHANNELS_FI" (
PARA1 IN NUMBER -- ??1
)
RETURN VARCHAR2
/* ??1???????????? */
IS
   WK                      VARCHAR2(2);
   W_SALES_CHANNELS_CODE   VARCHAR2(10);
BEGIN

   WK := TO_NUMBER(SUBSTRB(SUBSTRB('000000' || PARA1, -6, 6), 1, 2));

   IF (WK >= 0 AND WK <= 59) THEN           -- ??
     W_SALES_CHANNELS_CODE := '00'; 
   ELSIF (WK >= 60 AND WK <= 69) THEN       -- ??
     W_SALES_CHANNELS_CODE := '14'; 
   ELSIF (WK = 70) THEN                     -- ?????????
     W_SALES_CHANNELS_CODE := '99'; 
   ELSIF (WK >= 71 AND WK <= 79) THEN       -- ??
     W_SALES_CHANNELS_CODE := to_char(WK);
   ELSIF (WK = 80) THEN
     W_SALES_CHANNELS_CODE := to_char(WK);
   ELSIF (WK = 81) THEN                    -- ??
     W_SALES_CHANNELS_CODE := '14'; 
   ELSIF (WK >= 91 AND WK <= 92) THEN      -- ??
     W_SALES_CHANNELS_CODE := '11'; 
   ELSE
     W_SALES_CHANNELS_CODE := to_char(WK);
   END IF;

   RETURN(W_SALES_CHANNELS_CODE);

END SPEC_TO_SALES_CHANNELS_FI;
/
 

  CREATE OR REPLACE FUNCTION "PORDER"."ZFN_FACT" (v_wo_no varchar,v_plt_no number, v_id varchar) 
RETURN varchar  
IS 
   f varchar(60) := 'x';
   jum number;
BEGIN 
   
   select count(*) into jum from mps_header where work_order = v_wo_no;
   
   IF jum=0 THEN 
      f := 'BARCODE INI SUDAH TIDAK ADA !';
      return f;
   END IF; 
  
   jum:=0;
   
   select count(*) into jum from 
   (select slip_no from production_income where wo_no = v_wo_no and remark3 = 'Barcode')tt 
   where tt.slip_no in (select id  from ztb_p_plan where wo_no = v_wo_no and plt_no = v_plt_no);
   
   IF jum>0 THEN 
      f := 'BARCODE INI SUDAH PERNAH DI SCAN !';
      return f;
   END IF; 
   
   
   jum:=0;
   
   
   select count(*) into jum from ztb_kanban aa inner join ztb_m_plan bb on aa.id = bb.id   
   where bb.wo_no = v_wo_no and bb.plt_no = v_plt_no;

   
   IF jum=0 THEN 
      f := 'SILAHKAN LAKUKAN MATERIAL CHECKER DAHULU.';
      return f;
   END IF; 
   
   jum := 0;
  
   select  count(*) into jum from ztb_pck_status bb  where bb.wo = v_wo_no and bb.plt_no = v_plt_no;
   
   IF jum=0 THEN 
      f := 'Y';
      return f;
   END IF;
   
RETURN f; 
END; 
/
 
