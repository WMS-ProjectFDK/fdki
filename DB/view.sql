
  --CREATE OR REPLACE FORCE VIEW "PORDER"."DO_SO" ("DO_NO", "LINE_NO", "ORIGIN_CODE", "ITEM_NO", "CUSTOMER_PART_NO", "U_PRICE", "QTY", "CUSTOMER_PO_NO", "CUSTOMER_PO_LINE_NO", "DESCRIPTION", "REMARKS2", "SO_NO", "SO_LINE_NO", "ANSWER_NO", "SO_QTY", "UOM_Q", "SEQ") AS 
create view DO_SO AS

  select do.do_no, do.line_no, do.origin_code, do.item_no, do.customer_part_no, do.u_price, do.qty1 qty, do.customer_po_no1 customer_po_no, so.customer_po_line_no, do.description, do.remark2, do.so_no1 so_no, do.so_line_no1 so_line_no, do.answer_no1 answer_no, do.qty1 so_qty, do.uom_q, 1 as SEQ
  from do_details do,
       so_details so
 where do.so_no1 is not null
   and do.so_no1 = so.so_no
   and do.so_line_no1 = so.line_no
--2
union all 
select do.do_no, do.line_no, do.origin_code, do.item_no, do.customer_part_no, do.u_price, do.qty2 qty, do.customer_po_no2 customer_po_no, so.customer_po_line_no, do.description, do.remark2, do.so_no2 so_no, do.so_line_no2 so_line_no, do.answer_no2 answer_no, do.qty2 so_qty, do.uom_q, 2
  from do_details do,
       so_details so
 where do.so_no2 is not null
   and do.so_no2 = so.so_no
   and do.so_line_no2 = so.line_no
--3
union all 
select do.do_no, do.line_no, do.origin_code, do.item_no, do.customer_part_no, do.u_price, do.qty3 qty, do.customer_po_no3 customer_po_no, so.customer_po_line_no, do.description, do.remark2, do.so_no3 so_no, do.so_line_no3 so_line_no, do.answer_no3 answer_no, do.qty3 so_qty, do.uom_q, 3
  from do_details do,
       so_details so
 where do.so_no3 is not null
   and do.so_no3 = so.so_no
   and do.so_line_no3 = so.line_no
--4
union all 
select do.do_no, do.line_no, do.origin_code, do.item_no, do.customer_part_no, do.u_price, do.qty4 qty, do.customer_po_no4 customer_po_no, so.customer_po_line_no, do.description, do.remark2, do.so_no4 so_no, do.so_line_no4 so_line_no, do.answer_no4 answer_no, do.qty4 so_qty, do.uom_q, 4
  from do_details do,
       so_details so
 where do.so_no4 is not null
   and do.so_no4 = so.so_no
   and do.so_line_no4 = so.line_no
--5
union all 
select do.do_no, do.line_no, do.origin_code, do.item_no, do.customer_part_no, do.u_price, do.qty5 qty, do.customer_po_no5 customer_po_no, so.customer_po_line_no, do.description, do.remark2, do.so_no5 so_no, do.so_line_no5 so_line_no, do.answer_no5 answer_no, do.qty5 so_qty, do.uom_q, 5
  from do_details do,
       so_details so
 where do.so_no5 is not null
   and do.so_no5 = so.so_no
   and do.so_line_no5 = so.line_no
--6
union all 
select do.do_no, do.line_no, do.origin_code, do.item_no, do.customer_part_no, do.u_price, do.qty6 qty, do.customer_po_no6 customer_po_no, so.customer_po_line_no, do.description, do.remark2, do.so_no6 so_no, do.so_line_no6 so_line_no, do.answer_no6 answer_no, do.qty6 so_qty, do.uom_q, 6
  from do_details do,
       so_details so
 where do.so_no6 is not null
   and do.so_no6 = so.so_no
   and do.so_line_no6 = so.line_no
--7
union all 
select do.do_no, do.line_no, do.origin_code, do.item_no, do.customer_part_no, do.u_price, do.qty7 qty, do.customer_po_no7 customer_po_no, so.customer_po_line_no, do.description, do.remark2, do.so_no7 so_no, do.so_line_no7 so_line_no, do.answer_no7 answer_no, do.qty7 so_qty, do.uom_q, 7
  from do_details do,
       so_details so
 where do.so_no7 is not null
   and do.so_no7 = so.so_no
   and do.so_line_no7 = so.line_no
--8
union all 
select do.do_no, do.line_no, do.origin_code, do.item_no, do.customer_part_no, do.u_price, do.qty8 qty, do.customer_po_no8 customer_po_no, so.customer_po_line_no, do.description, do.remark2, do.so_no8 so_no, do.so_line_no8 so_line_no, do.answer_no8 answer_no, do.qty8 so_qty, do.uom_q, 8
  from do_details do,
       so_details so
 where do.so_no8 is not null
   and do.so_no8 = so.so_no
   and do.so_line_no8 = so.line_no
--9
union all 
select do.do_no, do.line_no, do.origin_code, do.item_no, do.customer_part_no, do.u_price, do.qty9 qty, do.customer_po_no9 customer_po_no, so.customer_po_line_no, do.description, do.remark2, do.so_no9 so_no, do.so_line_no9 so_line_no, do.answer_no9 answer_no, do.qty9 so_qty, do.uom_q, 9
  from do_details do,
       so_details so
 where do.so_no9 is not null
   and do.so_no9 = so.so_no
   and do.so_line_no9 = so.line_no
--10
union all 
select do.do_no, do.line_no, do.origin_code, do.item_no, do.customer_part_no, do.u_price, do.qty10 qty, do.customer_po_no10 customer_po_no, so.customer_po_line_no, do.description, do.remark2, do.so_no10 so_no, do.so_line_no10 so_line_no, do.answer_no10 answer_no, do.qty10 so_qty, do.uom_q, 10
  from do_details do,
       so_details so
 where do.so_no10 is not null
   and do.so_no10 = so.so_no
   and do.so_line_no10 = so.line_no;
 

--   CREATE OR REPLACE FORCE VIEW "PORDER"."LEVEL1" ("LEVEL_CONT_KEY", "NEW_LEVEL_NO") AS 
--   (select level_cont_key, max(level_no) as new_level_no
-- from leveld
-- group by level_cont_key )
-- ;
 

  -- CREATE OR REPLACE FORCE VIEW "PORDER"."P91STRUCT_ECD_VIEW" ("OPERATION_DATE", "UPPER_ITEM_NO", "LEVEL_NO", "LOWER_ITEM_NO", "LINE_NO", "REFERENCE_NUMBER", "QUANTITY", "FAILURE_RATE", "USER_SUPPLY_FLAG", "SUBCON_SUPPLY_FLAG", "QUANTITY_BASE") AS 
  -- select OPERATION_DATE,  UPPER_ITEM_NO, 
	--        LEVEL_NO, LOWER_ITEM_NO, LINE_NO, REFERENCE_NUMBER, QUANTITY, 
	--        FAILURE_RATE,  USER_SUPPLY_FLAG, 
	--        SUBCON_SUPPLY_FLAG, QUANTITY_BASE
	--   from STRUCTURE a
	--  where (a.UPPER_ITEM_NO, a.LEVEL_NO)
	--     in (select x.ITEM_NO
	--              , x.LEVEL_NO
	--           from LEVELD x
	--          where (x.LEVEL_CONT_KEY, x.LEVEL_NO)
	--             in (select y.LEVEL_CONT_KEY, max(y.LEVEL_NO)
	--                   from LEVELD y
	--                  group by
	--                        y.LEVEL_CONT_KEY));
 

 create view PO_DETAILS_LAST_VIEW as

  select pd.PO_NO, pd.LINE_NO, pd.ITEM_NO, pd.ORIGIN_CODE, pd.QTY, pd.BAL_QTY + ISNULL(pd.QTY_GR,0) - ISNULL(pd.QTY_PR,0) bal_qty,pd.ETA, pd.SCHEDULE from po_header ph,(
select a.PO_NO, a.LINE_NO, a.ITEM_NO, a.ORIGIN_CODE, a.QTY, a.BAL_QTY,  a.ETA, a.SCHEDULE, b.PO_NO po_no_gr,b.PO_LINE_NO PO_LINE_NO_gr,b.QTY qty_gr,c.PO_NO po_no_pr,c.PO_LINE_NO po_line_no_pr,c.QTY qty_pr from po_details a,
(
select po_no,po_line_no,sum(ISNULL(qty,0)) qty from 
(select  d.PO_NO,d.PO_LINE_NO,d.QTY from gr_header h,GR_DETAILS d
where h.GR_NO = d.GR_NO
 and FORMAT(h.GR_DATE,'yyyymm')>= (select  distinct THIS_MONTH from WHINVENTORY))aa
group by po_no,po_line_no) b,
(
select po_no,po_line_no,sum(ISNULL(qty,0)) qty from 
(select d.PO_NO,d.PO_LINE_NO,d.QTY from pr_header h,pR_DETAILS d
where h.PR_NO= d.pR_NO
 and FORMAT(h.pr_DATE,'yyyymm')>=  (select  distinct THIS_MONTH from WHINVENTORY))aa
group by po_no,po_line_no) c
where a.PO_NO = b.PO_NO
 and a.LINE_NO = b.PO_LINE_NO
 and a.PO_NO = c.PO_NO
 and a.LINE_NO = c.PO_LINE_NO
 and a.ETA >= dateadd(month,-12,getdate()) pd
where ph.PO_NO = pd.po_no
 and pd.BAL_QTY + ISNULL(pd.QTY_GR,0) - ISNULL(pd.QTY_PR,0) > 0;
 

--   CREATE OR REPLACE FORCE VIEW "PORDER"."SALES_CHANNELS_AMT_MONTH_WK" ("FISCAL_MONTH", "COMPANY_CODE", "COMPANY_NAME", "SALES_CHANNELS_CODE", "SALES_CHANNELS_NAME", "CLASS_CODE", "CLASS_NAME_1", "CLASS_NAME_2", "CLASS_NAME_3", "CLASS_NAME_4", "CLASS_NAME_5", "ITEM_NO", "ITEM_NAME", "PACK_NUM", "FACTORY_TYPE", "SPEC_1", "ITEM_TYPE", "GRADE_CODE", "PACKING_TYPE", "PACKING_NAME", "MAKER", "QTY", "QTY_CELL", "SP_CURR_CODE_ORG", "CURR_NAME_ORG", "SP_ORG", "SALES_AMT_ORG", "SP_CURR_CODE_ACC", "CURR_NAME_ACC", "RATE_ACC", "SP_ACC", "SALES_AMT_ACC", "RATE_YEN", "SP_YEN", "SALES_AMT_YEN", "REG_DATE") AS 
--   SELECT X.FISCAL_MONTH,
--        X.COMPANY_CODE,
--        COM.COMPANY AS COMPANY_NAME,
--        X.SALES_CHANNELS_CODE,
--        D.SALES_CHANNELS_NAME,
--        I.?C AS CLASS_CODE,
--        CL.CLASS_1 AS CLASS_NAME_1,
--        CL.CLASS_2 AS CLASS_NAME_2,
--        CL.CLASS_3 AS CLASS_NAME_3,
--        CL.CLASS_4 AS CLASS_NAME_4,
--        CL.CLASS_5 AS CLASS_NAME_5,
--        X.ITEM_NO,
--        I.?? AS ITEM_NAME,
--        NVL(I.?????, 1) AS PACK_NUM,
--        I.?????? AS FACTORY_TYPE,
--        I.??1 AS SPEC_1,
--        I.?????? AS ITEM_TYPE,
--        I.GRADE_CODE,
--        I.?????? AS PACKING_TYPE,
--        P.PACKING_NAME,
--        'FI' AS MAKER,
--        X.QTY / NVL(I.?????, 1) AS QTY  ,
--        X.QTY AS QTY_CELL,
-- --??
--        X.SP_CURR_CODE AS SP_CURR_CODE_ORG,
--        CUR.CURR_MARK AS CURR_NAME_ORG,
--        X.SP AS SP_ORG,
--        X.SALES_AMT AS SALES_AMT_ORG,
-- --??
--        1 AS SP_CURR_CODE_ACC,
--        'US$' AS CURR_NAME_ACC,
--        X.RATE AS RATE_ACC,
--        X.SP_ACC AS SP_ACC,
--        X.SALES_AMT_ACC AS SALES_AMT_ACC,
-- --?
--          GET_RATE_BS(TO_DATE(X.FISCAL_MONTH,'YYYYMM'),1) AS RATE_YEN,
--         DECODE(X.QTY,0,0,ROUND(X.SALES_AMT_ACC * GET_RATE_BS(TO_DATE(X.FISCAL_MONTH,'YYYYMM'),1)  / X.QTY,2)) AS SP_YEN,
--        DECODE(X.QTY,0,0,ROUND(X.SALES_AMT_ACC * GET_RATE_BS(TO_DATE(X.FISCAL_MONTH,'YYYYMM'),1),2))  AS  SALES_AMT_YEN,
--        SYSDATE AS REG_DATE
--  FROM (
--         SELECT FISCAL_MONTH,
--                COMPANY_CODE,
--                SALES_CHANNELS_CODE,
--                ITEM_NO,
--                SP_CURR_CODE,
--                RATE,
--                SUM(QTY) AS QTY,
--                SUM(SALES_AMT) AS SALES_AMT,
--                DECODE(SUM(QTY), 0 ,0,  ROUND(SUM(SALES_AMT) / SUM(QTY), 6)) AS SP,
--                ROUND(SUM(SALES_AMT * RATE),2) AS SALES_AMT_ACC,
--                DECODE(SUM(QTY), 0 ,0, ROUND(SUM(SALES_AMT * RATE) / SUM(QTY), 6)) AS SP_ACC
--          FROM 
-- (
--                SELECT TO_CHAR(D.AC_MONTH,'YYYYMM') AS FISCAL_MONTH,
--                        88475 AS COMPANY_CODE,
--                        CUST_TO_SALES_CHANNELS(88475, D.CUSTOMER_CODE) AS SALES_CHANNELS_CODE ,
--                        D.ITEM_NO,
--                        D.CURR_CODE AS SP_CURR_CODE,
--                        D.EX_RATE AS RATE,
--                        D.QTY AS QTY,
--                        D.AMT_O AS SALES_AMT
--                  FROM SALES D
--                        LEFT JOIN SALES_CHANNELS_FI_ITEM_V I ON I.?C = D.ITEM_NO
--                  WHERE I.?C < 112000 -- MC,SAP????
-- )
--          GROUP BY
--                FISCAL_MONTH,
--                COMPANY_CODE,
--                SALES_CHANNELS_CODE,
--                ITEM_NO,
--                SP_CURR_CODE,
--                RATE
-- ) X
--        LEFT JOIN SALES_CHANNELS D ON D.SALES_CHANNELS_CODE = X.SALES_CHANNELS_CODE
--        LEFT JOIN SALES_CHANNELS_FI_ITEM_V I ON I.?C = X.ITEM_NO
--        LEFT JOIN SALES_CHANNELS_CLASS CL ON CL.CLASS_CODE = I.?C
--        LEFT JOIN SALES_CHANNELS_PACKING_TYPE P ON P.PACKING_TYPE = I.??????
--        LEFT JOIN CURRENCY CUR ON CUR.CURR_CODE = X.SP_CURR_CODE
--        LEFT JOIN COMPANY COM ON COM.COMPANY_CODE = X.COMPANY_CODE
--  WHERE NOT (X.QTY = 0 AND X.SALES_AMT = 0)
--   AND X.FISCAL_MONTH >= 201204;
 

--   CREATE OR REPLACE FORCE VIEW "PORDER"."SALES_CHANNELS_FI_ITEM_V" ("?C", "??", "??????", "?C", "??????", "??1", "?????", "GRADE_CODE", "??????") AS 
--   SELECT ?C, ??, -1, ?C, 'FI', ??1, ?????, GRADE_CODE, ?????? FROM SALES_CHANNELS_FI_ITEM
-- UNION ALL 
-- SELECT ?C, ??, ??????, ?C, ??????, ??1, ?????, GRADE_CODE, ?????? FROM S00BHSHV_TBL
-- WHERE ?C NOT IN (SELECT ?C FROM SALES_CHANNELS_FI_ITEM);
 

--   CREATE OR REPLACE FORCE VIEW "PORDER"."SALES_CHANNELS_QTY_HALF_WK" ("FISCAL_HALF", "COMPANY_CODE", "COMPANY_NAME", "SALES_CHANNELS_CODE", "SALES_CHANNELS_NAME", "CLASS_CODE", "CLASS_NAME_1", "CLASS_NAME_2", "CLASS_NAME_3", "CLASS_NAME_4", "CLASS_NAME_5", "ITEM_NO", "ITEM_NAME", "PACK_NUM", "FACTORY_TYPE", "SPEC_1", "ITEM_TYPE", "GRADE_CODE", "PACKING_TYPE", "PACKING_NAME", "MAKER", "QTY", "QTY_CELL") AS 
--   SELECT X.FISCAL_HALF,
--        X.COMPANY_CODE,
--        COM.COMPANY AS COMPANY_NAME,
--        X.SALES_CHANNELS_CODE,
--        D.SALES_CHANNELS_NAME,
--        I.?C AS CLASS_CODE,
--        CL.CLASS_1 AS CLASS_NAME_1,
--        CL.CLASS_2 AS CLASS_NAME_2,
--        CL.CLASS_3 AS CLASS_NAME_3,
--        CL.CLASS_4 AS CLASS_NAME_4,
--        CL.CLASS_5 AS CLASS_NAME_5,
--        X.ITEM_NO,
--        I.?? AS ITEM_NAME,
--        NVL(I.?????, 1) AS PACK_NUM,
--        I.?????? AS FACTORY_TYPE,
--        I.??1 AS SPEC_1,
--        I.?????? AS ITEM_TYPE,
--        I.GRADE_CODE,
--        I.?????? AS PACKING_TYPE,
--        P.PACKING_NAME,
--        'FI'AS MAKER,
--        X.QTY / NVL(I.?????, 1) AS QTY,
--        X.QTY  AS QTY_CELL
--   FROM (

--         SELECT CASE
--                   WHEN TO_CHAR(D.AC_MONTH, 'MM') >= '04' AND TO_CHAR(D.AC_MONTH, 'MM') <= '09' THEN
--                        TO_CHAR(D.AC_MONTH, 'YYYY') || '-1H'
--                   WHEN TO_CHAR(D.AC_MONTH, 'MM') >= '10' AND TO_CHAR(D.AC_MONTH, 'MM') <= '12' THEN
--                        TO_CHAR(D.AC_MONTH, 'YYYY') || '-2H'
--                   ELSE TO_NUMBER(TO_CHAR(D.AC_MONTH, 'YYYY')) -1  || '-2H'
--                END FISCAL_HALF,
--                88475 AS COMPANY_CODE,
--                CUST_TO_SALES_CHANNELS(88475, D.CUSTOMER_CODE) AS SALES_CHANNELS_CODE ,
--                D.ITEM_NO,
--                SUM(D.QTY) AS QTY
--           FROM SALES D
--                LEFT JOIN SALES_CHANNELS_FI_ITEM_V I ON I.?C = D.ITEM_NO
--          WHERE I.?C < 112000 -- MC,SAP????
--          GROUP BY
--                CASE
--                   WHEN TO_CHAR(D.AC_MONTH, 'MM') >= '04' AND TO_CHAR(D.AC_MONTH, 'MM') <= '09' THEN
--                        TO_CHAR(D.AC_MONTH, 'YYYY') || '-1H'
--                   WHEN TO_CHAR(D.AC_MONTH, 'MM') >= '10' AND TO_CHAR(D.AC_MONTH, 'MM') <= '12' THEN
--                        TO_CHAR(D.AC_MONTH, 'YYYY') || '-2H'
--                   ELSE TO_NUMBER(TO_CHAR(D.AC_MONTH, 'YYYY')) -1  || '-2H'
--                END ,
--                CUST_TO_SALES_CHANNELS(88475, D.CUSTOMER_CODE),
--                D.ITEM_NO) X
--        LEFT JOIN SALES_CHANNELS_FI_ITEM_v I ON I.?C = X.ITEM_NO
--        LEFT JOIN SALES_CHANNELS_CLASS CL ON CL.CLASS_CODE = I.?C
--        LEFT JOIN SALES_CHANNELS_PACKING_TYPE P ON P.PACKING_TYPE = I.??????
--        LEFT JOIN COMPANY COM ON COM.COMPANY_CODE = X.COMPANY_CODE
--        LEFT JOIN SALES_CHANNELS D ON D.SALES_CHANNELS_CODE = X.SALES_CHANNELS_CODE
--  WHERE X.QTY <> 0;
 

--   CREATE OR REPLACE FORCE VIEW "PORDER"."SALES_CHANNELS_QTY_MONTH_WK" ("FISCAL_MONTH", "COMPANY_CODE", "COMPANY_NAME", "SALES_CHANNELS_CODE", "SALES_CHANNELS_NAME", "CLASS_CODE", "CLASS_NAME_1", "CLASS_NAME_2", "CLASS_NAME_3", "CLASS_NAME_4", "CLASS_NAME_5", "ITEM_NO", "ITEM_NAME", "PACK_NUM", "FACTORY_TYPE", "SPEC_1", "ITEM_TYPE", "GRADE_CODE", "PACKING_TYPE", "PACKING_NAME", "MAKER", "QTY", "QTY_CELL") AS 
--   SELECT X.FISCAL_MONTH,
--        X.COMPANY_CODE,
--        COM.COMPANY AS COMPANY_NAME,
--        X.SALES_CHANNELS_CODE,
--        D.SALES_CHANNELS_NAME,
--        I.?C AS CLASS_CODE,
--        CL.CLASS_1 AS CLASS_NAME_1,
--        CL.CLASS_2 AS CLASS_NAME_2,
--        CL.CLASS_3 AS CLASS_NAME_3,
--        CL.CLASS_4 AS CLASS_NAME_4,
--        CL.CLASS_5 AS CLASS_NAME_5,
--        X.ITEM_NO,
--        I.?? AS ITEM_NAME,
--        NVL(I.?????, 1) AS PACK_NUM,
--        I.?????? AS FACTORY_TYPE,
--        I.??1 AS SPEC_1,
--        I.?????? AS ITEM_TYPE,
--        I.GRADE_CODE,
--        I.?????? AS PACKING_TYPE,
--        P.PACKING_NAME,
--        'FI'AS MAKER,
--        X.QTY / NVL(I.?????, 1) AS QTY,
--        X.QTY  AS QTY_CELL
--   FROM (

--         SELECT TO_CHAR(D.AC_MONTH,'YYYYMM') AS FISCAL_MONTH,
--                88475 AS COMPANY_CODE,
--                CUST_TO_SALES_CHANNELS(88475, D.CUSTOMER_CODE) AS SALES_CHANNELS_CODE ,
--                D.ITEM_NO,
--                SUM(D.QTY) AS QTY
--           FROM SALES D
--                LEFT JOIN SALES_CHANNELS_FI_ITEM_V I ON I.?C = D.ITEM_NO
--          WHERE I.?C < 112000 -- MC,SAP????
--          GROUP BY
--                D.AC_MONTH,
--                CUST_TO_SALES_CHANNELS(88475, D.CUSTOMER_CODE)  ,
--                D.ITEM_NO
-- ) X
--        LEFT JOIN SALES_CHANNELS_FI_ITEM_v I ON I.?C = X.ITEM_NO
--        LEFT JOIN SALES_CHANNELS_CLASS CL ON CL.CLASS_CODE = I.?C
--        LEFT JOIN SALES_CHANNELS_PACKING_TYPE P ON P.PACKING_TYPE = I.??????
--        LEFT JOIN COMPANY COM ON COM.COMPANY_CODE = X.COMPANY_CODE
--        LEFT JOIN SALES_CHANNELS D ON D.SALES_CHANNELS_CODE = X.SALES_CHANNELS_CODE
--  WHERE X.QTY <> 0;
 

--   CREATE OR REPLACE FORCE VIEW "PORDER"."SALES_CHANNELS_QTY_QTR_WK" ("FISCAL_QTR", "COMPANY_CODE", "COMPANY_NAME", "SALES_CHANNELS_CODE", "SALES_CHANNELS_NAME", "CLASS_CODE", "CLASS_NAME_1", "CLASS_NAME_2", "CLASS_NAME_3", "CLASS_NAME_4", "CLASS_NAME_5", "ITEM_NO", "ITEM_NAME", "PACK_NUM", "FACTORY_TYPE", "SPEC_1", "ITEM_TYPE", "GRADE_CODE", "PACKING_TYPE", "PACKING_NAME", "MAKER", "QTY", "QTY_CELL") AS 
--   SELECT X.FISCAL_QTR,
--        X.COMPANY_CODE,
--        COM.COMPANY AS COMPANY_NAME,
--        X.SALES_CHANNELS_CODE,
--        D.SALES_CHANNELS_NAME,
--        I.?C AS CLASS_CODE,
--        CL.CLASS_1 AS CLASS_NAME_1,
--        CL.CLASS_2 AS CLASS_NAME_2,
--        CL.CLASS_3 AS CLASS_NAME_3,
--        CL.CLASS_4 AS CLASS_NAME_4,
--        CL.CLASS_5 AS CLASS_NAME_5,
--        X.ITEM_NO,
--        I.?? AS ITEM_NAME,
--        NVL(I.?????, 1) AS PACK_NUM,
--        I.?????? AS FACTORY_TYPE,
--        I.??1 AS SPEC_1,
--        I.?????? AS ITEM_TYPE,
--        I.GRADE_CODE,
--        I.?????? AS PACKING_TYPE,
--        P.PACKING_NAME,
--        'FI'AS MAKER,
--        X.QTY / NVL(I.?????, 1) AS QTY,
--        X.QTY  AS QTY_CELL
--   FROM (

--         SELECT CASE
--                   WHEN TO_CHAR(D.AC_MONTH, 'MM') >= '04' AND TO_CHAR(D.AC_MONTH, 'MM') <= '06' THEN
--                        TO_CHAR(D.AC_MONTH, 'YYYY') || '-1Q'
--                   WHEN TO_CHAR(D.AC_MONTH, 'MM') >= '07' AND TO_CHAR(D.AC_MONTH, 'MM') <= '09' THEN
--                        TO_CHAR(D.AC_MONTH, 'YYYY') || '-2Q'
--                   WHEN TO_CHAR(D.AC_MONTH, 'MM') >= '10' AND TO_CHAR(D.AC_MONTH, 'MM') <= '12' THEN
--                        TO_CHAR(D.AC_MONTH, 'YYYY') || '-3Q'
--                   ELSE TO_NUMBER(TO_CHAR(D.AC_MONTH, 'YYYY')) -1  || '-4Q'
--                END FISCAL_QTR,
--                88475 AS COMPANY_CODE,
--                CUST_TO_SALES_CHANNELS(88475, D.CUSTOMER_CODE) AS SALES_CHANNELS_CODE ,
--                D.ITEM_NO,
--                SUM(D.QTY) AS QTY
--           FROM SALES D
--                LEFT JOIN SALES_CHANNELS_FI_ITEM_V I ON I.?C = D.ITEM_NO
--          WHERE I.?C < 112000 -- MC,SAP????
--          GROUP BY
--                CASE
--                   WHEN TO_CHAR(D.AC_MONTH, 'MM') >= '04' AND TO_CHAR(D.AC_MONTH, 'MM') <= '06' THEN
--                        TO_CHAR(D.AC_MONTH, 'YYYY') || '-1Q'
--                   WHEN TO_CHAR(D.AC_MONTH, 'MM') >= '07' AND TO_CHAR(D.AC_MONTH, 'MM') <= '09' THEN
--                        TO_CHAR(D.AC_MONTH, 'YYYY') || '-2Q'
--                   WHEN TO_CHAR(D.AC_MONTH, 'MM') >= '10' AND TO_CHAR(D.AC_MONTH, 'MM') <= '12' THEN
--                        TO_CHAR(D.AC_MONTH, 'YYYY') || '-3Q'
--                   ELSE TO_NUMBER(TO_CHAR(D.AC_MONTH, 'YYYY')) -1  || '-4Q'
--                END ,
--                CUST_TO_SALES_CHANNELS(88475, D.CUSTOMER_CODE),
--                D.ITEM_NO) X
--        LEFT JOIN SALES_CHANNELS_FI_ITEM_v I ON I.?C = X.ITEM_NO
--        LEFT JOIN SALES_CHANNELS_CLASS CL ON CL.CLASS_CODE = I.?C
--        LEFT JOIN SALES_CHANNELS_PACKING_TYPE P ON P.PACKING_TYPE = I.??????
--        LEFT JOIN COMPANY COM ON COM.COMPANY_CODE = X.COMPANY_CODE
--        LEFT JOIN SALES_CHANNELS D ON D.SALES_CHANNELS_CODE = X.SALES_CHANNELS_CODE
--  WHERE X.QTY <> 0;
 

--   CREATE OR REPLACE FORCE VIEW "PORDER"."SALES_CHANNELS_QTY_YEAR_WK" ("FISCAL_YEAR", "COMPANY_CODE", "COMPANY_NAME", "SALES_CHANNELS_CODE", "SALES_CHANNELS_NAME", "CLASS_CODE", "CLASS_NAME_1", "CLASS_NAME_2", "CLASS_NAME_3", "CLASS_NAME_4", "CLASS_NAME_5", "ITEM_NO", "ITEM_NAME", "PACK_NUM", "FACTORY_TYPE", "SPEC_1", "ITEM_TYPE", "GRADE_CODE", "PACKING_TYPE", "PACKING_NAME", "MAKER", "QTY", "QTY_CELL") AS 
--   SELECT X.FISCAL_YEAR,
--        X.COMPANY_CODE,
--        COM.COMPANY AS COMPANY_NAME,
--        X.SALES_CHANNELS_CODE,
--        D.SALES_CHANNELS_NAME,
--        I.?C AS CLASS_CODE,
--        CL.CLASS_1 AS CLASS_NAME_1,
--        CL.CLASS_2 AS CLASS_NAME_2,
--        CL.CLASS_3 AS CLASS_NAME_3,
--        CL.CLASS_4 AS CLASS_NAME_4,
--        CL.CLASS_5 AS CLASS_NAME_5,
--        X.ITEM_NO,
--        I.?? AS ITEM_NAME,
--        NVL(I.?????, 1) AS PACK_NUM,
--        I.?????? AS FACTORY_TYPE,
--        I.??1 AS SPEC_1,
--        I.?????? AS ITEM_TYPE,
--        I.GRADE_CODE,
--        I.?????? AS PACKING_TYPE,
--        P.PACKING_NAME,
--        'FI'AS MAKER,
--        X.QTY / NVL(I.?????, 1) AS QTY,
--        X.QTY  AS QTY_CELL
--   FROM (

--         SELECT  'FY' ||
--               CASE
--                   WHEN TO_CHAR(D.AC_MONTH, 'MM') >= '01' AND TO_CHAR(D.AC_MONTH, 'MM') <= '03' THEN
--                        TO_CHAR(TO_NUMBER(TO_CHAR(D.AC_MONTH, 'YYYY')) - 1)
--                   ELSE TO_CHAR(D.AC_MONTH, 'YYYY')
--                END AS FISCAL_YEAR,
--                88475 AS COMPANY_CODE,
--                CUST_TO_SALES_CHANNELS(88475, D.CUSTOMER_CODE) AS SALES_CHANNELS_CODE ,
--                D.ITEM_NO,
--                SUM(D.QTY) AS QTY
--           FROM SALES D
--                LEFT JOIN SALES_CHANNELS_FI_ITEM_V I ON I.?C = D.ITEM_NO
--          WHERE I.?C < 112000 -- MC,SAP????
--          GROUP BY
--                CASE
--                   WHEN TO_CHAR(D.AC_MONTH, 'MM') >= '01' AND TO_CHAR(D.AC_MONTH, 'MM') <= '03' THEN
--                        TO_CHAR(TO_NUMBER(TO_CHAR(D.AC_MONTH, 'YYYY')) - 1)
--                   ELSE TO_CHAR(D.AC_MONTH, 'YYYY')
--                END ,
--                CUST_TO_SALES_CHANNELS(88475, D.CUSTOMER_CODE),
--                D.ITEM_NO) X
--        LEFT JOIN SALES_CHANNELS_FI_ITEM_v I ON I.?C = X.ITEM_NO
--        LEFT JOIN SALES_CHANNELS_CLASS CL ON CL.CLASS_CODE = I.?C
--        LEFT JOIN SALES_CHANNELS_PACKING_TYPE P ON P.PACKING_TYPE = I.??????
--        LEFT JOIN COMPANY COM ON COM.COMPANY_CODE = X.COMPANY_CODE
--        LEFT JOIN SALES_CHANNELS D ON D.SALES_CHANNELS_CODE = X.SALES_CHANNELS_CODE
--  WHERE X.QTY <> 0;
 

  create view  WHINVENTORY_INTRANSIT_VIEW AS

select ISNULL(item_no,item_no2) item_no,w.this_month,ISNULL(this_inventory,0) this_inventory,w.last_month,ISNULL(last_inventory ,0) last_inventory  from (
		select * from (
		 select
		  dod.THIS_MONTH,
		  dod.item_no,
		  sum(dod.qty) this_inventory 
		 from do_header doh,
		      company  c, 
		      currency cu,  
		      ( select  d.do_no, d.line_no, d.qty, d.amt_o, 
		                itm.* ,wh.THIS_MONTH
		        from    do_details d, 
		                indication idc, 
		                (select distinct this_month  from whinventory)  wh,  
		                ( select i.item_no, i.description, i.item, u.unit 
		                  from   item i, 
		                         unit u 
		                  where  i.uom_q = u.unit_code  
		                 ) itm 
		        where   d.answer_no1 = idc.answer_no 
		          and   format(idc.ex_factory,'yyyymm')  =   wh.this_month
		          and   d.item_no    = itm.item_no  
		          and   idc.COMMIT_DATE is not null
		      ) dod 
		 where doh.do_no         = dod.do_no 
		   and doh.customer_code = c.company_code  
		   and doh.curr_code     = cu.curr_code  
		   and (format(doh.do_date,'yyyymm') <>   format(doh.bl_date,'yyyymm')  or doh.bl_date is null)
		group by   dod.THIS_MONTH,  dod.item_no
		) a1,
		(
		 select
		  dod.last_MONTH,
		  dod.item_no item_no2,
		  sum(dod.qty) last_inventory  
		 from do_header doh,
		      company  c, 
		      currency cu,  
		      ( select  d.do_no, d.line_no, d.qty, d.amt_o, 
		                itm.*,wh.LAST_MONTH 
		        from    do_details d, 
		                indication idc, 
		                (select distinct last_month  from whinventory)  wh,  
		                ( select i.item_no, i.description, i.item, u.unit 
		                  from   item i, 
		                         unit u 
		                  where  i.uom_q = u.unit_code  
		                 ) itm 
		        where   d.answer_no1 = idc.answer_no 
		          and   format(idc.ex_factory,'yyyymm')  =   wh.last_month
		          and   d.item_no    = itm.item_no  
		      ) dod 
		 where doh.do_no         = dod.do_no 
		   and doh.customer_code = c.company_code  
		   and doh.curr_code     = cu.curr_code  
		   and format(doh.do_date,'yyyymm') <>   format(doh.bl_date,'yyyymm') 
		group by    dod.last_MONTH,  dod.item_no
		) b1
		where a1.ITEM_NO = b1.ITEM_NO2
		union all
		select * from (
		 select
		  dod.THIS_MONTH,
		  dod.item_no,
		  sum(dod.qty) this_inventory  
		 from do_header doh,
		      company  c, 
		      currency cu,  
		      ( select  d.do_no, d.line_no, d.qty, d.amt_o, 
		                itm.* ,wh.THIS_MONTH
		        from    do_details d, 
		                indication idc, 
		                (select distinct this_month  from whinventory)  wh,  
		                ( select i.item_no, i.description, i.item, u.unit 
		                  from   item i, 
		                         unit u 
		                  where  i.uom_q = u.unit_code  
		                 ) itm 
		        where   d.answer_no1 = idc.answer_no 
		          and   format(idc.ex_factory,'yyyymm')  =   wh.this_month
		          and   d.item_no    = itm.item_no  
		      ) dod 
		 where doh.do_no         = dod.do_no 
		   and doh.customer_code = c.company_code  
		   and doh.curr_code     = cu.curr_code  
		   and (format(doh.do_date,'yyyymm') <>   format(doh.bl_date,'yyyymm')  or doh.bl_date is null)
		group by   dod.THIS_MONTH,  dod.item_no
		) a2,
		(
		 select
		  dod.last_MONTH,
		  dod.item_no item_no2,
		  sum(dod.qty) last_inventory 
		 from do_header doh,
		      company  c, 
		      currency cu,  
		      ( select  d.do_no, d.line_no, d.qty, d.amt_o, 
		                itm.*,wh.LAST_MONTH 
		        from    do_details d, 
		                indication idc, 
		                (select distinct last_month  from whinventory)  wh,  
		                ( select i.item_no, i.description, i.item, u.unit 
		                  from   item i, 
		                         unit u 
		                  where  i.uom_q = u.unit_code  
		                 ) itm 
		        where   d.answer_no1 = idc.answer_no 
		          and   format(idc.ex_factory,'yyyymm')  =   wh.last_month
		          and   d.item_no    = itm.item_no  
		      ) dod 
		 where doh.do_no         = dod.do_no 
		   and doh.customer_code = c.company_code  
		   and doh.curr_code     = cu.curr_code  
		   and format(doh.do_date,'yyyymm') <>   format(doh.bl_date,'yyyymm') 
		group by    dod.last_MONTH,  dod.item_no
		) b2
		where a2.ITEM_NO = b2.ITEM_NO2
		 and a2.ITEM_NO is null
		)aa, (select distinct THIS_MONTH,  LAST_MONTH    from WHINVENTORY) w;
 

create view [dbo].[ZVW_ASSY_ACTUAL] as 

select distinct a.assy_line, a.cell_type, FORMAT(a.tanggal_actual,'MM') as bulan, FORMAT(a.tanggal_actual,'YYYY') as tahun, 
  'ACTUAL' as sts,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='01') as date_1,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='02') as date_2,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY')AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='03') as date_3,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='04') as date_4,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='05') as date_5,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='06') as date_6,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='07') as date_7,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='08') as date_8,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='09') as date_9,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='10') as date_10,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND 
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='11') as date_11,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND 
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='12') as date_12,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND 
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='13') as date_13,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND 
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='14') as date_14,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND 
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='15') as date_15,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND 
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='16') as date_16,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND 
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='17') as date_17,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND 
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='18') as date_18,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND 
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='19') as date_19,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND 
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='20') as date_20,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND 
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='21') as date_21,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND 
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='22') as date_22,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND 
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='23') as date_23,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND 
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='24') as date_24,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND 
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='25') as date_25,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND 
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='26') as date_26,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND 
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='27') as date_27,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND 
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='28') as date_28,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND 
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='29') as date_29,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND 
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='30') as date_30,
  (select ISNULL(sum(b.qty_act_perpallet),0) from ztb_assy_kanban b where b.assy_line = a.assy_line AND b.cell_type=a.cell_type AND 
    FORMAT(b.tanggal_actual,'YYYY') = FORMAT(a.tanggal_actual,'YYYY') AND FORMAT(b.tanggal_actual,'MM') = FORMAT(a.tanggal_actual,'MM') AND FORMAT(b.tanggal_actual,'DD')='31') as date_31
  from ztb_assy_kanban a
  --order by FORMAT(a.tanggal_actual,'MM'), FORMAT(a.tanggal_actual,'YYYY');



 create VIEW "ZVW_ASSY_PLAN" as
 
select distinct a.assy_line, a.cell_type, case when a.bulan < 10 then '0' + a.bulan else a.bulan end as bulan, a.tahun, 
'PLAN' as sts,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=1 AND used=1) as date_1,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=2 AND used=1) as date_2,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=3 AND used=1) as date_3,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=4 AND used=1) as date_4,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=5 AND used=1) as date_5,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=6 AND used=1) as date_6,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=7 AND used=1) as date_7,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=8 AND used=1) as date_8,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=9 AND used=1) as date_9,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=10 AND used=1) as date_10,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=11 AND used=1) as date_11,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=12 AND used=1) as date_12,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=13 AND used=1) as date_13,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=14 AND used=1) as date_14,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=15 AND used=1) as date_15,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=16 AND used=1) as date_16,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=17 AND used=1) as date_17,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=18 AND used=1) as date_18,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=19 AND used=1) as date_19,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=20 AND used=1) as date_20,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=21 AND used=1) as date_21,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=22 AND used=1) as date_22,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=23 AND used=1) as date_23,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=24 AND used=1) as date_24,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=25 AND used=1) as date_25,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=26 AND used=1) as date_26,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=27 AND used=1) as date_27,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=28 AND used=1) as date_28,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=29 AND used=1) as date_29,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=30 AND used=1) as date_30,
  (select ISNULL(sum(b.qty),0) from ztb_assy_plan b 
    where b.assy_line= a.assy_line AND b.cell_type=a.cell_type AND b.bulan= a.bulan AND b.tahun= a.tahun AND b.tanggal=31 AND used=1) as date_31
  from ztb_assy_plan a
  --order by bulan, tahun;
 

  
 --CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_COMPARISON" ("LABEL_TYPE", "GROUPINGLABEL", "WORK_ORDER", "ITEM_NO", "ITEM_NAME", "DATE_CODE", "PACKAGING_TYPE", "BATERY_TYPE", "GRADE", "CR_DATE", "OPERATEION_TIME", "QTY", "BULAN", "TOTAL", "STAT", "SATU", "DUA", "TIGA", "EMPAT", "LIMA", "ENAM", "TUJUH", "DELAPAN", "SEMBILAN", "SEPULUH", "SEBELAS", "DUABELAS", "TIGABELAS", "EMPATBELAS", "LIMABELAS", "ENAMBELAS", "TUJUHBELAS", "DELAPANBELAS", "SEMBILANBELAS", "DUAPULUH", "DUAPULUHSATU", "DUAPULUHDUA", "DUAPULUHTIGA", "DUAPULUHEMPAT", "DUAPULUHLIMA", "DUAPULUHENAM", "DUAPULUHTUJUH", "DUAPULUHDELAPAN", "DUAPULUHSEMBILAN", "TIGAPULUH", "TIGAPULUHSATU") AS 
 create view ZVW_COMPARISON as 
  SELECT 
       (select distinct groups_pck from ztb_item_pck where ztb_item_pck.item_no = x.item_no) as label_type,
       (select distinct package_type from ztb_item_pck where ztb_item_pck.item_no = x.item_no) as GroupingLabel,
       x.work_order, 
       item_no,
       item_name, 
       date_code, 
       packaging_type, 
       batery_type, 
       cc.tot as Grade, 
       cr_date, 
       operateion_time ,
       qty,
       Bulan, 
        sum(TOTAL) as Total,
       case Status when 'PLAN' Then 'A' When 'OUTPUT' Then  'C' When 'ACTUAL' Then 'B' END as STAT,
       ISNULL(Sum(satu),0) as Satu,
       ISNULL(Sum(Dua),0) as dua,
       ISNULL(sum(tiga),0) as Tiga,
       ISNULL(sum(empat),0) as empat,
       ISNULL(sum(lima),0) as lima,
       ISNULL(sum(enam),0) as enam,
       ISNULL(sum(tujuh),0) as tujuh,
       ISNULL(sum(delapan),0) as delapan,
       ISNULL(sum(sembilan),0) as sembilan,
       ISNULL(sum(sepuluh),0) as sepuluh,
       ISNULL(sum(sebelas),0) as sebelas,
       ISNULL(sum(duabelas),0) as duabelas,
       ISNULL(sum(tigabelas),0) as tigabelas,
       ISNULL(sum(empatbelas),0) as empatbelas,
       ISNULL(sum(limabelas),0) as limabelas,
       ISNULL(sum(enambelas),0) as enambelas,
       ISNULL(sum(TujuhBelas),0) as tujuhbelas,
       ISNULL(sum(delapanbelas),0) as delapanbelas,
       ISNULL(sum(sembilanbelas),0) as sembilanbelas,
       ISNULL(sum(duapuluh),0) as duapuluh,
       ISNULL(sum(duapuluhsatu),0) as duapuluhsatu,
       ISNULL(sum(DuaPuluhDua),0)  as DuaPuluhDua,
       ISNULL(sum(DuaPuluhTiga),0)   as DuaPuluhTiga,
       ISNULL(sum(DuaPuluhEmpat) ,0)  as DuaPuluhEmpat,
       ISNULL(sum(DuaPuluhLima),0)  as DuaPuluhLima,
       ISNULL(sum(DuaPuluhEnam),0)   as DuaPuluhEnam,
       ISNULL(sum(DuaPuluhTujuh),0)  as DuaPuluhTujuh,
       ISNULL(sum(DuaPuluhDelapan),0)   as DuaPuluhDelapan,
        ISNULL(sum(DuaPuluhSembilan),0)   as DuaPuluhSembilan,
        ISNULL(sum(TigaPuluh),0)  as TigaPuluh,
       ISNULL(sum(TigaPuluhSatu),0)   as TigaPuluhSatu
   FROM (
select label_type,
       work_order, 
       item_no,
       r.item_name, 
       date_code, 
       packaging_type, 
       batery_type, 
       cell_grade as Grade, 
       cr_date, 
       operateion_time ,
       r.qty,
       FORMAT(MPS_date,'MONTH') as Bulan, 
       'PLAN' as Status,
       sum(s.mps_qty) as Total,
       case when FORMAT(MPS_date,'DD') = 1 then sum(s.mps_qty) end  as Satu,
       case when FORMAT(MPS_date,'DD') = 2 then sum(s.mps_qty) end as Dua,
       case when FORMAT(MPS_date,'DD') = 3 then sum(s.mps_qty) end as Tiga,
       case when FORMAT(MPS_date,'DD') = 4 then sum(s.mps_qty) end as empat,
       case when FORMAT(MPS_date,'DD') = 5 then sum(s.mps_qty) end as Lima,
       case when FORMAT(MPS_date,'DD') = 6 then sum(s.mps_qty) end as Enam,
       case when FORMAT(MPS_date,'DD') = 7 then sum(s.mps_qty) end as Tujuh,
       case when FORMAT(MPS_date,'DD') = 8 then sum(s.mps_qty) end as Delapan,
        case when FORMAT(MPS_date,'DD') = 9 then sum(s.mps_qty) end as Sembilan,
       case when FORMAT(MPS_date,'DD') = 10 then sum(s.mps_qty) end as sepuluh,
       case when FORMAT(MPS_date,'DD') = 11 then sum(s.mps_qty) end as Sebelas,
       case when FORMAT(MPS_date,'DD') = 12 then sum(s.mps_qty) end as DuaBelas,
        case when FORMAT(MPS_date,'DD') = 13 then sum(s.mps_qty) end as TigaBelas,
       case when FORMAT(MPS_date,'DD') = 14 then sum(s.mps_qty) end as EmpatBelas,
       case when FORMAT(MPS_date,'DD') = 15 then sum(s.mps_qty) end as LimaBelas,
       case when FORMAT(MPS_date,'DD') = 16 then sum(s.mps_qty) end as EnamBelas,
        case when FORMAT(MPS_date,'DD') = 17 then sum(s.mps_qty) end as TujuhBelas,
       case when FORMAT(MPS_date,'DD') = 18 then sum(s.mps_qty) end as DelapanBelas,
       case when FORMAT(MPS_date,'DD') = 19 then sum(s.mps_qty) end as SembilanBelas,
       case when FORMAT(MPS_date,'DD') = 20 then sum(s.mps_qty) end as DuaPuluh,
        case when FORMAT(MPS_date,'DD') = 21 then sum(s.mps_qty) end as DuaPuluhSatu,
       case when FORMAT(MPS_date,'DD') = 22 then sum(s.mps_qty) end as DuaPuluhDua,
       case when FORMAT(MPS_date,'DD') = 23 then sum(s.mps_qty) end as DuaPuluhTiga,
       case when FORMAT(MPS_date,'DD') = 24 then sum(s.mps_qty) end as DuaPuluhEmpat,
        case when FORMAT(MPS_date,'DD') = 25 then sum(s.mps_qty) end as DuaPuluhLima,
       case when FORMAT(MPS_date,'DD') = 26 then sum(s.mps_qty) end as DuaPuluhEnam,
       case when FORMAT(MPS_date,'DD') = 27 then sum(s.mps_qty) end as DuaPuluhTujuh,
       case when FORMAT(MPS_date,'DD') = 28 then sum(s.mps_qty) end as DuaPuluhDelapan,
        case when FORMAT(MPS_date,'DD') = 29 then sum(s.mps_qty) end as DuaPuluhSembilan,
       case when FORMAT(MPS_date,'DD') = 30 then sum(s.mps_qty) end as TigaPuluh,
       case when FORMAT(MPS_date,'DD') = 31 then sum(s.mps_qty) end as TigaPuluhSatu
from mps_header r
inner join mps_details s 
ON r.po_no = s.po_no and r.po_line_no = s.po_line_no
--where  FORMAT(MPS_date,'MONTH') = 'SEPTEMBER'
group by label_type,
       work_order, 
       item_no,
       item_name, 
       date_code, 
       packaging_type, 
       batery_type, 
       cell_grade, 
       cr_date, 
       operateion_time ,
       r.qty,
       FORMAT(MPS_date,'MONTH'),
      FORMAT(MPS_date,'DD')
      
UNION ALL
          
select label_type,
       s.Wo_no,
       s.Item_no,
       r.item_name, 
      r.date_code, 
      r.packaging_type, 
      r.batery_type, 
      r.cell_grade as Grade, 
      r.cr_date, 
      r.operateion_time ,
      r.qty,
       FORMAT(SLIP_DATE,'MONTH'), 
      'OUTPUT',
      sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ),
       case when FORMAT(SLIP_DATE,'DD') = 1 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end  as Satu,
       case when FORMAT(SLIP_DATE,'DD') = 2 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Dua,
       case when FORMAT(SLIP_DATE,'DD') = 3 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Tiga,
       case when FORMAT(SLIP_DATE,'DD') = 4 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as empat,
       case when FORMAT(SLIP_DATE,'DD') = 5 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Lima,
       case when FORMAT(SLIP_DATE,'DD') = 6 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Enam,
       case when FORMAT(SLIP_DATE,'DD') = 7 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Tujuh,
       case when FORMAT(SLIP_DATE,'DD') = 8 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Delapan,
        case when FORMAT(SLIP_DATE,'DD') = 9 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Sembilan,
       case when FORMAT(SLIP_DATE,'DD') = 10 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as sepuluh,
       case when FORMAT(SLIP_DATE,'DD') = 11 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Sebelas,
       case when FORMAT(SLIP_DATE,'DD') = 12 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaBelas,
        case when FORMAT(SLIP_DATE,'DD') = 13 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TigaBelas,
       case when FORMAT(SLIP_DATE,'DD') = 14 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as EmpatBelas,
       case when FORMAT(SLIP_DATE,'DD') = 15 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as LimaBelas,
       case when FORMAT(SLIP_DATE,'DD') = 16 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as EnamBelas,
        case when FORMAT(SLIP_DATE,'DD') = 17 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TujuhBelas,
       case when FORMAT(SLIP_DATE,'DD') = 18 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DelapanBelas,
       case when FORMAT(SLIP_DATE,'DD') = 19 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as SembilanBelas,
       case when FORMAT(SLIP_DATE,'DD') = 20 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluh,
        case when FORMAT(SLIP_DATE,'DD') = 21 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhSatu,
       case when FORMAT(SLIP_DATE,'DD') = 22 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhDua,
       case when FORMAT(SLIP_DATE,'DD') = 23 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhTiga,
       case when FORMAT(SLIP_DATE,'DD') = 24 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhEmpat,
        case when FORMAT(SLIP_DATE,'DD') = 25 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhLima,
       case when FORMAT(SLIP_DATE,'DD') = 26 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhEnam,
       case when FORMAT(SLIP_DATE,'DD') = 27 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhTujuh,
       case when FORMAT(SLIP_DATE,'DD') = 28 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhDelapan,
        case when FORMAT(SLIP_DATE,'DD') = 29 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhSembilan,
       case when FORMAT(SLIP_DATE,'DD') = 30 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TigaPuluh,
       case when FORMAT(SLIP_DATE,'DD') = 31 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TigaPuluhSatu

from production_income s
inner join  mps_header r
on s.wo_no = r.work_order

group by label_type,
       s.Wo_no,
       s.Item_no,
       r.item_name, 
      r.date_code, 
      r.packaging_type, 
      r.batery_type, 
      r.cell_grade , 
      r.cr_date, 
      r.operateion_time ,
      r.qty,
       FORMAT(SLIP_DATE,'MONTH'),
       FORMAT(SLIP_DATE,'DD')
    
  

       
UNION ALL

   
select label_type,
       s.Wo_no,
       s.Item_no,
       r.item_name, 
      r.date_code, 
      r.packaging_type, 
      r.batery_type, 
      r.cell_grade as Grade, 
      r.cr_date, 
      r.operateion_time ,
      r.qty,
       FORMAT(APPROVAL_DATE,'MONTH'), 
      'ACTUAL',
      sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ),
       case when FORMAT(APPROVAL_DATE,'DD') = 1 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end  as Satu,
       case when FORMAT(APPROVAL_DATE,'DD') = 2 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Dua,
       case when FORMAT(APPROVAL_DATE,'DD') = 3 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Tiga,
       case when FORMAT(APPROVAL_DATE,'DD') = 4 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as empat,
       case when FORMAT(APPROVAL_DATE,'DD') = 5 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Lima,
       case when FORMAT(APPROVAL_DATE,'DD') = 6 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Enam,
       case when FORMAT(APPROVAL_DATE,'DD') = 7 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Tujuh,
       case when FORMAT(APPROVAL_DATE,'DD') = 8 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Delapan,
        case when FORMAT(APPROVAL_DATE,'DD') = 9 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Sembilan,
       case when FORMAT(APPROVAL_DATE,'DD') = 10 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as sepuluh,
       case when FORMAT(APPROVAL_DATE,'DD') = 11 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Sebelas,
       case when FORMAT(APPROVAL_DATE,'DD') = 12 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaBelas,
       case when FORMAT(APPROVAL_DATE,'DD') = 13 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TigaBelas,
       case when FORMAT(APPROVAL_DATE,'DD') = 14 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as EmpatBelas,
       case when FORMAT(APPROVAL_DATE,'DD') = 15 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as LimaBelas,
       case when FORMAT(APPROVAL_DATE,'DD') = 16 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as EnamBelas,
       case when FORMAT(APPROVAL_DATE,'DD') = 17 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TujuhBelas,
       case when FORMAT(APPROVAL_DATE,'DD') = 18 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DelapanBelas,
       case when FORMAT(APPROVAL_DATE,'DD') = 19 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as SembilanBelas,
       case when FORMAT(APPROVAL_DATE,'DD') = 20 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluh,
        case when FORMAT(APPROVAL_DATE,'DD') = 21 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhSatu,
       case when FORMAT(APPROVAL_DATE,'DD') = 22 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhDua,
       case when FORMAT(APPROVAL_DATE,'DD') = 23 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhTiga,
       case when FORMAT(APPROVAL_DATE,'DD') = 24 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhEmpat,
        case when FORMAT(APPROVAL_DATE,'DD') = 25 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhLima,
       case when FORMAT(APPROVAL_DATE,'DD') = 26 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhEnam,
       case when FORMAT(APPROVAL_DATE,'DD') = 27 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhTujuh,
       case when FORMAT(APPROVAL_DATE,'DD') = 28 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhDelapan,
        case when FORMAT(APPROVAL_DATE,'DD') = 29 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhSembilan,
       case when FORMAT(APPROVAL_DATE,'DD') = 30 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TigaPuluh,
       case when FORMAT(APPROVAL_DATE,'DD') = 31 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TigaPuluhSatu
from production_income s
inner join  mps_header r
on s.wo_no = r.work_order

--where  FORMAT(MPS_date,'MONTH') = 'SEPTEMBER' 

group by label_type,
       s.Wo_no,
       s.Item_no,
       r.item_name, 
      r.date_code, 
      r.packaging_type, 
      r.batery_type, 
      r.cell_grade , 
      r.cr_date, 
      r.operateion_time ,
      r.qty,
       FORMAT(APPROVAL_DATE,'MONTH'),
       FORMAT(APPROVAL_DATE,'DD')

) x

left outer join (select sum(case when slip_type = 80 then SLIP_Quantity else SLIP_Quantity *-1 end) as tot,wo_no from production_income group by wo_no)cc
on x.work_order = cc.wo_no
group by label_type,
       x.work_order,
       cc.wo_no,
       cc.tot,
       item_no,
       item_name, 
       date_code, 
       packaging_type, 
       batery_type, 
       Grade, 
       cr_date, 
       operateion_time ,
       qty,
       Bulan, 
       Status
--order by Label_type,x.Work_order,STAT;
 

 create view ZVW_COMPARISON_LABEL as 
  SELECT
        
        battery_type as batery_type,
        trim(Bulan) as bulan, 
        cast(hari as integer) as Hari,
        case Status when 'PLAN' Then 'A' When 'OUTPUT' Then  'B' When 'ACTUAL' Then 'C' when 'ACCUM' Then 'D'   END as STAT,
        case when Status = 'PLAN' Then     sum(TOTAL) end as Pln,
        case when status = 'ACTUAL' Then   sum(TOTAL)  end as Output,
         case when status = 'ACCUM' Then    sum(TOTAL)   END as Acumm
      
   FROM (

select a.wo_no as work_order,
       cast(a.item_no as varchar(10)) as item_no,
       a.description as item_name,
       a.date_code,
       a.item_type as battery_type,
       a.grade,
       a.cr_Date,
       0 as operation_time,
       a.total as Qty,
        FORMAT(date_prod,'MONTH') as Bulan,
       'PLAN' as status,
       sum(qty) as Total,
        FORMAT(date_prod,'DD') as Hari
from ztb_label_detail s
inner join ztb_label_header a 
ON a.wo_no = s.wo_no
group by a.wo_no ,
       a.item_no,
       a.description ,
       a.date_code,
       a.item_type ,
       a.grade,
       a.cr_Date,
       a.total,
       FORMAT(date_prod,'MONTH'),
       FORMAT(date_prod,'DD')
     
      
UNION ALL
  

select b.wo_no,
       cast(b.item_no as varchar(10)) as Item_No,
       b.brand,
       b.date_code,
       b.type_item,
       b.grade,
       b.cr_date,
       0 as OpTime,
        0 as Qty,
        FORMAT(mulai,'MONTH') as Bulan,
       'ACTUAL' as status,
         sum(Battery_in) as Total,
        FORMAT(mulai,'DD')
from ZTB_KANBAN_LBL s
inner join ztb_l_plan b
on s.idkanban = b.id
inner join ztb_label_header x
on x.wo_no = b.wo_no

group by b.wo_no,
       b.item_no,
       b.brand,
       b.date_code,
       b.type_item,
       b.grade,
       b.cr_date,
       FORMAT(mulai,'MONTH'),
       FORMAT(mulai,'DD')  
          

    
  

 

) aa

group by 
        battery_type, 
Hari,
       Bulan, 
       Status
 

   create view ZVW_COMPARISON_SUMMARY as
  SELECT
       label_type , 
       batery_type, 
      
       trim(Bulan) as bulan, 
       cast (Hari as integer) as Hari,
       case Status when 'PLAN' Then 'A' When 'OUTPUT' Then  'B' When 'ACTUAL' Then 'C' when 'ACCUM' Then 'D'   END as STAT,
      case when Status = 'PLAN' Then     sum(TOTAL) end as Pln,
     
      case when status = 'ACTUAL' Then   sum(TOTAL)  end as Output,
      case when status = 'ACCUM' Then    sum(TOTAL)   END as Acumm
      
   FROM (
select ISNULL(zz.package_type,packaging_type) label_type,
       work_order, 
       r.item_no,
       r.item_name, 
       date_code, 
       packaging_type, 
       batery_type, 
       cell_grade as Grade, 
       cr_date, 
       operateion_time ,
       r.qty,
       FORMAT(MPS_date,'MONTH') as Bulan, 
       'PLAN' as Status,
       sum(s.mps_qty) as Total,
      FORMAT(MPS_date,'DD') as Hari
from mps_header r
inner join mps_details s 
ON r.po_no = s.po_no and r.po_line_no = s.po_line_no
left outer join ztb_item_pck zz
on r.item_no = zz.item_no
--where  FORMAT(MPS_date,'MONTH') = 'SEPTEMBER'
group by zz.package_type,
       work_order, 
       r.item_no,
       item_name, 
       date_code, 
       packaging_type, 
       batery_type, 
       cell_grade, 
       cr_date, 
       operateion_time ,
       r.qty,
       FORMAT(MPS_date,'MONTH'),
      FORMAT(MPS_date,'DD')
      
UNION ALL
          
select ISNULL(zz.package_type,packaging_type) label_type,
       s.Wo_no,
       s.Item_no,
       r.item_name, 
      r.date_code, 
      r.packaging_type, 
      r.batery_type, 
      r.cell_grade as Grade, 
      r.cr_date, 
      r.operateion_time ,
      r.qty,
       FORMAT(SLIP_DATE,'MONTH'), 
      'ACTUAL',
      sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ),
      FORMAT(SLIP_DATE,'DD')
from production_income s
inner join  mps_header r
on s.wo_no = r.work_order
left outer join ztb_item_pck zz
on r.item_no = zz.item_no
--where  FORMAT(MPS_date,'MONTH') = 'SEPTEMBER' 
group by zz.package_type,
       s.Wo_no,
       s.Item_no,
       r.item_name, 
      r.date_code, 
      r.packaging_type, 
      r.batery_type, 
      r.cell_grade , 
      r.cr_date, 
      r.operateion_time ,
      r.qty,
       FORMAT(SLIP_DATE,'MONTH'),
       FORMAT(SLIP_DATE,'DD')
    
  

 

UNION ALL


   
select ISNULL(zz.package_type,packaging_type) label_type,
       work_order, 
       r.item_no,
       r.item_name, 
       date_code, 
       packaging_type, 
       batery_type, 
       cell_grade as Grade, 
       cr_date, 
       operateion_time ,
       r.qty,
       FORMAT(MPS_date,'MONTH') as Bulan, 
       'ACCUM' as Status,
      -1*sum(s.mps_qty) as Total,
       FORMAT(MPS_date,'DD')
from mps_header r
inner join mps_details s 
ON r.po_no = s.po_no and r.po_line_no = s.po_line_no
left outer join ztb_item_pck zz
on r.item_no = zz.item_no
--where  FORMAT(MPS_date,'MONTH') = 'SEPTEMBER'
group by zz.package_type,
       work_order, 
       r.item_no,
       item_name, 
       date_code, 
       packaging_type, 
       batery_type, 
       cell_grade, 
       cr_date, 
       operateion_time ,
       r.qty,
       FORMAT(MPS_date,'MONTH'),
      FORMAT(MPS_date,'DD')
       
UNION ALL

   
select ISNULL(zz.package_type,packaging_type) label_type,
       s.Wo_no,
       s.Item_no,
       r.item_name, 
      r.date_code, 
      r.packaging_type, 
      r.batery_type, 
      r.cell_grade as Grade, 
      r.cr_date, 
      r.operateion_time ,
      r.qty,
       FORMAT(SLIP_DATE,'MONTH'), 
      'ACCUM',
       sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ),
       FORMAT(SLIP_DATE,'DD')
       
       from production_income s
inner join  mps_header r
on s.wo_no = r.work_order
left outer join ztb_item_pck zz
on r.item_no = zz.item_no
--where  FORMAT(MPS_date,'MONTH') = 'SEPTEMBER' 
group by zz.package_type,
       s.Wo_no,
       s.Item_no,
       r.item_name, 
      r.date_code, 
      r.packaging_type, 
      r.batery_type, 
      r.cell_grade , 
      r.cr_date, 
      r.operateion_time ,
      r.qty,
       FORMAT(SLIP_DATE,'MONTH'),
       FORMAT(SLIP_DATE,'DD')

) aa

group by 
       label_type , batery_type, 
Hari,
       Bulan, 
       Status
 

 create view  ZVW_COMPARISON2 as 
  SELECT label_type,
       second_machine as GroupingLabel,
       x.work_order, 
       item_no,
       item_name, 
       date_code, 
       packaging_type, 
       batery_type, 
       Grade, 
       cr_date, 
       operateion_time ,
       qty,
       Bulan, 
        sum(TOTAL) as Total,
       case Status when 'PLAN' Then 'A' When 'OUTPUT' Then  'C' When 'ACTUAL' Then 'B' END as STAT,
      0 as Satu,
       ISNULL(Sum(satu),0) as dua,
       ISNULL(sum(Dua),0) as Tiga,
       ISNULL(sum(tiga),0) as empat,
       ISNULL(sum(empat),0) as lima,
       ISNULL(sum(lima),0) as enam,
       ISNULL(sum(enam),0) as tujuh,
       ISNULL(sum(tujuh),0) as delapan,
       ISNULL(sum(delapan),0) as sembilan,
       ISNULL(sum(sembilan),0) as sepuluh,
       ISNULL(sum(sepuluh),0) as sebelas,
       ISNULL(sum(sebelas),0) as duabelas,
       ISNULL(sum(duabelas),0) as tigabelas,
       ISNULL(sum(tigabelas),0) as empatbelas,
       ISNULL(sum(empatbelas),0) as limabelas,
       ISNULL(sum(limabelas),0) as enambelas,
       ISNULL(sum(enambelas),0) as tujuhbelas,
       ISNULL(sum(TujuhBelas),0) as delapanbelas,
       ISNULL(sum(delapanbelas),0) as sembilanbelas,
       ISNULL(sum(sembilanbelas),0) as duapuluh,
       ISNULL(sum(duapuluh),0) as duapuluhsatu,
       ISNULL(sum(duapuluhsatu),0)  as DuaPuluhDua,
       ISNULL(sum(DuaPuluhDua),0)   as DuaPuluhTiga,
       ISNULL(sum(DuaPuluhTiga) ,0)  as DuaPuluhEmpat,
       ISNULL(sum(DuaPuluhEmpat),0)  as DuaPuluhLima,
       ISNULL(sum(DuaPuluhLima),0)   as DuaPuluhEnam,
       ISNULL(sum(DuaPuluhEnam),0)  as DuaPuluhTujuh,
       ISNULL(sum(DuaPuluhTujuh),0)   as DuaPuluhDelapan,
        ISNULL(sum(DuaPuluhDelapan),0)   as DuaPuluhSembilan,
        ISNULL(sum(DuaPuluhSembilan),0)  as TigaPuluh,
       ISNULL(sum(TigaPuluh),0)   as TigaPuluhSatu
   FROM (
select label_type,
       work_order, 
       item_no,
       r.item_name, 
       date_code, 
       packaging_type, 
       batery_type, 
       cell_grade as Grade, 
       cr_date, 
       operateion_time ,
       r.qty,
       format(MPS_date,'MONTH') as Bulan, 
       'PLAN' as Status,
       sum(s.mps_qty) as Total,
       case when format(MPS_date,'DD') = 1 then sum(s.mps_qty) end  as Satu,
       case when format(MPS_date,'DD') = 2 then sum(s.mps_qty) end as Dua,
       case when format(MPS_date,'DD') = 3 then sum(s.mps_qty) end as Tiga,
       case when format(MPS_date,'DD') = 4 then sum(s.mps_qty) end as empat,
       case when format(MPS_date,'DD') = 5 then sum(s.mps_qty) end as Lima,
       case when format(MPS_date,'DD') = 6 then sum(s.mps_qty) end as Enam,
       case when format(MPS_date,'DD') = 7 then sum(s.mps_qty) end as Tujuh,
       case when format(MPS_date,'DD') = 8 then sum(s.mps_qty) end as Delapan,
        case when format(MPS_date,'DD') = 9 then sum(s.mps_qty) end as Sembilan,
       case when format(MPS_date,'DD') = 10 then sum(s.mps_qty) end as sepuluh,
       case when format(MPS_date,'DD') = 11 then sum(s.mps_qty) end as Sebelas,
       case when format(MPS_date,'DD') = 12 then sum(s.mps_qty) end as DuaBelas,
        case when format(MPS_date,'DD') = 13 then sum(s.mps_qty) end as TigaBelas,
       case when format(MPS_date,'DD') = 14 then sum(s.mps_qty) end as EmpatBelas,
       case when format(MPS_date,'DD') = 15 then sum(s.mps_qty) end as LimaBelas,
       case when format(MPS_date,'DD') = 16 then sum(s.mps_qty) end as EnamBelas,
        case when format(MPS_date,'DD') = 17 then sum(s.mps_qty) end as TujuhBelas,
       case when format(MPS_date,'DD') = 18 then sum(s.mps_qty) end as DelapanBelas,
       case when format(MPS_date,'DD') = 19 then sum(s.mps_qty) end as SembilanBelas,
       case when format(MPS_date,'DD') = 20 then sum(s.mps_qty) end as DuaPuluh,
        case when format(MPS_date,'DD') = 21 then sum(s.mps_qty) end as DuaPuluhSatu,
       case when format(MPS_date,'DD') = 22 then sum(s.mps_qty) end as DuaPuluhDua,
       case when format(MPS_date,'DD') = 23 then sum(s.mps_qty) end as DuaPuluhTiga,
       case when format(MPS_date,'DD') = 24 then sum(s.mps_qty) end as DuaPuluhEmpat,
        case when format(MPS_date,'DD') = 25 then sum(s.mps_qty) end as DuaPuluhLima,
       case when format(MPS_date,'DD') = 26 then sum(s.mps_qty) end as DuaPuluhEnam,
       case when format(MPS_date,'DD') = 27 then sum(s.mps_qty) end as DuaPuluhTujuh,
       case when format(MPS_date,'DD') = 28 then sum(s.mps_qty) end as DuaPuluhDelapan,
        case when format(MPS_date,'DD') = 29 then sum(s.mps_qty) end as DuaPuluhSembilan,
       case when format(MPS_date,'DD') = 30 then sum(s.mps_qty) end as TigaPuluh,
       case when format(MPS_date,'DD') = 31 then sum(s.mps_qty) end as TigaPuluhSatu
from mps_header r
inner join mps_details s 
ON r.po_no = s.po_no and r.po_line_no = s.po_line_no
--where  format(MPS_date,'MONTH') = 'SEPTEMBER'
group by label_type,
       work_order, 
       item_no,
       item_name, 
       date_code, 
       packaging_type, 
       batery_type, 
       cell_grade, 
       cr_date, 
       operateion_time ,
       r.qty,
       format(MPS_date,'MONTH'),
      format(MPS_date,'DD')
      
UNION ALL
          
select label_type,
       s.Wo_no,
       s.Item_no,
       r.item_name, 
      r.date_code, 
      r.packaging_type, 
      r.batery_type, 
      r.cell_grade as Grade, 
      r.cr_date, 
      r.operateion_time ,
      r.qty,
       format(SLIP_DATE,'MONTH'), 
      'OUTPUT',
      sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ),
       case when format(SLIP_DATE,'DD') = 1 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end  as Satu,
       case when format(SLIP_DATE,'DD') = 2 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Dua,
       case when format(SLIP_DATE,'DD') = 3 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Tiga,
       case when format(SLIP_DATE,'DD') = 4 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as empat,
       case when format(SLIP_DATE,'DD') = 5 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Lima,
       case when format(SLIP_DATE,'DD') = 6 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Enam,
       case when format(SLIP_DATE,'DD') = 7 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Tujuh,
       case when format(SLIP_DATE,'DD') = 8 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Delapan,
        case when format(SLIP_DATE,'DD') = 9 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Sembilan,
       case when format(SLIP_DATE,'DD') = 10 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as sepuluh,
       case when format(SLIP_DATE,'DD') = 11 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Sebelas,
       case when format(SLIP_DATE,'DD') = 12 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaBelas,
        case when format(SLIP_DATE,'DD') = 13 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TigaBelas,
       case when format(SLIP_DATE,'DD') = 14 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as EmpatBelas,
       case when format(SLIP_DATE,'DD') = 15 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as LimaBelas,
       case when format(SLIP_DATE,'DD') = 16 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as EnamBelas,
        case when format(SLIP_DATE,'DD') = 17 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TujuhBelas,
       case when format(SLIP_DATE,'DD') = 18 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DelapanBelas,
       case when format(SLIP_DATE,'DD') = 19 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as SembilanBelas,
       case when format(SLIP_DATE,'DD') = 20 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluh,
        case when format(SLIP_DATE,'DD') = 21 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhSatu,
       case when format(SLIP_DATE,'DD') = 22 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhDua,
       case when format(SLIP_DATE,'DD') = 23 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhTiga,
       case when format(SLIP_DATE,'DD') = 24 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhEmpat,
        case when format(SLIP_DATE,'DD') = 25 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhLima,
       case when format(SLIP_DATE,'DD') = 26 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhEnam,
       case when format(SLIP_DATE,'DD') = 27 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhTujuh,
       case when format(SLIP_DATE,'DD') = 28 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhDelapan,
        case when format(SLIP_DATE,'DD') = 29 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhSembilan,
       case when format(SLIP_DATE,'DD') = 30 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TigaPuluh,
       case when format(SLIP_DATE,'DD') = 31 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TigaPuluhSatu

from production_income s
inner join  mps_header r
on s.wo_no = r.work_order

group by label_type,
       s.Wo_no,
       s.Item_no,
       r.item_name, 
      r.date_code, 
      r.packaging_type, 
      r.batery_type, 
      r.cell_grade , 
      r.cr_date, 
      r.operateion_time ,
      r.qty,
       format(SLIP_DATE,'MONTH'),
       format(SLIP_DATE,'DD')
    
  

       
UNION ALL

   
select label_type,
       s.Wo_no,
       s.Item_no,
       r.item_name, 
      r.date_code, 
      r.packaging_type, 
      r.batery_type, 
      r.cell_grade as Grade, 
      r.cr_date, 
      r.operateion_time ,
      r.qty,
       format(APPROVAL_DATE,'MONTH'), 
      'ACTUAL',
      sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ),
       case when format(APPROVAL_DATE,'DD') = 1 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end  as Satu,
       case when format(APPROVAL_DATE,'DD') = 2 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Dua,
       case when format(APPROVAL_DATE,'DD') = 3 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Tiga,
       case when format(APPROVAL_DATE,'DD') = 4 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as empat,
       case when format(APPROVAL_DATE,'DD') = 5 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Lima,
       case when format(APPROVAL_DATE,'DD') = 6 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Enam,
       case when format(APPROVAL_DATE,'DD') = 7 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Tujuh,
       case when format(APPROVAL_DATE,'DD') = 8 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Delapan,
        case when format(APPROVAL_DATE,'DD') = 9 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Sembilan,
       case when format(APPROVAL_DATE,'DD') = 10 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as sepuluh,
       case when format(APPROVAL_DATE,'DD') = 11 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Sebelas,
       case when format(APPROVAL_DATE,'DD') = 12 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaBelas,
       case when format(APPROVAL_DATE,'DD') = 13 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TigaBelas,
       case when format(APPROVAL_DATE,'DD') = 14 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as EmpatBelas,
       case when format(APPROVAL_DATE,'DD') = 15 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as LimaBelas,
       case when format(APPROVAL_DATE,'DD') = 16 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as EnamBelas,
       case when format(APPROVAL_DATE,'DD') = 17 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TujuhBelas,
       case when format(APPROVAL_DATE,'DD') = 18 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DelapanBelas,
       case when format(APPROVAL_DATE,'DD') = 19 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as SembilanBelas,
       case when format(APPROVAL_DATE,'DD') = 20 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluh,
        case when format(APPROVAL_DATE,'DD') = 21 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhSatu,
       case when format(APPROVAL_DATE,'DD') = 22 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhDua,
       case when format(APPROVAL_DATE,'DD') = 23 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhTiga,
       case when format(APPROVAL_DATE,'DD') = 24 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhEmpat,
        case when format(APPROVAL_DATE,'DD') = 25 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhLima,
       case when format(APPROVAL_DATE,'DD') = 26 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhEnam,
       case when format(APPROVAL_DATE,'DD') = 27 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhTujuh,
       case when format(APPROVAL_DATE,'DD') = 28 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhDelapan,
        case when format(APPROVAL_DATE,'DD') = 29 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhSembilan,
       case when format(APPROVAL_DATE,'DD') = 30 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TigaPuluh,
       case when format(APPROVAL_DATE,'DD') = 31 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TigaPuluhSatu
from production_income s
inner join  mps_header r
on s.wo_no = r.work_order

--where  format(MPS_date,'MONTH') = 'SEPTEMBER' 

group by label_type,
       s.Wo_no,
       s.Item_no,
       r.item_name, 
      r.date_code, 
      r.packaging_type, 
      r.batery_type, 
      r.cell_grade , 
      r.cr_date, 
      r.operateion_time ,
      r.qty,
       format(APPROVAL_DATE,'MONTH'),
       format(APPROVAL_DATE,'DD')

) x
inner join (select item_no as item_no_1,second_machine from ztb_item_pck) b 
on x.item_no = b.item_no_1 
where b.second_machine is not null
group by label_type,
       x.work_order, 
       item_no,
       item_name, 
       date_code, 
       packaging_type, 
       batery_type, 
       Grade, 
       cr_date, 
       operateion_time ,
       qty,
       Bulan, 
       Status,
       b.second_machine
--order by Label_type,x.Work_order,STAT;
 



 
 
 
 --CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_COMPARISON_LABEL" ("BATERY_TYPE", "BULAN", "HARI", "STAT", "PLN", "OUTPUT", "ACUMM") AS 
 --CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_COMPARISON_SUMMARY" ("LABEL_TYPE", "BATERY_TYPE", "BULAN", "HARI", "STAT", "PLN", "OUTPUT", "ACUMM") AS 
-- CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_COMPARISON2" ("LABEL_TYPE", "GROUPINGLABEL", "WORK_ORDER", "ITEM_NO", "ITEM_NAME", "DATE_CODE", "PACKAGING_TYPE", "BATERY_TYPE", "GRADE", "CR_DATE", "OPERATEION_TIME", "QTY", "BULAN", "TOTAL", "STAT", "SATU", "DUA", "TIGA", "EMPAT", "LIMA", "ENAM", "TUJUH", "DELAPAN", "SEMBILAN", "SEPULUH", "SEBELAS", "DUABELAS", "TIGABELAS", "EMPATBELAS", "LIMABELAS", "ENAMBELAS", "TUJUHBELAS", "DELAPANBELAS", "SEMBILANBELAS", "DUAPULUH", "DUAPULUHSATU", "DUAPULUHDUA", "DUAPULUHTIGA", "DUAPULUHEMPAT", "DUAPULUHLIMA", "DUAPULUHENAM", "DUAPULUHTUJUH", "DUAPULUHDELAPAN", "DUAPULUHSEMBILAN", "TIGAPULUH", "TIGAPULUHSATU") AS 
 --  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_FG_INTRANSIT" ("ITEM_NO", "QTY", "DO_DATE", "BL_DATE") AS 
  create view ZVW_FG_INTRANSIT as
  select dod.item_no,   dod.qty qty  ,
        format(doh.do_date,'dd/mm/yyyy') do_date,   
          format(doh.bl_date,'dd/mm/yyyy') bl_date
         from do_header doh,   
              company  c,    
              currency cu,     
              ( select  d.do_no, d.line_no, d.qty, d.amt_o,   
                        itm.*    
                from    do_details d,    
                        indication idc,    
                        account_month ac,     
                        ( select i.item_no, i.description, i.item, u.unit    
                          from   item i,    
                                 unit u    
                          where  i.uom_q = u.unit_code     
                         ) itm    
                where   d.answer_no1  = idc.answer_no    
                  and   format(idc.ex_factory,'yyyymm')  =   format(ac.ac_month,'yyyymm')    
                  and   d.item_no   =   itm.item_no     
              ) dod    
         where doh.do_no        =   dod.do_no    
           and doh.customer_code =  c.company_code     
           and doh.curr_code     =  cu.curr_code     

           and format(doh.do_date,'yyyymm') <>   format(doh.bl_date,'yyyymm')    
        -- order by doh.customer_code, doh.do_date, doh.do_no,dod.line_no 

         

  create view ZVW_FG_INVENTORY as 
  select i.item_remark1 as Customer,  
       sum(w.last_inventory  + ISNULL(iz.qty,0)) as InventoryBulanLalu,
       sum((w.last_inventory + ISNULL(iz.qty,0)) * i.standard_price)as  AmountInventoryBulanLalu,
       sum(w.this_inventory + ISNULL(vv.this_inventory,0) )as InventoryBulanIni,
        sum((w.this_inventory + ISNULL(vv.this_inventory,0)) * i.standard_price) as AmountInventoryBulanIni

from whinventory w
inner join item i
on  w.item_no = i.item_no
left outer join whinventory_intransit_view vv
on i.item_no = vv.item_no
left outer join zvw_FG_Intransit iz
on w.item_no = iz.item_no
where item_flag = 1 --and item_remark1 = '03. Domestic B to B'
--where w.item_no in (select distinct item_no from transaction where slip_type in (84,85) and accounting_month in (select distinct this_month from whinventory))
group by item_remark1;
 

  --CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_FINISHING" ("LABEL_TYPE", "WORK_ORDER", "ITEM_NO", "ITEM_NAME", "DATE_CODE", "PACKAGING_TYPE", "BATERY_TYPE", "GRADE", "CR_DATE", "OPERATEION_TIME", "QTY", "BULAN", "TOTAL", "STAT", "SATU", "DUA", "TIGA", "EMPAT", "LIMA", "ENAM", "TUJUH", "DELAPAN", "SEMBILAN", "SEPULUH", "SEBELAS", "DUABELAS", "TIGABELAS", "EMPATBELAS", "LIMABELAS", "ENAMBELAS", "TUJUHBELAS", "DELAPANBELAS", "SEMBILANBELAS", "DUAPULUH", "DUAPULUHSATU", "DUAPULUHDUA", "DUAPULUHTIGA", "DUAPULUHEMPAT", "DUAPULUHLIMA", "DUAPULUHENAM", "DUAPULUHTUJUH", "DUAPULUHDELAPAN", "DUAPULUHSEMBILAN", "TIGAPULUH", "TIGAPULUHSATU") AS 
create view ZVW_FINISHING as
  SELECT label_type,
       x.work_order, 
       item_no,
       item_name, 
       date_code, 
       packaging_type, 
       batery_type, 
       Grade, 
       cr_date, 
       operateion_time ,
       qty,
       Bulan, 
        sum(TOTAL) as Total,
       case Status when 'PLAN' Then 'A' When 'OUTPUT' Then  'C' When 'ACTUAL' Then 'B' END as STAT,
       ISNULL(Sum(satu),0) as Satu,
       ISNULL(Sum(Dua),0) as dua,
       ISNULL(sum(tiga),0) as Tiga,
       ISNULL(sum(empat),0) as empat,
       ISNULL(sum(lima),0) as lima,
       ISNULL(sum(enam),0) as enam,
       ISNULL(sum(tujuh),0) as tujuh,
       ISNULL(sum(delapan),0) as delapan,
       ISNULL(sum(sembilan),0) as sembilan,
       ISNULL(sum(sepuluh),0) as sepuluh,
       ISNULL(sum(sebelas),0) as sebelas,
       ISNULL(sum(duabelas),0) as duabelas,
       ISNULL(sum(tigabelas),0) as tigabelas,
       ISNULL(sum(empatbelas),0) as empatbelas,
       ISNULL(sum(limabelas),0) as limabelas,
       ISNULL(sum(enambelas),0) as enambelas,
       ISNULL(sum(TujuhBelas),0) as tujuhbelas,
       ISNULL(sum(delapanbelas),0) as delapanbelas,
       ISNULL(sum(sembilanbelas),0) as sembilanbelas,
       ISNULL(sum(duapuluh),0) as duapuluh,
       ISNULL(sum(duapuluhsatu),0) as duapuluhsatu,
       ISNULL(sum(DuaPuluhDua),0)  as DuaPuluhDua,
       ISNULL(sum(DuaPuluhTiga),0)   as DuaPuluhTiga,
       ISNULL(sum(DuaPuluhEmpat) ,0)  as DuaPuluhEmpat,
       ISNULL(sum(DuaPuluhLima),0)  as DuaPuluhLima,
       ISNULL(sum(DuaPuluhEnam),0)   as DuaPuluhEnam,
       ISNULL(sum(DuaPuluhTujuh),0)  as DuaPuluhTujuh,
       ISNULL(sum(DuaPuluhDelapan),0)   as DuaPuluhDelapan,
        ISNULL(sum(DuaPuluhSembilan),0)   as DuaPuluhSembilan,
        ISNULL(sum(TigaPuluh),0)  as TigaPuluh,
       ISNULL(sum(TigaPuluhSatu),0)   as TigaPuluhSatu
   FROM (
select label_type,
       work_order, 
       item_no,
       r.item_name, 
       date_code, 
       packaging_type, 
       batery_type, 
       cell_grade as Grade, 
       cr_date, 
       operateion_time ,
       r.qty,
       format(MPS_date,'MONTH') as Bulan, 
       'PLAN' as Status,
       sum(s.mps_qty) as Total,
       case when format(MPS_date,'DD') = 1 then sum(s.mps_qty) end  as Satu,
       case when format(MPS_date,'DD') = 2 then sum(s.mps_qty) end as Dua,
       case when format(MPS_date,'DD') = 3 then sum(s.mps_qty) end as Tiga,
       case when format(MPS_date,'DD') = 4 then sum(s.mps_qty) end as empat,
       case when format(MPS_date,'DD') = 5 then sum(s.mps_qty) end as Lima,
       case when format(MPS_date,'DD') = 6 then sum(s.mps_qty) end as Enam,
       case when format(MPS_date,'DD') = 7 then sum(s.mps_qty) end as Tujuh,
       case when format(MPS_date,'DD') = 8 then sum(s.mps_qty) end as Delapan,
        case when format(MPS_date,'DD') = 9 then sum(s.mps_qty) end as Sembilan,
       case when format(MPS_date,'DD') = 10 then sum(s.mps_qty) end as sepuluh,
       case when format(MPS_date,'DD') = 11 then sum(s.mps_qty) end as Sebelas,
       case when format(MPS_date,'DD') = 12 then sum(s.mps_qty) end as DuaBelas,
        case when format(MPS_date,'DD') = 13 then sum(s.mps_qty) end as TigaBelas,
       case when format(MPS_date,'DD') = 14 then sum(s.mps_qty) end as EmpatBelas,
       case when format(MPS_date,'DD') = 15 then sum(s.mps_qty) end as LimaBelas,
       case when format(MPS_date,'DD') = 16 then sum(s.mps_qty) end as EnamBelas,
        case when format(MPS_date,'DD') = 17 then sum(s.mps_qty) end as TujuhBelas,
       case when format(MPS_date,'DD') = 18 then sum(s.mps_qty) end as DelapanBelas,
       case when format(MPS_date,'DD') = 19 then sum(s.mps_qty) end as SembilanBelas,
       case when format(MPS_date,'DD') = 20 then sum(s.mps_qty) end as DuaPuluh,
        case when format(MPS_date,'DD') = 21 then sum(s.mps_qty) end as DuaPuluhSatu,
       case when format(MPS_date,'DD') = 22 then sum(s.mps_qty) end as DuaPuluhDua,
       case when format(MPS_date,'DD') = 23 then sum(s.mps_qty) end as DuaPuluhTiga,
       case when format(MPS_date,'DD') = 24 then sum(s.mps_qty) end as DuaPuluhEmpat,
        case when format(MPS_date,'DD') = 25 then sum(s.mps_qty) end as DuaPuluhLima,
       case when format(MPS_date,'DD') = 26 then sum(s.mps_qty) end as DuaPuluhEnam,
       case when format(MPS_date,'DD') = 27 then sum(s.mps_qty) end as DuaPuluhTujuh,
       case when format(MPS_date,'DD') = 28 then sum(s.mps_qty) end as DuaPuluhDelapan,
        case when format(MPS_date,'DD') = 29 then sum(s.mps_qty) end as DuaPuluhSembilan,
       case when format(MPS_date,'DD') = 30 then sum(s.mps_qty) end as TigaPuluh,
       case when format(MPS_date,'DD') = 31 then sum(s.mps_qty) end as TigaPuluhSatu
from mps_header r
inner join mps_details s 
ON r.po_no = s.po_no and r.po_line_no = s.po_line_no
--where  format(MPS_date,'MONTH') = 'SEPTEMBER'
group by label_type,
       work_order, 
       item_no,
       item_name, 
       date_code, 
       packaging_type, 
       batery_type, 
       cell_grade, 
       cr_date, 
       operateion_time ,
       r.qty,
       format(MPS_date,'MONTH'),
      format(MPS_date,'DD')
      
UNION ALL
          
select label_type,
       s.Wo_no,
       s.Item_no,
       r.item_name, 
      r.date_code, 
      r.packaging_type, 
      r.batery_type, 
      r.cell_grade as Grade, 
      r.cr_date, 
      r.operateion_time ,
      r.qty,
       format(SLIP_DATE,'MONTH'), 
      'OUTPUT',
      sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ),
       case when format(SLIP_DATE,'DD') = 1 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end  as Satu,
       case when format(SLIP_DATE,'DD') = 2 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Dua,
       case when format(SLIP_DATE,'DD') = 3 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Tiga,
       case when format(SLIP_DATE,'DD') = 4 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as empat,
       case when format(SLIP_DATE,'DD') = 5 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Lima,
       case when format(SLIP_DATE,'DD') = 6 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Enam,
       case when format(SLIP_DATE,'DD') = 7 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Tujuh,
       case when format(SLIP_DATE,'DD') = 8 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Delapan,
        case when format(SLIP_DATE,'DD') = 9 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Sembilan,
       case when format(SLIP_DATE,'DD') = 10 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as sepuluh,
       case when format(SLIP_DATE,'DD') = 11 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Sebelas,
       case when format(SLIP_DATE,'DD') = 12 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaBelas,
        case when format(SLIP_DATE,'DD') = 13 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TigaBelas,
       case when format(SLIP_DATE,'DD') = 14 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as EmpatBelas,
       case when format(SLIP_DATE,'DD') = 15 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as LimaBelas,
       case when format(SLIP_DATE,'DD') = 16 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as EnamBelas,
        case when format(SLIP_DATE,'DD') = 17 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TujuhBelas,
       case when format(SLIP_DATE,'DD') = 18 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DelapanBelas,
       case when format(SLIP_DATE,'DD') = 19 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as SembilanBelas,
       case when format(SLIP_DATE,'DD') = 20 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluh,
        case when format(SLIP_DATE,'DD') = 21 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhSatu,
       case when format(SLIP_DATE,'DD') = 22 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhDua,
       case when format(SLIP_DATE,'DD') = 23 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhTiga,
       case when format(SLIP_DATE,'DD') = 24 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhEmpat,
        case when format(SLIP_DATE,'DD') = 25 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhLima,
       case when format(SLIP_DATE,'DD') = 26 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhEnam,
       case when format(SLIP_DATE,'DD') = 27 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhTujuh,
       case when format(SLIP_DATE,'DD') = 28 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhDelapan,
        case when format(SLIP_DATE,'DD') = 29 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhSembilan,
       case when format(SLIP_DATE,'DD') = 30 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TigaPuluh,
       case when format(SLIP_DATE,'DD') = 31 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TigaPuluhSatu

from production_income s
inner join  mps_header r
on s.wo_no = r.work_order

group by label_type,
       s.Wo_no,
       s.Item_no,
       r.item_name, 
      r.date_code, 
      r.packaging_type, 
      r.batery_type, 
      r.cell_grade , 
      r.cr_date, 
      r.operateion_time ,
      r.qty,
       format(SLIP_DATE,'MONTH'),
       format(SLIP_DATE,'DD')
    
  

       
UNION ALL

   
select label_type,
       s.Wo_no,
       s.Item_no,
       r.item_name, 
      r.date_code, 
      r.packaging_type, 
      r.batery_type, 
      r.cell_grade as Grade, 
      r.cr_date, 
      r.operateion_time ,
      r.qty,
       format(APPROVAL_DATE,'MONTH'), 
      'ACTUAL',
      sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ),
       case when format(APPROVAL_DATE,'DD') = 1 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end  as Satu,
       case when format(APPROVAL_DATE,'DD') = 2 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Dua,
       case when format(APPROVAL_DATE,'DD') = 3 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Tiga,
       case when format(APPROVAL_DATE,'DD') = 4 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as empat,
       case when format(APPROVAL_DATE,'DD') = 5 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Lima,
       case when format(APPROVAL_DATE,'DD') = 6 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Enam,
       case when format(APPROVAL_DATE,'DD') = 7 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Tujuh,
       case when format(APPROVAL_DATE,'DD') = 8 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Delapan,
        case when format(APPROVAL_DATE,'DD') = 9 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Sembilan,
       case when format(APPROVAL_DATE,'DD') = 10 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as sepuluh,
       case when format(APPROVAL_DATE,'DD') = 11 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Sebelas,
       case when format(APPROVAL_DATE,'DD') = 12 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaBelas,
       case when format(APPROVAL_DATE,'DD') = 13 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TigaBelas,
       case when format(APPROVAL_DATE,'DD') = 14 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as EmpatBelas,
       case when format(APPROVAL_DATE,'DD') = 15 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as LimaBelas,
       case when format(APPROVAL_DATE,'DD') = 16 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as EnamBelas,
       case when format(APPROVAL_DATE,'DD') = 17 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TujuhBelas,
       case when format(APPROVAL_DATE,'DD') = 18 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DelapanBelas,
       case when format(APPROVAL_DATE,'DD') = 19 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as SembilanBelas,
       case when format(APPROVAL_DATE,'DD') = 20 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluh,
        case when format(APPROVAL_DATE,'DD') = 21 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhSatu,
       case when format(APPROVAL_DATE,'DD') = 22 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhDua,
       case when format(APPROVAL_DATE,'DD') = 23 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhTiga,
       case when format(APPROVAL_DATE,'DD') = 24 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhEmpat,
        case when format(APPROVAL_DATE,'DD') = 25 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhLima,
       case when format(APPROVAL_DATE,'DD') = 26 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhEnam,
       case when format(APPROVAL_DATE,'DD') = 27 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhTujuh,
       case when format(APPROVAL_DATE,'DD') = 28 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhDelapan,
        case when format(APPROVAL_DATE,'DD') = 29 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhSembilan,
       case when format(APPROVAL_DATE,'DD') = 30 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TigaPuluh,
       case when format(APPROVAL_DATE,'DD') = 31 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TigaPuluhSatu
from production_income s
inner join  mps_header r
on s.wo_no = r.work_order

--where  format(MPS_date,'MONTH') = 'SEPTEMBER' 

group by label_type,
       s.Wo_no,
       s.Item_no,
       r.item_name, 
      r.date_code, 
      r.packaging_type, 
      r.batery_type, 
      r.cell_grade , 
      r.cr_date, 
      r.operateion_time ,
      r.qty,
       format(APPROVAL_DATE,'MONTH'),
       format(APPROVAL_DATE,'DD')

) x
where trim(bulan) = 'MAY' 
group by label_type,
       x.work_order, 
       item_no,
       item_name, 
       date_code, 
       packaging_type, 
       batery_type, 
       Grade, 
       cr_date, 
       operateion_time ,
       qty,
       Bulan, 
       Status
--order by Label_type,x.Work_order,STAT;
 

 create view ZVW_FORECAST as 
  select   mps.packaging_type, 
         mps.po_no, 
         mps.po_line_no,
         case when sd.in_mps is not null then mps.po_line_no else  isnull((SUBSTRING(mps.po_line_no, 1, LEN(mps.po_line_no) - 1)) , mps.po_line_no) end as "Original_PO_Line",
         sd.in_mps ,
         mps.work_order,
         mps.item_no, 
         mps.item_name, 
         mps.date_code, 
         mps.Batery_Type,
         mps.status,
         mps.cell_grade,
         mps.Remark,
         mps.Qty, 
         mps.cr_date ,
         case when in_mps is not null then sd.ETD else (select TOP 1 so_details.ETD from so_details inner join so_header on so_details.so_no = so_header.so_no  
                                                          where so_header.customer_po_no = mps.po_no  and  so_details.line_no = isnull((SUBSTRING(mps.po_line_no, 1, LEN(mps.po_line_no) - 1)) , mps.po_line_no) ) end  as Request_ETD,
       
        
         isnull(case sd.origin_code when 1 then 'USD' When 8 Then 'JPY' when 23 Then 'IDR' END,case (select top 1 sp_ref.curr_code from sp_ref where sp_ref.item_no = mps.item_no ) when 1 then 'USD' When 8 Then 'JPY' when 23 Then 'IDR' END) as Currency , 
         isnull(sd.u_price,(select top 1 u_price from sp_ref where sp_ref.item_no = mps.item_no )) as Price,
         mps.qty * isnull(sd.u_price,(select top 1 u_price from sp_ref where sp_ref.item_no = mps.item_no )) as sales_Price,
         isnull(t.qty,0) as kuraire
       


from mps_header MPS
left outer join (select sum(case when slip_type <> 80  then slip_quantity * -1 else slip_quantity end) as qty, item_no,wo_no from "transaction" group by item_no,wo_no )t on t.item_no = mps.item_no and t.wo_no = mps.work_order

left outer join (select  so_details.so_no as SO_no,so_details.item_no,so_details.u_price,so_header.curr_code as origin_code,so_header.customer_po_no,so_details.ETD,  so_details.line_no  as Line_no, so_header.customer_code,so_details.in_mps from SO_details inner join so_header on so_details.so_no = so_header.so_no )sd 
   ON mps.po_no = sd.customer_po_no and mps.po_line_no = sd.line_no and mps.item_no = sd.item_no  


--order by mps.packaging_type,status, po_no,mps.po_line_no;
 

  create view ZVW_FORECAST_0 as
  select r.* ,l.*,isnull(cc.qty_produksi,0) qty_produksi,isnull(dd.qty_in_transit,0) qty_in_transit,isnull(ee.qty_sales,0) qty_sales,ff.u_price, SUBSTRING(ccx.tterm ,1,3) as term
from mps_header r
left outer join (
select po_no as po_no_1,
       po_line_no as po_line_no_1,
       sum(qty) Quantity,
       sum(January)  January,
       sum(February)  February,
       sum(March)  March,       
       sum(April)  April,       
       sum(May)  May,       
       sum(June)  June,       
       sum(July)  July,       
       sum(August)  August,       
       sum(September)  September,       
       sum(October)  October,       
       sum(November)  November,
       sum(December)  December
from       
( 
select po_no,
       po_line_no,
       qty,
       case when mps_date = '01' Then qty else 0 end January,
       case when mps_date = '02' Then qty else 0 end February,
       case when mps_date = '03' Then qty else 0 end March,       
       case when mps_date = '04' Then qty else 0 end April,       
       case when mps_date = '05' Then qty else 0 end May,       
       case when mps_date = '06' Then qty else 0 end June,       
       case when mps_date = '07' Then qty else 0 end July,       
       case when mps_date = '08' Then qty else 0 end August,       
       case when mps_date = '09' Then qty else 0 end September,       
       case when mps_date = '10' Then qty else 0 end October,       
       case when mps_date = '11' Then qty else 0 end November,
       case when mps_date = '12' Then qty else 0 end December
from       
  (
    select sum(mps_qty) qty,po_no,po_line_no, format(mps_date,'MM') mps_date
    from mps_details
    group by po_no,po_line_no, format(mps_date,'MM') 
  )bb
           
)aa group by po_no,
           po_line_no
)l
on r.po_no = l.po_no_1 and r.po_line_no = l.po_line_no_1
left outer join (select sum(case when slip_type = 80 then slip_quantity else slip_quantity *-1 end) as Qty_Produksi,wo_no from production_income where slip_date <= '30-OCT-2018' group by wo_no )pi
on r.work_order = pi.wo_no
left outer join 
(
select sum(case when slip_type = 80 then i.slip_quantity else i.slip_quantity *-1 end) qty_produksi,i.wo_no work_no
from production_income i
--inner join  answer aa on aa.answer_no = i.answer_no 
where i.slip_date <= '30-OCT-2018' and wo_no is not null --and wo_no  = 'EI17-187-LR03C1-5'
group by i.wo_no
)cc on cc.work_no = r.work_order
left outer join 
(
select sum(i.qty) qty_in_transit,aa.work_no
from indication i
inner join  answer aa on aa.answer_no = i.answer_no 
inner join do_so ds on aa.answer_no = ds.answer_no
inner join do_header dh on ds.do_no = dh.do_no
where  i.ex_factory <= '30-OCT-2018' and  bl_Date > '30-OCT-2018'
group by aa.work_no
)dd on dd.work_no = r.work_order
left outer join 
(
select sum(i.qty) qty_sales,aa.work_no
from indication i
inner join  answer aa on aa.answer_no = i.answer_no 
inner join do_so ds on aa.answer_no = ds.answer_no
inner join do_header dh on ds.do_no = dh.do_no
where i.ex_factory <= '30-OCT-2018' and  bl_Date <= '30-OCT-2018' and work_no is not null and bl_Date is not null --and work_no = 'EI17-184-LR6C1-2'
group by aa.work_no
)ee on ee.work_no = r.work_order
left outer join 
(select a.* from sp_ref a inner join (select item_no,max(reg_date) as reg_date from sp_ref group by  item_no ) b on a.reg_date = b.reg_Date 
  and a.item_no = b.item_no where a.customer_code <> '996295')ff
 on r.item_no = ff.item_no 

left outer join 
(select a.* from sp_ref a inner join (select item_no,max(reg_date) as reg_date from sp_ref group by  item_no ) b on a.reg_date = b.reg_Date and a.item_no = b.item_no where a.customer_code <> '996295') b
on r.item_no = b.item_no 
left outer join company c
on b.customer_code = c.company_code 
left outer join contract ccx
on b.customer_code = ccx.company_code and ccx.contract_seq = 1;

 

  

 create  view ZVW_FORECAST_01 as
  select ROW_NUMBER() OVER (
	ORDER BY z.item_no
   ) as nomor,
       i.groups_pck pack_type,
       z.po_no,
       z.item_no,
       z.item_name Brand,
       z.batery_type,
       z.cell_grade,
       ii.item_remark1,
       z.remark,
       '' destination, 
       z.qty Qty_Ordered, 
       z.cr_date,
       'US$' Currency, 
       z.u_price,
       z.qty * z.u_price Sales_Amount,
       format ( z.cr_date, 'MM') Cr_Month,
      case when  isnull(z.qty_produksi,0) - (isnull(qty_in_transit,0) + isnull(qty_sales,0)) > 0 and z.cr_date < (SELECT EOMONTH(getdate()) )  then  (select distinct SUBSTRING(cast(this_month as varchar(10)),5,2) from whinventory) else
        case when z.remark like '%AMAZ%' and cast(format ( z.cr_date, 'dd') as integer) > 16  then format ( dateadd(d,30,z.cr_date ), 'MM') else
          case when cast(format ( z.cr_date, 'dd') as integer) > 27 or isnull(qty_in_transit,0) > 0 then format ( dateadd(d,30,z.cr_date ), 'MM') --else  
             else format ( z.cr_date, 'MM') 
          end 
        end 
       end  as
       sales_month,
       z.term,
       ii.standard_price,
       isnull(z.qty_produksi,0) - (isnull(qty_in_transit,0) + isnull(qty_sales,0)) stock_warehouse,
       isnull(qty_in_transit,0) stock_in_transit,
       z.january,
       z.january * z.u_price January_Amount,
       z.february,
       z.february * z.u_price february_Amount,
       z.march,
       z.march * z.u_price march_Amount,
       z.April,
       z.April * z.u_price April_Amount,
       z.May,
       z.May * z.u_price May_Amount,
       z.June,
       z.June * z.u_price June_Amount,
       z.July,
       z.July * z.u_price July_Amount,
       z.August,
       z.August * z.u_price August_Amount,
       z.September,
       z.September * z.u_price September_Amount,
       z.October,
       z.October * z.u_price October_Amount,
       z.November,
       z.November * z.u_price November_Amount,
       z.December,
       z.December * z.u_price December_Amount
from zvw_forecast_0 z
left outer join ztb_item_pck i
on z.item_no = i.item_no
left outer join item ii
on z.item_no = ii.item_no;
 

create view ZVW_FORECAST_1 as
  select packaging_type,
       work_order,
       po_no,
       po_line_no,
       a.item_no, 
       item_name as brand,
       date_code, 
       status, 
       batery_type, 
       cell_grade,
       remark as Customer_Group,
       Qty as Qty_Order, 
       cr_date,
       b.u_price, 
       case when b.curr_code = 23 then 'IDR' else case when b.curr_code = 1  then  'USD' end end as Curr,
       b.customer_code, 
       qty * b.u_price as Sales_Amount,
       SUBSTRING(cc.tterm ,1,3) as term,
       c.country_code,
       c.company
--select a.work_order
from mps_header a
left outer join 
(select a.* from sp_ref a inner join (select item_no,max(reg_date) as reg_date from sp_ref group by  item_no ) b on a.reg_date = b.reg_Date and a.item_no = b.item_no where a.customer_code <> '996295') b
on a.item_no = b.item_no 
left outer join company c
on b.customer_code = c.company_code 
left outer join contract cc
on b.customer_code = cc.company_code and cc.contract_seq = 1
 
 

create view ZVW_FORECAST_2 as 
  select z.*,pi.*,
cc.commit_Date,cc.qty,cc.work_no, cc.customer_po_no, cc.customer_po_line_no,cc.inv_no,cc.inv_line_no,
dh.bl_date,
      
      case when isnull(z.qty_order,0) - isnull(qty_produksi,0) < 0 then 0 else isnull(z.qty_order,0) - isnull(qty_produksi,0) end as Qty_Forecast,
      case when bl_date is null and commit_date is null and qty_produksi is not null then isnull(cc.qty,qty_produksi) else 0 end as Qty_Gudang,
      case when bl_date > '31-DEC-2017' and commit_date <= '31-DEC-2017' and qty_produksi is not null then cc.qty else 0 end as Qty_in_transit,
      case when bl_date is not null and commit_date is not null and qty_produksi is not null then cc.qty else 0 end as Actual_sales,
      case when bl_date is not null and commit_date is not null and qty_produksi is not null then dh.bl_date end as sales_month


from zvw_forecast_1 z
left outer join (select sum(case when slip_type = 80 then slip_quantity else slip_quantity *-1 end) as Qty_Produksi,wo_no from production_income where slip_date <= '31-DEC-2017' group by wo_no )pi
on z.work_order = pi.wo_no
left outer join 
(

select i.ex_factory as commit_Date,i.inv_no,i.inv_line_no,i.qty,aa.work_no, aa.customer_po_no, aa.customer_po_line_no
from indication i
inner join  answer aa on aa.answer_no = i.answer_no where i.ex_factory <= '31-DEC-2017'
)cc on cc.work_no = z.work_order
left outer join (select bl_date, inv_no as inv_no_1 from do_header)dh on cc.inv_no = dh.inv_no_1
where item_no <> '645845'  --and  work_order like '0006966-LR03C1-22'


create view ZVW_FORECAST_3 as 
  select  distinct zvw_forecast_2.*,d.standard_price,
      (qty_forecast / jumlah) + qty_gudang as qty_forecast_1,
      format(Bl_date,'MM') as sales_date, 
      format(cr_Date,'MM') as Forecast_date,
    isnull(case when format(Bl_date,'MM') = '01' then isnull(actual_sales,0) end,0)  + 
        case when mps_Date = '01' then (mps_qty / jumlah)  + qty_in_transit end  as January_Qty,
        (isnull(case when format(Bl_date,'MM') = '01' then isnull(actual_sales,0) end,0)  + 
        case when mps_Date = '01' then (mps_qty / jumlah)  + qty_in_transit end) * standard_price as January_Amount,
        isnull(case when format(Bl_date,'MM') = '02' then isnull(actual_sales,0) end,0)  + 
        case when mps_Date = '02' then (mps_qty / jumlah)  + qty_in_transit end as February_Qty,
         (isnull(case when format(Bl_date,'MM') = '02' then isnull(actual_sales,0) end,0)  + 
        case when mps_Date = '02' then (mps_qty / jumlah)  + qty_in_transit end) * standard_price as February_Amount, 
        isnull(case when format(Bl_date,'MM') = '03' then isnull(actual_sales,0) end,0)  + 
        case when format(cr_Date,'MM') = '03' then (mps_qty / jumlah)  + qty_in_transit end as March_Qty,
       (isnull(case when format(Bl_date,'MM') = '03' then isnull(actual_sales,0) end,0)  +  
        case when format(cr_Date,'MM') = '03' then (mps_qty / jumlah)  + qty_in_transit end) * standard_price as March_Amount, 
        isnull(case when format(Bl_date,'MM') = '04' then isnull(actual_sales,0) end,0)  + 
        case when format(cr_Date,'MM') = '04' then (mps_qty / jumlah)  + qty_in_transit end as April_Qty,
     (isnull(case when format(Bl_date,'MM') = '04' then isnull(actual_sales,0) end,0)  + 
        case when format(cr_Date,'MM') = '04' then (mps_qty / jumlah)  + qty_in_transit end) * standard_price as April_Amount, 
       isnull( case when format(Bl_date,'MM') = '05' then isnull(actual_sales,0) end,0)  + 
        case when format(cr_Date,'MM') = '05' then (mps_qty / jumlah)  + qty_in_transit end as May_Qty,
        (isnull(case when format(Bl_date,'MM') = '05' then isnull(actual_sales,0) end,0)  + 
        case when format(cr_Date,'MM') = '05' then (mps_qty / jumlah)  + qty_in_transit end) * standard_price as May_Amount, 
        isnull(case when format(Bl_date,'MM') = '06' then isnull(actual_sales,0) end,0)  + 
        case when format(cr_Date,'MM') = '06' then (mps_qty / jumlah)  + qty_in_transit end as June_Qty,
     (isnull(case when format(Bl_date,'MM') = '06' then isnull(actual_sales,0) end,0)  + 
        case when format(cr_Date,'MM') = '06' then (mps_qty / jumlah)  + qty_in_transit end) * standard_price as June_Amount, 
        isnull(case when format(Bl_date,'MM') = '07' then isnull(actual_sales,0) end,0)  + 
        case when format(cr_Date,'MM') = '07' then (mps_qty / jumlah)  + qty_in_transit end as July_Qty,
        (isnull(case when format(Bl_date,'MM') = '07' then isnull(actual_sales,0) end,0)  + 
        case when format(cr_Date,'MM') = '07' then (mps_qty / jumlah)  + qty_in_transit end) * standard_price as July_Amount, 
        isnull(case when format(Bl_date,'MM') = '08' then isnull(actual_sales,0) end,0)  + 
        case when format(cr_Date,'MM') = '08' then (mps_qty / jumlah)  + qty_in_transit end as August_Qty,
        (isnull(case when format(Bl_date,'MM') = '08' then isnull(actual_sales,0) end,0)  + 
        case when format(cr_Date,'MM') = '08' then (mps_qty / jumlah)  + qty_in_transit end) * standard_price as August_Amount, 
        isnull(case when format(Bl_date,'MM') = '09' then isnull(actual_sales,0) end,0)  + 
        case when format(cr_Date,'MM') = '09' then (mps_qty / jumlah)  + qty_in_transit end as September_Qty,
        (isnull(case when format(Bl_date,'MM') = '09' then isnull(actual_sales,0) end,0)  + 
        case when format(cr_Date,'MM') = '09' then (mps_qty / jumlah)  + qty_in_transit end) * standard_price as September_Amount, 
        isnull(case when format(Bl_date,'MM') = '10' then isnull(actual_sales,0) end,0)  + 
        case when format(cr_Date,'MM') = '10' then (mps_qty / jumlah)  + qty_in_transit end as October_Qty,
        (isnull(case when format(Bl_date,'MM') = '10' then isnull(actual_sales,0) end,0)  + 
        case when format(cr_Date,'MM') = '10' then (mps_qty / jumlah)  + qty_in_transit end) * standard_price as OctoberAmount, 
        isnull(case when format(Bl_date,'MM') = '11' then isnull(actual_sales,0) end,0)  + 
        case when format(cr_Date,'MM') = '11' then (mps_qty / jumlah)  + qty_in_transit end as November_Qty,
        (isnull(case when format(Bl_date,'MM') = '11' then isnull(actual_sales,0) end,0)  + 
        case when format(cr_Date,'MM') = '11' then (mps_qty / jumlah)  + qty_in_transit end) * standard_price as November_Amount, 
        isnull(case when format(Bl_date,'MM') = '12' then isnull(actual_sales,0) end,0)  + 
        case when format(cr_Date,'MM') = '12' then (mps_qty / jumlah) + qty_in_transit end as December_Qty,
        (isnull(case when format(Bl_date,'MM') = '12' then isnull(actual_sales,0) end,0)  + 
        case when format(cr_Date,'MM') = '12' then (mps_qty / jumlah)  + qty_in_transit end) * standard_price as December_Amount
        
from zvw_forecast_2 
inner join (
select count(work_order + mps_header.po_no + mps_header.po_line_no) as jumlah,work_order + mps_header.po_no + mps_header.po_line_no as work_order, format(mps_date,'MM') mps_Date,sum(mps_qty) mps_qty from  
      mps_header
      inner join (select sum(mps_qty) as mps_qty, mps_date, po_no,po_line_no from mps_details group by po_no,po_line_no,mps_date )ss
      on mps_header.po_no = ss.po_no and mps_header.po_line_no = ss.po_line_no
group by mps_header.work_order +  mps_header.po_no + mps_header.po_line_no,format(mps_date,'MM')--,mps_qty
)b on b.work_order =  zvw_forecast_2.work_order  +  zvw_forecast_2.po_no  + zvw_forecast_2.po_line_no
left outer join (select item_no, standard_price from item )d
on zvw_forecast_2.item_no = d.item_no;
 

create view ZVW_FORECAST_4 as
  select packaging_type,
       work_order,
       po_no,
       item_no,
       brand, 
       Company,
       customer_group,
       batery_type,
       cell_grade,
       qty_order,
       cr_Date,
       u_price,
       standard_price,
        TERM,
       curr,
       Sales_amount,
       Qty_Gudang,
       Qty_In_Transit,
       isnull(sales_date,forecast_date) as sales_date,
       sum(january_qty)january_qty ,
       sum(january_amount)january_amount,
       sum(february_qty)february_qty,
       sum(february_amount)february_amount,
       sum(march_qty)march_qty,
       sum(march_amount)march_amount,
       sum(april_qty)april_qty,
       sum(april_amount)april_amount,
      sum(may_qty)may_qty,
      sum(may_amount)may_amount,
       sum(june_qty)june_qty,
       sum(june_amount)june_amount,
       sum(july_qty)july_qty,
       sum(july_amount)july_amount,
       sum(august_qty)august_qty,
       sum(august_amount)august_amount,
       sum(september_qty )september_qty,
       sum(september_amount)september_amount,
       sum(october_qty)october_qty,
       sum(octoberamount)octoberamount, 
       sum(november_qty)november_qty,
       sum(november_amount)november_amount,
       sum(december_qty)december_qty,
       sum(december_amount)december_amount
from zvw_forecast_3
group by 
packaging_type,
       work_order,
       po_no,
       item_no,
       brand, 
       Company,
       customer_group,
       batery_type,
       cell_grade,
       qty_order,
       cr_Date,
       u_price,
       standard_price,
        TERM,
       curr,
       Sales_amount,
       Qty_Gudang,
       Qty_In_Transit,
       isnull(sales_date,forecast_date);
 

create view ZVW_FORECAST_MONITORING as
  select it.item_remark1 as  Remark,
       inv_Date,
       BL_Date,s.U_price * isnull(doh.ex_rate, r.ex_rate) as U_price
       ,r.customer_po_no,s.line_no,s.item_no,it.description, GRADE_CODE,
case when ltrim(rtrim(it.class_code)) like '1112%' then 'LR6' else case when it.class_code like '1113%' Then 'LR03' else case when it.class_Code = '111111' then 'LR1' END  END END as Type,
ii.inv_no, 
inv_line_no,
CUSTOMER_PO_NO  +  '-' +  case when ltrim(rtrim(it.class_code)) like '1112%' then 'LR6' else case when it.class_code like '1113%' Then 'LR03' else case when it.class_Code = '111111' then 'LR1' END  END END  + GRADE_CODE + '-' + LINE_NO  as WO,
s.qty as Order_Qty,
s.qty * s.u_price * isnull(doh.ex_rate, r.ex_rate) as Order_Qty_Amount,
isnull(ii.qty,0) as ex_Factory_QTY,
(isnull(ii.qty,0) * s.u_price * isnull(doh.ex_rate, r.ex_rate))  as ex_Factory_Amount,
case when doh.BL_date is null then 0 else isnull(ii.qty,0) end  as Qty_Bl,
case when doh.BL_date is null then 0 else isnull(ii.qty,0) * s.u_price * isnull(doh.ex_rate, r.ex_rate) end  as sales_Amount
from so_header r
inner join so_details s
on s.so_no = r.so_no
inner join item it
on it.item_no = s.item_no
left outer join (select isnull(sum(qty),0) as qty, so_no,so_line_no, indication.inv_no,inv_line_no from indication where commit_date is not null group by so_no,so_line_no,inv_no,inv_line_no )  ii 
on s.so_no = ii.so_no and s.line_no = ii.so_line_no
left outer join (select inv_no,BL_date,inv_Date,ex_rate from do_header   ) doh
on ii.inv_no = doh.inv_no
where customer_po_no in (
select po_no
from mps_header
where status = 'FM')

 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_INVENTORY_ANALYSIST" ("ITEM1", "LASTMONTH", "LASTMONTHAMOUNT", "TANGGAL1", "TANGGAL2", "TANGGAL3", "TANGGAL4", "TANGGAL5", "TANGGAL6", "TANGGAL7", "TANGGAL8", "TANGGAL9", "TANGGAL0", "TANGGAL11", "TANGGAL12", "TANGGAL13", "TANGGAL14", "TANGGAL15", "TANGGAL16", "TANGGAL17", "TANGGAL18", "TANGGAL19", "TANGGAL20", "TANGGAL21", "TANGGAL22", "TANGGAL23", "TANGGAL24", "TANGGAL25", "TANGGAL26", "TANGGAL27", "TANGGAL28", "TANGGAL29", "TANGGAL30", "TANGGAL31", "THISMONTH", "THISMONTHAMOUNT") AS 
  select x.item as Item1,
       x.lastmonth,
       x.lastmonthamount,
       x.lastmonth + nvl(y.tanggal1, 0) as tanggal1,
       x.lastmonth + nvl(y.tanggal2, 0) as tanggal2,
       x.lastmonth + nvl(y.tanggal3,0) as tanggal3,
       x.lastmonth + nvl(y.tanggal4,0) as tanggal4, 
       x.lastmonth + nvl(y.tanggal5,0) as tanggal5,
       x.lastmonth + nvl(y.tanggal6,0) as tanggal6,
       x.lastmonth + nvl(y.tanggal7,0) as tanggal7,
       x.lastmonth + nvl(y.tanggal8,0) as tanggal8,
       x.lastmonth + nvl(y.tanggal9,0) as tanggal9,
       x.lastmonth + nvl(y.tanggall0,0) as tanggal0,
       x.lastmonth + nvl(y.tanggall1,0) as tanggal11,
       x.lastmonth + nvl(y.tanggall2,0) as tanggal12,
       x.lastmonth + nvl(y.tanggall3,0) as tanggal13,
       x.lastmonth + nvl(y.tanggall4,0) as tanggal14,
       x.lastmonth + nvl(y.tanggall5,0) as tanggal15,
       x.lastmonth + nvl(y.tanggall6,0) as tanggal16,
       x.lastmonth + nvl(y.tanggall7,0) as tanggal17,
       x.lastmonth + nvl(y.tanggall8,0) as tanggal18,
       x.lastmonth + nvl(y.tanggall9,0) as tanggal19,
       x.lastmonth + nvl(y.tanggal20,0) as tanggal20,
       x.lastmonth + nvl(y.tanggal21,0) as tanggal21,
       x.lastmonth + nvl(y.tanggal22,0) as tanggal22,
       x.lastmonth + nvl(y.tanggal23,0) as tanggal23,
       x.lastmonth + nvl(y.tanggal24,0) as tanggal24,
       x.lastmonth + nvl(y.tanggal25,0) as tanggal25,
       x.lastmonth + nvl(y.tanggal26,0) as tanggal26,
       x.lastmonth + nvl(y.tanggal27,0) as tanggal27,
       x.lastmonth + nvl(y.tanggal28,0) as tanggal28,
       x.lastmonth + nvl(y.tanggal29,0) as tanggal29,
       x.lastmonth + nvl(y.tanggal30,0) as tanggal30,
       x.lastmonth + nvl(y.tanggal31,0) as tanggal31,
        x.thismonth,
       x.thismonthamount 
       --aa.thismonthamount as actualAmount
from 
(
select i.item_no as item,this_month,--,slip_date, 
       sum(w.last_inventory) as LastMonth ,
       sum(i.standard_price  * w.last_inventory ) LastMonthAmount,
       sum(w.last2_inventory) as LastMonth2 ,
       sum(i.standard_price  * w.last2_inventory ) LastMonthAmount2,
       sum(w.this_inventory) as ThisMonth,
       sum(i.standard_price * w.this_inventory ) as ThisMonthAmount
from item i
inner join whinventory w
on i.item_no = w.item_no
where  cost_subject_code = '136010' 
group by this_month,i.item_no
)x
left outer join 
(
select aa.item,
     
       sum(Tanggal_1) as Tanggal1,
       sum(Tanggal_2) as Tanggal2,
       sum(Tanggal_3) as Tanggal3,
       sum(Tanggal_4) as Tanggal4,
       sum(Tanggal_5) as Tanggal5,
       sum(Tanggal_6) as Tanggal6,
       sum(Tanggal_7) as Tanggal7,
       sum(Tanggal_8) as Tanggal8,
       sum(Tanggal_9) as Tanggal9,
       sum(Tanggal_10) as Tanggall0,
       sum(Tanggal_11) as Tanggall1,
       sum(Tanggal_12) as Tanggall2,
       sum(Tanggal_13) as Tanggall3,
       sum(Tanggal_14) as Tanggall4,
       sum(Tanggal_15) as Tanggall5,
       sum(Tanggal_16) as Tanggall6,
       sum(Tanggal_17) as Tanggall7,
       sum(Tanggal_18) as Tanggall8,
       sum(Tanggal_19) as Tanggall9,
       sum(Tanggal_20) as Tanggal20,
       sum(Tanggal_21) as Tanggal21,
       sum(Tanggal_22) as Tanggal22,
       sum(Tanggal_23) as Tanggal23,
       sum(Tanggal_24) as Tanggal24,
       sum(Tanggal_25) as Tanggal25,
       sum(Tanggal_26) as Tanggal26,
       sum(Tanggal_27) as Tanggal27,
       sum(Tanggal_28) as Tanggal28,
       sum(Tanggal_29) as Tanggal29,
       sum(Tanggal_30) as Tanggal30,
       sum(Tanggal_31) as Tanggal31
from 
(
select i.item_no as item,
      case when trim(TO_CHAR(slip_date, 'dd')) = '01' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_1,
      case when trim(TO_CHAR(slip_date, 'dd')) <= '02' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_2,
      case when trim(TO_CHAR(slip_date, 'dd')) <= '03' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_3,
      case when trim(TO_CHAR(slip_date, 'dd')) <= '04' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_4,
       case when trim(TO_CHAR(slip_date, 'dd')) <= '05' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_5,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '06' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_6,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '07' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_7,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '08' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_8,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '09' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_9,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '10' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_10,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '11' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_11,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '12' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_12,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '13' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_13,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '14' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_14,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '15' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_15,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '16' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_16,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '17' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_17,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '18' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_18,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '19' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_19,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '20' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_20,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '21' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_21,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '22' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_22,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '23' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_23,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '24' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_24,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '25' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_25,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '26' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_26,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '27' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_27,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '28' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_28,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '29' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_29,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '30' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_30,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '31' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_31

        
from item i
inner join transaction t
on i.item_no = t.item_no
inner join sliptype s
on s.slip_type = t.slip_type
inner join whinventory w
on w.item_no = i.item_no
where  t.cost_subject_code = '136010' and accounting_month = (select distinct this_month from whinventory) --and i.item_no = '1110031'
group by  i.item_no,slip_date,last_inventory--,slip_date--,i.item_no,i.standard_price

)aa group by aa.item

)y 
on x.item = y.item
--where x.item = '91232093'
order by x.item;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_INVENTORY_MATERIAL" ("ITEM_NO", "AX", "BX", "TGL1", "TGL2", "TGL3", "TGL4", "TGL5", "TGL6", "TGL7", "TGL8", "TGL9", "TGL10", "TGL11", "TGL12", "TGL13", "TGL14", "TGL15", "TGL16", "TGL17", "TGL18", "TGL19", "TGL20", "TGL21", "TGL22", "TGL23", "TGL24", "TGL25", "TGL26", "TGL27", "TGL28", "TGL29", "TGL30", "TGL31", "CX", "DX") AS 
  select item_no,
        0 ax,
        0 bx,
         nvl(sum(n_1),0) tgl1,
         nvl(sum(n_2),0) tgl2,
         nvl(sum(n_3),0) tgl3,
         nvl(sum(n_4),0) tgl4,
         nvl(sum(n_5),0) tgl5,
         nvl(sum(n_6),0) tgl6,
         nvl(sum(n_7),0) tgl7,
         nvl(sum(n_8),0) tgl8,
         nvl(sum(n_9),0) tgl9,
         nvl(sum(n_10),0) tgl10,
         nvl(sum(n_11),0) tgl11,
         nvl(sum(n_12),0) tgl12,
         nvl(sum(n_13),0) tgl13,
         nvl(sum(n_14),0) tgl14,
         nvl(sum(n_15),0) tgl15,
         nvl(sum(n_16),0) tgl16,
         nvl(sum(n_17),0) tgl17,
         nvl(sum(n_18),0) tgl18,
         nvl(sum(n_19),0) tgl19,
         nvl(sum(n_20),0) tgl20,
         nvl(sum(n_21),0) tgl21,
         nvl(sum(n_22),0) tgl22,
         nvl(sum(n_23),0) tgl23,
         nvl(sum(n_24),0) tgl24,
         nvl(sum(n_25),0) tgl25,
         nvl(sum(n_26),0) tgl26,
         nvl(sum(n_27),0) tgl27,
         nvl(sum(n_28),0) tgl28,
         nvl(sum(n_29),0) tgl29,
         nvl(sum(n_30),0) tgl30,
         nvl(sum(n_31),0) tgl31,
         0 cx,
         0 dx
  from (
  select item_no,
         case when tanggal = 1 then pemakaian else 0 end n_1,
         case when tanggal = 2 then pemakaian else 0 end n_2,
         case when tanggal = 3 then pemakaian else 0 end n_3,
         case when tanggal = 4 then pemakaian else 0 end n_4,
         case when tanggal = 5 then pemakaian else 0 end n_5,
         case when tanggal = 6 then pemakaian else 0 end n_6,
         case when tanggal = 7 then pemakaian else 0 end n_7,
         case when tanggal = 8 then pemakaian else 0 end n_8,
         case when tanggal = 9 then pemakaian else 0 end n_9,
         case when tanggal = 10 then pemakaian else 0 end n_10,
         case when tanggal = 11 then pemakaian else 0 end n_11,
         case when tanggal = 12 then pemakaian else 0 end n_12,
         case when tanggal = 13 then pemakaian else 0 end n_13,
         case when tanggal = 14 then pemakaian else 0 end n_14,
         case when tanggal = 15 then pemakaian else 0 end n_15,
         case when tanggal = 16 then pemakaian else 0 end n_16,
         case when tanggal = 17 then pemakaian else 0 end n_17,
         case when tanggal = 18 then pemakaian else 0 end n_18,
         case when tanggal = 19 then pemakaian else 0 end n_19,
         case when tanggal = 20 then pemakaian else 0 end n_20,
         case when tanggal = 21 then pemakaian else 0 end n_21,
         case when tanggal = 22 then pemakaian else 0 end n_22,
         case when tanggal = 23 then pemakaian else 0 end n_23,
         case when tanggal = 24 then pemakaian else 0 end n_24,
         case when tanggal = 25 then pemakaian else 0 end n_25,
         case when tanggal = 26 then pemakaian else 0 end n_26,
         case when tanggal = 27 then pemakaian else 0 end n_27,
         case when tanggal = 28 then pemakaian else 0 end n_28,
         case when tanggal = 29 then pemakaian else 0 end n_29,
         case when tanggal = 30 then pemakaian else 0 end n_30,
         case when tanggal = 31 then pemakaian else 0 end n_31
 
  from  (
  SELECT aa.item_no,sum(qty/1000*konversi) as Pemakaian, tanggal
  FROM ztb_material_konversi z inner join (select item_no, description 
  from item)aa on z.item_no = aa.item_no
  inner join ztb_assy_plan zz
  on zz.assy_line = z.assy_line and z.cell_type = zz.cell_type
  where tahun||case when bulan < 10 then '0'|| bulan else bulan end = (select distinct this_month from whinventory) 
        and zz.revisi = (select max(revisi) from ztb_assy_plan where tahun||case when bulan < 10 then '0'|| bulan else bulan end = (select distinct this_month from whinventory) and used=1)
  group by aa.item_no,tanggal--tahun||case when bulan < 10 then '0'|| bulan else bulan end ||tanggal
  )tabel
)total
  group by item_no;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_INVENTORY_PURCHASE" ("ITEM1", "LASTMONTH", "LASTMONTHAMOUNT", "TANGGAL1", "TANGGAL2", "TANGGAL3", "TANGGAL4", "TANGGAL5", "TANGGAL6", "TANGGAL7", "TANGGAL8", "TANGGAL9", "TANGGAL0", "TANGGAL11", "TANGGAL12", "TANGGAL13", "TANGGAL14", "TANGGAL15", "TANGGAL16", "TANGGAL17", "TANGGAL18", "TANGGAL19", "TANGGAL20", "TANGGAL21", "TANGGAL22", "TANGGAL23", "TANGGAL24", "TANGGAL25", "TANGGAL26", "TANGGAL27", "TANGGAL28", "TANGGAL29", "TANGGAL30", "TANGGAL31", "THISMONTH", "THISMONTHAMOUNT") AS 
  select x.item as item1,
       x.LastMonth as lastmonth,
       x.lastmonthamount as lastmonthamount,
         nvl(y.tanggal1, 0) as tanggal1,
        nvl(y.tanggal2, 0) as tanggal2,
       nvl(y.tanggal3, 0) as tanggal3,
       nvl(y.tanggal4, 0) as tanggal4, 
       nvl(y.tanggal5, 0) as tanggal5,
       nvl(y.tanggal6, 0) as tanggal6,
       nvl(y.tanggal7, 0) as tanggal7,
       nvl(y.tanggal8, 0) as tanggal8,
       nvl(y.tanggal9, 0) as tanggal9,
       nvl(y.tanggall0, 0) as tanggal0,
       nvl(y.tanggall1, 0) as tanggal11,
       nvl(y.tanggall2, 0) as tanggal12,
       nvl(y.tanggall3, 0) as tanggal13,
       nvl(y.tanggall4, 0) as tanggal14,
       nvl(y.tanggall5, 0) as tanggal15,
       nvl(y.tanggall6, 0) as tanggal16,
       nvl(y.tanggall7, 0) as tanggal17,
       nvl(y.tanggall8, 0) as tanggal18,
       nvl(y.tanggall9, 0) as tanggal19,
       nvl(y.tanggal20, 0) as tanggal20,
       nvl(y.tanggal21, 0) as tanggal21,
       nvl(y.tanggal22, 0) as tanggal22,
       nvl(y.tanggal23, 0) as tanggal23,
       nvl(y.tanggal24, 0) as tanggal24,
       nvl(y.tanggal25, 0) as tanggal25,
       nvl(y.tanggal26, 0) as tanggal26,
       nvl(y.tanggal27, 0) as tanggal27,
       nvl(y.tanggal28, 0) as tanggal28,
       nvl(y.tanggal29, 0) as tanggal29,
       nvl(y.tanggal30, 0) as tanggal30,
       nvl(y.tanggal31, 0) as tanggal31,
       x.ThisMonth as thismonth,
       x.ThisMonthAmount as thismonthamount
from 
(
select i.item_no as item,this_month,--,slip_date, 
       sum(w.last_inventory) as LastMonth ,
       sum(i.standard_price  * w.last_inventory ) LastMonthAmount,
       sum(w.last_inventory) as LastMonth2 ,
       sum(i.standard_price  * w.last2_inventory ) LastMonthAmount2,
       sum(w.this_inventory) as ThisMonth,
       sum(i.standard_price * w.this_inventory ) as ThisMonthAmount
from item i
inner join whinventory w
on i.item_no = w.item_no
where  cost_subject_code = '136010' 
group by this_month,i.item_no
)x
left outer join 
(
select aa.item,
     
       sum(Tanggal_1) as Tanggal1,
       sum(Tanggal_2) as Tanggal2,
       sum(Tanggal_3) as Tanggal3,
       sum(Tanggal_4) as Tanggal4,
       sum(Tanggal_5) as Tanggal5,
       sum(Tanggal_6) as Tanggal6,
       sum(Tanggal_7) as Tanggal7,
       sum(Tanggal_8) as Tanggal8,
       sum(Tanggal_9) as Tanggal9,
       sum(Tanggal_10) as Tanggall0,
       sum(Tanggal_11) as Tanggall1,
       sum(Tanggal_12) as Tanggall2,
       sum(Tanggal_13) as Tanggall3,
       sum(Tanggal_14) as Tanggall4,
       sum(Tanggal_15) as Tanggall5,
       sum(Tanggal_16) as Tanggall6,
       sum(Tanggal_17) as Tanggall7,
       sum(Tanggal_18) as Tanggall8,
       sum(Tanggal_19) as Tanggall9,
       sum(Tanggal_20) as Tanggal20,
       sum(Tanggal_21) as Tanggal21,
       sum(Tanggal_22) as Tanggal22,
       sum(Tanggal_23) as Tanggal23,
       sum(Tanggal_24) as Tanggal24,
       sum(Tanggal_25) as Tanggal25,
       sum(Tanggal_26) as Tanggal26,
       sum(Tanggal_27) as Tanggal27,
       sum(Tanggal_28) as Tanggal28,
       sum(Tanggal_29) as Tanggal29,
       sum(Tanggal_30) as Tanggal30,
       sum(Tanggal_31) as Tanggal31
from 
(
select i.item_no as item,
      case when trim(TO_CHAR(slip_date, 'dd')) = '01' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity   end end) else 0  end as Tanggal_1,
      case when trim(TO_CHAR(slip_date, 'dd')) = '02' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_2,
      case when trim(TO_CHAR(slip_date, 'dd')) = '03' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_3,
      case when trim(TO_CHAR(slip_date, 'dd')) = '04' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_4,
      case when trim(TO_CHAR(slip_date, 'dd')) = '05' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_5,
      case when trim(TO_CHAR(slip_date, 'dd')) = '06' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_6,
      case when trim(TO_CHAR(slip_date, 'dd')) = '07' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_7,
      case when trim(TO_CHAR(slip_date, 'dd')) = '08' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_8,
      case when trim(TO_CHAR(slip_date, 'dd')) = '09' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_9,
      case when trim(TO_CHAR(slip_date, 'dd')) = '10' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_10,
      case when trim(TO_CHAR(slip_date, 'dd')) = '11' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_11,
      case when trim(TO_CHAR(slip_date, 'dd')) = '12' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_12,
      case when trim(TO_CHAR(slip_date, 'dd')) = '13' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_13,
      case when trim(TO_CHAR(slip_date, 'dd')) = '14' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_14,
      case when trim(TO_CHAR(slip_date, 'dd')) = '15' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_15,
      case when trim(TO_CHAR(slip_date, 'dd')) = '16' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_16,
      case when trim(TO_CHAR(slip_date, 'dd')) = '17' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1  else t.slip_quantity end end) else 0  end as Tanggal_17,
      case when trim(TO_CHAR(slip_date, 'dd')) = '18' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_18,
      case when trim(TO_CHAR(slip_date, 'dd')) = '19' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_19,
      case when trim(TO_CHAR(slip_date, 'dd')) = '20' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_20,
      case when trim(TO_CHAR(slip_date, 'dd')) = '21' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_21,
      case when trim(TO_CHAR(slip_date, 'dd')) = '22' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_22,
      case when trim(TO_CHAR(slip_date, 'dd')) = '23' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_23,
      case when trim(TO_CHAR(slip_date, 'dd')) = '24' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_24,
      case when trim(TO_CHAR(slip_date, 'dd')) = '25' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_25,
      case when trim(TO_CHAR(slip_date, 'dd')) = '26' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_26,
      case when trim(TO_CHAR(slip_date, 'dd')) = '27' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_27,
      case when trim(TO_CHAR(slip_date, 'dd')) = '28' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_28,
      case when trim(TO_CHAR(slip_date, 'dd')) = '29' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_29,
      case when trim(TO_CHAR(slip_date, 'dd')) = '30' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_30,
      case when trim(TO_CHAR(slip_date, 'dd')) = '31' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1  else t.slip_quantity end end) else 0  end as Tanggal_31

        
from item i
inner join transaction t
on i.item_no = t.item_no
inner join sliptype s
on s.slip_type = t.slip_type
where  t.cost_subject_code = '136010' and accounting_month = (select distinct this_month  from whinventory)
group by  i.item_no,slip_date--,slip_date--,i.item_no,i.standard_price

)aa group by aa.item

)y 
on x.item = y.item
--where x.item = '1120037'
--where x.item not in ('AFTER TP','HALF BATTERY','LABELED BATTERY','NAKED BATTERY','AFTER TP','PACKED BATTERY');
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_INVENTORY_USAGE" ("ITEM1", "LASTMONTH", "LASTMONTHAMOUNT", "TANGGAL1", "TANGGAL2", "TANGGAL3", "TANGGAL4", "TANGGAL5", "TANGGAL6", "TANGGAL7", "TANGGAL8", "TANGGAL9", "TANGGAL0", "TANGGAL11", "TANGGAL12", "TANGGAL13", "TANGGAL14", "TANGGAL15", "TANGGAL16", "TANGGAL17", "TANGGAL18", "TANGGAL19", "TANGGAL20", "TANGGAL21", "TANGGAL22", "TANGGAL23", "TANGGAL24", "TANGGAL25", "TANGGAL26", "TANGGAL27", "TANGGAL28", "TANGGAL29", "TANGGAL30", "TANGGAL31", "THISMONTH", "THISMONTHAMOUNT") AS 
  select x.item as item1,
       x.LastMonth as lastmonth,
       x.lastmonthamount as lastmonthamount,
         nvl(y.tanggal1, 0) as tanggal1,
        nvl(y.tanggal2, 0) as tanggal2,
       nvl(y.tanggal3, 0) as tanggal3,
       nvl(y.tanggal4, 0) as tanggal4, 
       nvl(y.tanggal5, 0) as tanggal5,
       nvl(y.tanggal6, 0) as tanggal6,
       nvl(y.tanggal7, 0) as tanggal7,
       nvl(y.tanggal8, 0) as tanggal8,
       nvl(y.tanggal9, 0) as tanggal9,
       nvl(y.tanggall0, 0) as tanggal0,
       nvl(y.tanggall1, 0) as tanggal11,
       nvl(y.tanggall2, 0) as tanggal12,
       nvl(y.tanggall3, 0) as tanggal13,
       nvl(y.tanggall4, 0) as tanggal14,
       nvl(y.tanggall5, 0) as tanggal15,
       nvl(y.tanggall6, 0) as tanggal16,
       nvl(y.tanggall7, 0) as tanggal17,
       nvl(y.tanggall8, 0) as tanggal18,
       nvl(y.tanggall9, 0) as tanggal19,
       nvl(y.tanggal20, 0) as tanggal20,
       nvl(y.tanggal21, 0) as tanggal21,
       nvl(y.tanggal22, 0) as tanggal22,
       nvl(y.tanggal23, 0) as tanggal23,
       nvl(y.tanggal24, 0) as tanggal24,
       nvl(y.tanggal25, 0) as tanggal25,
       nvl(y.tanggal26, 0) as tanggal26,
       nvl(y.tanggal27, 0) as tanggal27,
       nvl(y.tanggal28, 0) as tanggal28,
       nvl(y.tanggal29, 0) as tanggal29,
       nvl(y.tanggal30, 0) as tanggal30,
       nvl(y.tanggal31, 0) as tanggal31,
       x.ThisMonth as thismonth,
       x.ThisMonthAmount as thismonthamount
from 
(
select i.item_no as item,this_month,--,slip_date, 
       sum(w.last_inventory) as LastMonth ,
       sum(i.standard_price  * w.last_inventory ) LastMonthAmount,
       sum(w.last_inventory) as LastMonth2 ,
       sum(i.standard_price  * w.last2_inventory ) LastMonthAmount2,
       sum(w.this_inventory) as ThisMonth,
       sum(i.standard_price * w.this_inventory ) as ThisMonthAmount
from item i
inner join whinventory w
on i.item_no = w.item_no
where  cost_subject_code = '136010' 
group by this_month,i.item_no
)x
left outer join 
(
select aa.item,
     
       sum(Tanggal_1) as Tanggal1,
       sum(Tanggal_2) as Tanggal2,
       sum(Tanggal_3) as Tanggal3,
       sum(Tanggal_4) as Tanggal4,
       sum(Tanggal_5) as Tanggal5,
       sum(Tanggal_6) as Tanggal6,
       sum(Tanggal_7) as Tanggal7,
       sum(Tanggal_8) as Tanggal8,
       sum(Tanggal_9) as Tanggal9,
       sum(Tanggal_10) as Tanggall0,
       sum(Tanggal_11) as Tanggall1,
       sum(Tanggal_12) as Tanggall2,
       sum(Tanggal_13) as Tanggall3,
       sum(Tanggal_14) as Tanggall4,
       sum(Tanggal_15) as Tanggall5,
       sum(Tanggal_16) as Tanggall6,
       sum(Tanggal_17) as Tanggall7,
       sum(Tanggal_18) as Tanggall8,
       sum(Tanggal_19) as Tanggall9,
       sum(Tanggal_20) as Tanggal20,
       sum(Tanggal_21) as Tanggal21,
       sum(Tanggal_22) as Tanggal22,
       sum(Tanggal_23) as Tanggal23,
       sum(Tanggal_24) as Tanggal24,
       sum(Tanggal_25) as Tanggal25,
       sum(Tanggal_26) as Tanggal26,
       sum(Tanggal_27) as Tanggal27,
       sum(Tanggal_28) as Tanggal28,
       sum(Tanggal_29) as Tanggal29,
       sum(Tanggal_30) as Tanggal30,
       sum(Tanggal_31) as Tanggal31
from 
(
select i.item_no as item,
      case when trim(TO_CHAR(slip_date, 'dd')) = '01' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity   end end) else 0  end as Tanggal_1,
      case when trim(TO_CHAR(slip_date, 'dd')) = '02' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_2,
      case when trim(TO_CHAR(slip_date, 'dd')) = '03' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_3,
      case when trim(TO_CHAR(slip_date, 'dd')) = '04' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_4,
      case when trim(TO_CHAR(slip_date, 'dd')) = '05' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_5,
      case when trim(TO_CHAR(slip_date, 'dd')) = '06' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_6,
      case when trim(TO_CHAR(slip_date, 'dd')) = '07' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_7,
      case when trim(TO_CHAR(slip_date, 'dd')) = '08' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_8,
      case when trim(TO_CHAR(slip_date, 'dd')) = '09' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_9,
      case when trim(TO_CHAR(slip_date, 'dd')) = '10' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_10,
      case when trim(TO_CHAR(slip_date, 'dd')) = '11' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_11,
      case when trim(TO_CHAR(slip_date, 'dd')) = '12' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_12,
      case when trim(TO_CHAR(slip_date, 'dd')) = '13' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_13,
      case when trim(TO_CHAR(slip_date, 'dd')) = '14' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_14,
      case when trim(TO_CHAR(slip_date, 'dd')) = '15' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_15,
      case when trim(TO_CHAR(slip_date, 'dd')) = '16' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_16,
      case when trim(TO_CHAR(slip_date, 'dd')) = '17' Then sum(case when table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1  else t.slip_quantity end end) else 0  end as Tanggal_17,
      case when trim(TO_CHAR(slip_date, 'dd')) = '18' Then sum(case when table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_18,
      case when trim(TO_CHAR(slip_date, 'dd')) = '19' Then sum(case when table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_19,
      case when trim(TO_CHAR(slip_date, 'dd')) = '20' Then sum(case when table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_20,
      case when trim(TO_CHAR(slip_date, 'dd')) = '21' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_21,
      case when trim(TO_CHAR(slip_date, 'dd')) = '22' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_22,
      case when trim(TO_CHAR(slip_date, 'dd')) = '23' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_23,
      case when trim(TO_CHAR(slip_date, 'dd')) = '24' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_24,
      case when trim(TO_CHAR(slip_date, 'dd')) = '25' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_25,
      case when trim(TO_CHAR(slip_date, 'dd')) = '26' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_26,
      case when trim(TO_CHAR(slip_date, 'dd')) = '27' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_27,
      case when trim(TO_CHAR(slip_date, 'dd')) = '28' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_28,
      case when trim(TO_CHAR(slip_date, 'dd')) = '29' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_29,
      case when trim(TO_CHAR(slip_date, 'dd')) = '30' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_30,
      case when trim(TO_CHAR(slip_date, 'dd')) = '31' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1  else t.slip_quantity end end) else 0  end as Tanggal_31

        
from item i
inner join transaction t
on i.item_no = t.item_no
inner join sliptype s
on s.slip_type = t.slip_type
where  t.cost_subject_code = '136010' and accounting_month = (select distinct this_month  from whinventory)
group by  i.item_no,slip_date--,slip_date--,i.item_no,i.standard_price

)aa group by aa.item

)y 
on x.item = y.item
--where x.item = '1120037'
--where x.item not in ('AFTER TP','HALF BATTERY','LABELED BATTERY','NAKED BATTERY','AFTER TP','PACKED BATTERY');
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_KANBAN_PCK" ("ID", "PCK_STAT", "WORKER_ID_1", "STARTDATE", "ENDDATE", "NO_OUTER_BOX", "PERSON", "ASY_LINE", "PCK_LINE", "LABEL_LINE", "ASY_DATE1", "LABEL_QTY1", "SISA", "TAMBAHAN", "NG", "LOSSTIME", "TYPE_ITEM", "WO_NO", "BRAND", "ITEM_NO", "PLT_NO") AS 
  select a.ID,PCK_Stat,worker_ID_1,startdate,enddate,no_outer_box,person,asy_line,pck_line,label_line,asy_date1,label_qty1,sisa,tambahan,NG,Losstime,b.type_item,b.wo_no,b.brand,b.item_no, b.plt_no from ztb_kanban_pck a left outer join ztb_P_plan b on a.id = b.id;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_KANBAN_PCK_DEL" ("ID", "PCK_STAT", "WORKER_ID_1", "STARTDATE", "ENDDATE", "NO_OUTER_BOX", "PERSON", "ASY_LINE", "PCK_LINE", "LABEL_LINE", "ASY_DATE1", "LABEL_QTY1", "SISA", "TAMBAHAN", "NG", "LOSSTIME", "TYPE_ITEM", "WO_NO", "BRAND", "ITEM_NO", "PLT_NO") AS 
  select a.ID,PCK_Stat,worker_ID_1,startdate,enddate,no_outer_box,person,asy_line,pck_line,label_line,asy_date1,label_qty1,sisa,tambahan,NG,Losstime,b.type_item,b.wo_no,b.brand,b.item_no, b.plt_no from ztb_kanban_pck_del a left outer join ztb_P_plan b on a.id = b.id
where worker_id_1 = '9001680501';
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_KURAIRE" ("WO_NO", "BULAN", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31") AS 
  select wo_no, 
      Bulan,
      sum(SATU) as "1",
      sum(DUA)as "2",
      sum(TIGA)as "3",
      sum(EMPAT)as "4",
      sum(LIMA)as "5",
      sum(ENAM)as "6",
      sum(TUJUH)as "7",
      sum(DELAPAN)as "8",
      sum(SEMBILAN)as "9",
      sum(SEPULUH)as "10",
      sum(SEBELAS)as "11",
      sum(DUABELAS)as "12",
      sum(TIGABELAS)as "13",
      sum(EMPATBELAS)as "14",
      sum(LIMABELAS)as "15",
      sum(ENAMBELAS)as "16",
      sum(TUJUHBELAS)as "17",
      sum(DELAPANBELAS)as "18",
      sum(SEMBILANBELAS)as "19",
      sum(DUAPULUH)as "20",
      sum(DUAPULUHSATU)as "21",
      sum(DUAPULUHDUA)as "22",
      sum(DUAPULUHTIGA)as "23",
      sum(DUAPULUHEMPAT)as "24",
      sum(DUAPULUHLIMA)as "25",
      sum(DUAPULUHENAM)as "26",
      sum(DUAPULUHTUJUH)as "27",
      sum(DUAPULUHDELAPAN)as "28",
      sum(DUAPULUHSEMBILAN)as "29",
    sum(TIGAPULUH) as "30",
    sum(TIGAPULUHSATU ) as "31"
      
from 
(
select 
       s.Wo_no,
      
       to_char(SLIP_DATE,'MM') as Bulan, 

        case when to_char(SLIP_DATE,'DD') = 1 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end  as Satu,
       case when to_char(SLIP_DATE,'DD') = 2 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Dua,
       case when to_char(SLIP_DATE,'DD') = 3 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Tiga,
       case when to_char(SLIP_DATE,'DD') = 4 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as empat,
       case when to_char(SLIP_DATE,'DD') = 5 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Lima,
       case when to_char(SLIP_DATE,'DD') = 6 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Enam,
       case when to_char(SLIP_DATE,'DD') = 7 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Tujuh,
       case when to_char(SLIP_DATE,'DD') = 8 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Delapan,
        case when to_char(SLIP_DATE,'DD') = 9 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Sembilan,
       case when to_char(SLIP_DATE,'DD') = 10 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as sepuluh,
       case when to_char(SLIP_DATE,'DD') = 11 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as Sebelas,
       case when to_char(SLIP_DATE,'DD') = 12 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaBelas,
        case when to_char(SLIP_DATE,'DD') = 13 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TigaBelas,
       case when to_char(SLIP_DATE,'DD') = 14 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as EmpatBelas,
       case when to_char(SLIP_DATE,'DD') = 15 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as LimaBelas,
       case when to_char(SLIP_DATE,'DD') = 16 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as EnamBelas,
        case when to_char(SLIP_DATE,'DD') = 17 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TujuhBelas,
       case when to_char(SLIP_DATE,'DD') = 18 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DelapanBelas,
       case when to_char(SLIP_DATE,'DD') = 19 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as SembilanBelas,
       case when to_char(SLIP_DATE,'DD') = 20 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluh,
        case when to_char(SLIP_DATE,'DD') = 21 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhSatu,
       case when to_char(SLIP_DATE,'DD') = 22 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhDua,
       case when to_char(SLIP_DATE,'DD') = 23 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhTiga,
       case when to_char(SLIP_DATE,'DD') = 24 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhEmpat,
        case when to_char(SLIP_DATE,'DD') = 25 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhLima,
       case when to_char(SLIP_DATE,'DD') = 26 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhEnam,
       case when to_char(SLIP_DATE,'DD') = 27 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhTujuh,
       case when to_char(SLIP_DATE,'DD') = 28 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhDelapan,
        case when to_char(SLIP_DATE,'DD') = 29 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as DuaPuluhSembilan,
       case when to_char(SLIP_DATE,'DD') = 30 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TigaPuluh,
       case when to_char(SLIP_DATE,'DD') = 31 then sum(case when slip_type = 80 then s.SLIP_Quantity else s.SLIP_Quantity *-1 end ) end as TigaPuluhSatu

from production_income s
inner join  mps_header r
on s.wo_no = r.work_order

group by 
       s.Wo_no, 
       to_char(SLIP_DATE,'MM'),
       to_char(SLIP_DATE,'DD')
    
 )FG 
 GROUP BY wo_no, 
      Bulan;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_MATERIAL_ITEM_VIEW" ("ITEM1", "LASTMONTH", "LASTMONTHAMOUNT", "TANGGAL1", "TANGGAL2", "TANGGAL3", "TANGGAL4", "TANGGAL5", "TANGGAL6", "TANGGAL7", "TANGGAL8", "TANGGAL9", "TANGGAL0", "TANGGAL11", "TANGGAL12", "TANGGAL13", "TANGGAL14", "TANGGAL15", "TANGGAL16", "TANGGAL17", "TANGGAL18", "TANGGAL19", "TANGGAL20", "TANGGAL21", "TANGGAL22", "TANGGAL23", "TANGGAL24", "TANGGAL25", "TANGGAL26", "TANGGAL27", "TANGGAL28", "TANGGAL29", "TANGGAL30", "TANGGAL31", "THISMONTH", "THISMONTHAMOUNT") AS 
  select x.item as item1,
       x.LastMonth as lastmonth,
       x.lastmonthamount as lastmonthamount,
         nvl(y.tanggal1, 0) as tanggal1,
        nvl(y.tanggal2, 0) as tanggal2,
       nvl(y.tanggal3, 0) as tanggal3,
       nvl(y.tanggal4, 0) as tanggal4, 
       nvl(y.tanggal5, 0) as tanggal5,
       nvl(y.tanggal6, 0) as tanggal6,
       nvl(y.tanggal7, 0) as tanggal7,
       nvl(y.tanggal8, 0) as tanggal8,
       nvl(y.tanggal9, 0) as tanggal9,
       nvl(y.tanggall0, 0) as tanggal0,
       nvl(y.tanggall1, 0) as tanggal11,
       nvl(y.tanggall2, 0) as tanggal12,
       nvl(y.tanggall3, 0) as tanggal13,
       nvl(y.tanggall4, 0) as tanggal14,
       nvl(y.tanggall5, 0) as tanggal15,
       nvl(y.tanggall6, 0) as tanggal16,
       nvl(y.tanggall7, 0) as tanggal17,
       nvl(y.tanggall8, 0) as tanggal18,
       nvl(y.tanggall9, 0) as tanggal19,
       nvl(y.tanggal20, 0) as tanggal20,
       nvl(y.tanggal21, 0) as tanggal21,
       nvl(y.tanggal22, 0) as tanggal22,
       nvl(y.tanggal23, 0) as tanggal23,
       nvl(y.tanggal24, 0) as tanggal24,
       nvl(y.tanggal25, 0) as tanggal25,
       nvl(y.tanggal26, 0) as tanggal26,
       nvl(y.tanggal27, 0) as tanggal27,
       nvl(y.tanggal28, 0) as tanggal28,
       nvl(y.tanggal29, 0) as tanggal29,
       nvl(y.tanggal30, 0) as tanggal30,
       nvl(y.tanggal31, 0) as tanggal31,
       x.ThisMonth as thismonth,
       x.ThisMonthAmount as thismonthamount
from 
(
select i.item_no as item,this_month,--,slip_date, 
       sum(w.last_inventory) as LastMonth ,
       sum(i.standard_price  * w.last_inventory ) LastMonthAmount,
       sum(w.last_inventory) as LastMonth2 ,
       sum(i.standard_price  * w.last2_inventory ) LastMonthAmount2,
       sum(w.this_inventory) as ThisMonth,
       sum(i.standard_price * w.this_inventory ) as ThisMonthAmount
from item i
inner join whinventory w
on i.item_no = w.item_no
where  cost_subject_code = '136010' 
group by this_month,i.item_no
)x
left outer join 
(
select aa.item,
     
       sum(Tanggal_1) as Tanggal1,
       sum(Tanggal_2) as Tanggal2,
       sum(Tanggal_3) as Tanggal3,
       sum(Tanggal_4) as Tanggal4,
       sum(Tanggal_5) as Tanggal5,
       sum(Tanggal_6) as Tanggal6,
       sum(Tanggal_7) as Tanggal7,
       sum(Tanggal_8) as Tanggal8,
       sum(Tanggal_9) as Tanggal9,
       sum(Tanggal_10) as Tanggall0,
       sum(Tanggal_11) as Tanggall1,
       sum(Tanggal_12) as Tanggall2,
       sum(Tanggal_13) as Tanggall3,
       sum(Tanggal_14) as Tanggall4,
       sum(Tanggal_15) as Tanggall5,
       sum(Tanggal_16) as Tanggall6,
       sum(Tanggal_17) as Tanggall7,
       sum(Tanggal_18) as Tanggall8,
       sum(Tanggal_19) as Tanggall9,
       sum(Tanggal_20) as Tanggal20,
       sum(Tanggal_21) as Tanggal21,
       sum(Tanggal_22) as Tanggal22,
       sum(Tanggal_23) as Tanggal23,
       sum(Tanggal_24) as Tanggal24,
       sum(Tanggal_25) as Tanggal25,
       sum(Tanggal_26) as Tanggal26,
       sum(Tanggal_27) as Tanggal27,
       sum(Tanggal_28) as Tanggal28,
       sum(Tanggal_29) as Tanggal29,
       sum(Tanggal_30) as Tanggal30,
       sum(Tanggal_31) as Tanggal31
from 
(
select i.item_no as item,
      case when trim(TO_CHAR(slip_date, 'dd')) = '01' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_1,
      case when trim(TO_CHAR(slip_date, 'dd')) = '02' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_2,
      case when trim(TO_CHAR(slip_date, 'dd')) = '03' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_3,
      case when trim(TO_CHAR(slip_date, 'dd')) = '04' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_4,
      case when trim(TO_CHAR(slip_date, 'dd')) = '05' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_5,
      case when trim(TO_CHAR(slip_date, 'dd')) = '06' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_6,
      case when trim(TO_CHAR(slip_date, 'dd')) = '07' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_7,
      case when trim(TO_CHAR(slip_date, 'dd')) = '08' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_8,
      case when trim(TO_CHAR(slip_date, 'dd')) = '09' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_9,
      case when trim(TO_CHAR(slip_date, 'dd')) = '10' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_10,
      case when trim(TO_CHAR(slip_date, 'dd')) = '11' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_11,
      case when trim(TO_CHAR(slip_date, 'dd')) = '12' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_12,
      case when trim(TO_CHAR(slip_date, 'dd')) = '13' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_13,
      case when trim(TO_CHAR(slip_date, 'dd')) = '14' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_14,
      case when trim(TO_CHAR(slip_date, 'dd')) = '15' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_15,
      case when trim(TO_CHAR(slip_date, 'dd')) = '16' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_16,
      case when trim(TO_CHAR(slip_date, 'dd')) = '17' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_17,
      case when trim(TO_CHAR(slip_date, 'dd')) = '18' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_18,
      case when trim(TO_CHAR(slip_date, 'dd')) = '19' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_19,
      case when trim(TO_CHAR(slip_date, 'dd')) = '20' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_20,
      case when trim(TO_CHAR(slip_date, 'dd')) = '21' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_21,
      case when trim(TO_CHAR(slip_date, 'dd')) = '22' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_22,
      case when trim(TO_CHAR(slip_date, 'dd')) = '23' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_23,
      case when trim(TO_CHAR(slip_date, 'dd')) = '24' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_24,
      case when trim(TO_CHAR(slip_date, 'dd')) = '25' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_25,
      case when trim(TO_CHAR(slip_date, 'dd')) = '26' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_26,
      case when trim(TO_CHAR(slip_date, 'dd')) = '27' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_27,
      case when trim(TO_CHAR(slip_date, 'dd')) = '28' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_28,
      case when trim(TO_CHAR(slip_date, 'dd')) = '29' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_29,
      case when trim(TO_CHAR(slip_date, 'dd')) = '30' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_30,
      case when trim(TO_CHAR(slip_date, 'dd')) = '31' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_31

        
from item i
inner join transaction t
on i.item_no = t.item_no
inner join sliptype s
on s.slip_type = t.slip_type
where  t.cost_subject_code = '136010' and accounting_month = (select distinct this_month  from whinventory)
group by  i.item_no,slip_date--,slip_date--,i.item_no,i.standard_price

)aa group by aa.item

)y 
on x.item = y.item
--where x.item = '1120037'
--where x.item not in ('AFTER TP','HALF BATTERY','LABELED BATTERY','NAKED BATTERY','AFTER TP','PACKED BATTERY');
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_MATERIAL_ITEM_VIEW_LAST" ("ITEM1", "LASTMONTH", "LASTMONTHAMOUNT", "ITEM", "TANGGAL1", "TANGGAL2", "TANGGAL3", "TANGGAL4", "TANGGAL5", "TANGGAL6", "TANGGAL7", "TANGGAL8", "TANGGAL9", "TANGGALL0", "TANGGALL1", "TANGGALL2", "TANGGALL3", "TANGGALL4", "TANGGALL5", "TANGGALL6", "TANGGALL7", "TANGGALL8", "TANGGALL9", "TANGGAL20", "TANGGAL21", "TANGGAL22", "TANGGAL23", "TANGGAL24", "TANGGAL25", "TANGGAL26", "TANGGAL27", "TANGGAL28", "TANGGAL29", "TANGGAL30", "TANGGAL31", "THISMONTH", "THISMONTHAMOUNT") AS 
  select x.item as item1,
       x.lastmonth2 as lastmonth,
       x.lastmonthamount2 as lastmonthamount,
       y.*,
       x.lastmonth as thismonth,
       x.lastmonthamount as thismonthamount
from 
(
select i.item,this_month,--,slip_date, 
       sum(w.last_inventory) as LastMonth ,
       sum(i.standard_price  * w.last_inventory ) LastMonthAmount,
       sum(w.last2_inventory) as LastMonth2 ,
       sum(i.standard_price  * w.last2_inventory ) LastMonthAmount2,
       sum(w.this_inventory) as ThisMonth,
       sum(i.standard_price * w.this_inventory ) as ThisMonthAmount
from item i
inner join whinventory w
on i.item_no = w.item_no
where  cost_subject_code = '136010' 
group by this_month,item
)x
left outer join 
(
select aa.item,
     
       sum(Tanggal_1) as Tanggal1,
       sum(Tanggal_2) as Tanggal2,
       sum(Tanggal_3) as Tanggal3,
       sum(Tanggal_4) as Tanggal4,
       sum(Tanggal_5) as Tanggal5,
       sum(Tanggal_6) as Tanggal6,
       sum(Tanggal_7) as Tanggal7,
       sum(Tanggal_8) as Tanggal8,
       sum(Tanggal_9) as Tanggal9,
       sum(Tanggal_10) as Tanggall0,
       sum(Tanggal_11) as Tanggall1,
       sum(Tanggal_12) as Tanggall2,
       sum(Tanggal_13) as Tanggall3,
       sum(Tanggal_14) as Tanggall4,
       sum(Tanggal_15) as Tanggall5,
       sum(Tanggal_16) as Tanggall6,
       sum(Tanggal_17) as Tanggall7,
       sum(Tanggal_18) as Tanggall8,
       sum(Tanggal_19) as Tanggall9,
       sum(Tanggal_20) as Tanggal20,
       sum(Tanggal_21) as Tanggal21,
       sum(Tanggal_22) as Tanggal22,
       sum(Tanggal_23) as Tanggal23,
       sum(Tanggal_24) as Tanggal24,
       sum(Tanggal_25) as Tanggal25,
       sum(Tanggal_26) as Tanggal26,
       sum(Tanggal_27) as Tanggal27,
       sum(Tanggal_28) as Tanggal28,
       sum(Tanggal_29) as Tanggal29,
       sum(Tanggal_30) as Tanggal30,
       sum(Tanggal_31) as Tanggal31
from 
(
select i.item,
      case when trim(TO_CHAR(slip_date, 'dd')) = '01' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_1,
      case when trim(TO_CHAR(slip_date, 'dd')) = '02' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_2,
      case when trim(TO_CHAR(slip_date, 'dd')) = '03' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_3,
      case when trim(TO_CHAR(slip_date, 'dd')) = '04' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_4,
      case when trim(TO_CHAR(slip_date, 'dd')) = '05' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_5,
      case when trim(TO_CHAR(slip_date, 'dd')) = '06' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_6,
      case when trim(TO_CHAR(slip_date, 'dd')) = '07' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_7,
      case when trim(TO_CHAR(slip_date, 'dd')) = '08' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_8,
      case when trim(TO_CHAR(slip_date, 'dd')) = '09' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_9,
      case when trim(TO_CHAR(slip_date, 'dd')) = '10' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_10,
      case when trim(TO_CHAR(slip_date, 'dd')) = '11' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_11,
      case when trim(TO_CHAR(slip_date, 'dd')) = '12' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_12,
      case when trim(TO_CHAR(slip_date, 'dd')) = '13' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_13,
      case when trim(TO_CHAR(slip_date, 'dd')) = '14' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_14,
      case when trim(TO_CHAR(slip_date, 'dd')) = '15' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_15,
      case when trim(TO_CHAR(slip_date, 'dd')) = '16' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_16,
      case when trim(TO_CHAR(slip_date, 'dd')) = '17' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_17,
      case when trim(TO_CHAR(slip_date, 'dd')) = '18' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_18,
      case when trim(TO_CHAR(slip_date, 'dd')) = '19' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_19,
      case when trim(TO_CHAR(slip_date, 'dd')) = '20' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_20,
      case when trim(TO_CHAR(slip_date, 'dd')) = '21' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_21,
      case when trim(TO_CHAR(slip_date, 'dd')) = '22' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_22,
      case when trim(TO_CHAR(slip_date, 'dd')) = '23' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_23,
      case when trim(TO_CHAR(slip_date, 'dd')) = '24' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_24,
      case when trim(TO_CHAR(slip_date, 'dd')) = '25' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_25,
      case when trim(TO_CHAR(slip_date, 'dd')) = '26' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_26,
      case when trim(TO_CHAR(slip_date, 'dd')) = '27' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_27,
      case when trim(TO_CHAR(slip_date, 'dd')) = '28' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_28,
      case when trim(TO_CHAR(slip_date, 'dd')) = '29' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_29,
      case when trim(TO_CHAR(slip_date, 'dd')) = '30' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_30,
      case when trim(TO_CHAR(slip_date, 'dd')) = '31' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_31

        
from item i
inner join transaction t
on i.item_no = t.item_no
inner join sliptype s
on s.slip_type = t.slip_type
where  t.cost_subject_code = '136010' and accounting_month = (select distinct this_month - 1 from whinventory)
group by  i.item,slip_date--,slip_date--,i.item_no,i.standard_price

)aa group by aa.item

)y 
on x.item = y.item
where x.item not in ('AFTER TP','HALF BATTERY','LABELED BATTERY','NAKED BATTERY','AFTER TP','PACKED BATTERY');
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_MATERIAL_ITEM_VIEW_THIS" ("ITEM1", "LASTMONTH", "LASTMONTHAMOUNT", "ITEM", "TANGGAL1", "TANGGAL2", "TANGGAL3", "TANGGAL4", "TANGGAL5", "TANGGAL6", "TANGGAL7", "TANGGAL8", "TANGGAL9", "TANGGALL0", "TANGGALL1", "TANGGALL2", "TANGGALL3", "TANGGALL4", "TANGGALL5", "TANGGALL6", "TANGGALL7", "TANGGALL8", "TANGGALL9", "TANGGAL20", "TANGGAL21", "TANGGAL22", "TANGGAL23", "TANGGAL24", "TANGGAL25", "TANGGAL26", "TANGGAL27", "TANGGAL28", "TANGGAL29", "TANGGAL30", "TANGGAL31", "THISMONTH", "THISMONTHAMOUNT", "ACTUALAMOUNT") AS 
  select x.item as Item1,
       x.lastmonth,
       x.lastmonthamount,
       y.*,
       x.thismonth,
       x.thismonthamount ,
      x.thismonthamount as actualAmount
from 
(
select i.item,this_month,--,slip_date, 
       sum(w.last_inventory) as LastMonth ,
       sum(i.standard_price  * w.last_inventory ) LastMonthAmount,
       sum(w.last2_inventory) as LastMonth2 ,
       sum(i.standard_price  * w.last2_inventory ) LastMonthAmount2,
       sum(w.this_inventory) as ThisMonth,
       sum(i.standard_price * w.this_inventory ) as ThisMonthAmount
from item i
inner join whinventory w
on i.item_no = w.item_no
where  cost_subject_code = '136010' 
group by this_month,item
)x
left outer join 
(
select aa.item,
     
       sum(Tanggal_1) as Tanggal1,
       sum(Tanggal_2) as Tanggal2,
       sum(Tanggal_3) as Tanggal3,
       sum(Tanggal_4) as Tanggal4,
       sum(Tanggal_5) as Tanggal5,
       sum(Tanggal_6) as Tanggal6,
       sum(Tanggal_7) as Tanggal7,
       sum(Tanggal_8) as Tanggal8,
       sum(Tanggal_9) as Tanggal9,
       sum(Tanggal_10) as Tanggall0,
       sum(Tanggal_11) as Tanggall1,
       sum(Tanggal_12) as Tanggall2,
       sum(Tanggal_13) as Tanggall3,
       sum(Tanggal_14) as Tanggall4,
       sum(Tanggal_15) as Tanggall5,
       sum(Tanggal_16) as Tanggall6,
       sum(Tanggal_17) as Tanggall7,
       sum(Tanggal_18) as Tanggall8,
       sum(Tanggal_19) as Tanggall9,
       sum(Tanggal_20) as Tanggal20,
       sum(Tanggal_21) as Tanggal21,
       sum(Tanggal_22) as Tanggal22,
       sum(Tanggal_23) as Tanggal23,
       sum(Tanggal_24) as Tanggal24,
       sum(Tanggal_25) as Tanggal25,
       sum(Tanggal_26) as Tanggal26,
       sum(Tanggal_27) as Tanggal27,
       sum(Tanggal_28) as Tanggal28,
       sum(Tanggal_29) as Tanggal29,
       sum(Tanggal_30) as Tanggal30,
       sum(Tanggal_31) as Tanggal31
from 
(
select i.item,
      case when trim(TO_CHAR(slip_date, 'dd')) = '01' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_1,
      case when trim(TO_CHAR(slip_date, 'dd')) = '02' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_2,
      case when trim(TO_CHAR(slip_date, 'dd')) = '03' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_3,
      case when trim(TO_CHAR(slip_date, 'dd')) = '04' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_4,
      case when trim(TO_CHAR(slip_date, 'dd')) = '05' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_5,
      case when trim(TO_CHAR(slip_date, 'dd')) = '06' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_6,
      case when trim(TO_CHAR(slip_date, 'dd')) = '07' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_7,
      case when trim(TO_CHAR(slip_date, 'dd')) = '08' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_8,
      case when trim(TO_CHAR(slip_date, 'dd')) = '09' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_9,
      case when trim(TO_CHAR(slip_date, 'dd')) = '10' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_10,
      case when trim(TO_CHAR(slip_date, 'dd')) = '11' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_11,
      case when trim(TO_CHAR(slip_date, 'dd')) = '12' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_12,
      case when trim(TO_CHAR(slip_date, 'dd')) = '13' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_13,
      case when trim(TO_CHAR(slip_date, 'dd')) = '14' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_14,
      case when trim(TO_CHAR(slip_date, 'dd')) = '15' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_15,
      case when trim(TO_CHAR(slip_date, 'dd')) = '16' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_16,
      case when trim(TO_CHAR(slip_date, 'dd')) = '17' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_17,
      case when trim(TO_CHAR(slip_date, 'dd')) = '18' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_18,
      case when trim(TO_CHAR(slip_date, 'dd')) = '19' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_19,
      case when trim(TO_CHAR(slip_date, 'dd')) = '20' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_20,
      case when trim(TO_CHAR(slip_date, 'dd')) = '21' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_21,
      case when trim(TO_CHAR(slip_date, 'dd')) = '22' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_22,
      case when trim(TO_CHAR(slip_date, 'dd')) = '23' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_23,
      case when trim(TO_CHAR(slip_date, 'dd')) = '24' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_24,
      case when trim(TO_CHAR(slip_date, 'dd')) = '25' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_25,
      case when trim(TO_CHAR(slip_date, 'dd')) = '26' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_26,
      case when trim(TO_CHAR(slip_date, 'dd')) = '27' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_27,
      case when trim(TO_CHAR(slip_date, 'dd')) = '28' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_28,
      case when trim(TO_CHAR(slip_date, 'dd')) = '29' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_29,
      case when trim(TO_CHAR(slip_date, 'dd')) = '30' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_30,
      case when trim(TO_CHAR(slip_date, 'dd')) = '31' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_31

        
from item i
inner join transaction t
on i.item_no = t.item_no
inner join sliptype s
on s.slip_type = t.slip_type
where  t.cost_subject_code = '136010' and accounting_month = (select distinct this_month from whinventory)
group by  i.item,slip_date--,slip_date--,i.item_no,i.standard_price

)aa group by aa.item

)y 
on x.item = y.item
--left outer join (select t.item,sum(z.qty) as thismonth,sum(amount) as ThisMonthAmount from ztb_material_fifo z
--inner join item t
--on t.item_no = z.item_no
--group by t.item ) aa
--on x.item = aa.item
where x.item not in ('AFTER TP','HALF BATTERY','LABELED BATTERY','NAKED BATTERY','AFTER TP','PACKED BATTERY');
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_MATERIAL_PURCHASE_VIEW" ("ITEM1", "LASTMONTH", "LASTMONTHAMOUNT", "TANGGAL1", "TANGGAL2", "TANGGAL3", "TANGGAL4", "TANGGAL5", "TANGGAL6", "TANGGAL7", "TANGGAL8", "TANGGAL9", "TANGGAL0", "TANGGAL11", "TANGGAL12", "TANGGAL13", "TANGGAL14", "TANGGAL15", "TANGGAL16", "TANGGAL17", "TANGGAL18", "TANGGAL19", "TANGGAL20", "TANGGAL21", "TANGGAL22", "TANGGAL23", "TANGGAL24", "TANGGAL25", "TANGGAL26", "TANGGAL27", "TANGGAL28", "TANGGAL29", "TANGGAL30", "TANGGAL31", "THISMONTH", "THISMONTHAMOUNT") AS 
  select x.item as item1,
       x.LastMonth as lastmonth,
       x.lastmonthamount as lastmonthamount,
         nvl(y.tanggal1, 0) as tanggal1,
        nvl(y.tanggal2, 0) as tanggal2,
       nvl(y.tanggal3, 0) as tanggal3,
       nvl(y.tanggal4, 0) as tanggal4, 
       nvl(y.tanggal5, 0) as tanggal5,
       nvl(y.tanggal6, 0) as tanggal6,
       nvl(y.tanggal7, 0) as tanggal7,
       nvl(y.tanggal8, 0) as tanggal8,
       nvl(y.tanggal9, 0) as tanggal9,
       nvl(y.tanggall0, 0) as tanggal0,
       nvl(y.tanggall1, 0) as tanggal11,
       nvl(y.tanggall2, 0) as tanggal12,
       nvl(y.tanggall3, 0) as tanggal13,
       nvl(y.tanggall4, 0) as tanggal14,
       nvl(y.tanggall5, 0) as tanggal15,
       nvl(y.tanggall6, 0) as tanggal16,
       nvl(y.tanggall7, 0) as tanggal17,
       nvl(y.tanggall8, 0) as tanggal18,
       nvl(y.tanggall9, 0) as tanggal19,
       nvl(y.tanggal20, 0) as tanggal20,
       nvl(y.tanggal21, 0) as tanggal21,
       nvl(y.tanggal22, 0) as tanggal22,
       nvl(y.tanggal23, 0) as tanggal23,
       nvl(y.tanggal24, 0) as tanggal24,
       nvl(y.tanggal25, 0) as tanggal25,
       nvl(y.tanggal26, 0) as tanggal26,
       nvl(y.tanggal27, 0) as tanggal27,
       nvl(y.tanggal28, 0) as tanggal28,
       nvl(y.tanggal29, 0) as tanggal29,
       nvl(y.tanggal30, 0) as tanggal30,
       nvl(y.tanggal31, 0) as tanggal31,
       x.ThisMonth as thismonth,
       x.ThisMonthAmount as thismonthamount
from 
(
select i.item_no as item,this_month,--,slip_date, 
       sum(w.last_inventory) as LastMonth ,
       sum(i.standard_price  * w.last_inventory ) LastMonthAmount,
       sum(w.last_inventory) as LastMonth2 ,
       sum(i.standard_price  * w.last2_inventory ) LastMonthAmount2,
       sum(w.this_inventory) as ThisMonth,
       sum(i.standard_price * w.this_inventory ) as ThisMonthAmount
from item i
inner join whinventory w
on i.item_no = w.item_no
where  cost_subject_code = '136010' 
group by this_month,i.item_no
)x
left outer join 
(
select aa.item,
     
       sum(Tanggal_1) as Tanggal1,
       sum(Tanggal_2) as Tanggal2,
       sum(Tanggal_3) as Tanggal3,
       sum(Tanggal_4) as Tanggal4,
       sum(Tanggal_5) as Tanggal5,
       sum(Tanggal_6) as Tanggal6,
       sum(Tanggal_7) as Tanggal7,
       sum(Tanggal_8) as Tanggal8,
       sum(Tanggal_9) as Tanggal9,
       sum(Tanggal_10) as Tanggall0,
       sum(Tanggal_11) as Tanggall1,
       sum(Tanggal_12) as Tanggall2,
       sum(Tanggal_13) as Tanggall3,
       sum(Tanggal_14) as Tanggall4,
       sum(Tanggal_15) as Tanggall5,
       sum(Tanggal_16) as Tanggall6,
       sum(Tanggal_17) as Tanggall7,
       sum(Tanggal_18) as Tanggall8,
       sum(Tanggal_19) as Tanggall9,
       sum(Tanggal_20) as Tanggal20,
       sum(Tanggal_21) as Tanggal21,
       sum(Tanggal_22) as Tanggal22,
       sum(Tanggal_23) as Tanggal23,
       sum(Tanggal_24) as Tanggal24,
       sum(Tanggal_25) as Tanggal25,
       sum(Tanggal_26) as Tanggal26,
       sum(Tanggal_27) as Tanggal27,
       sum(Tanggal_28) as Tanggal28,
       sum(Tanggal_29) as Tanggal29,
       sum(Tanggal_30) as Tanggal30,
       sum(Tanggal_31) as Tanggal31
from 
(

select pd.item_no as item, 
      
       case when trim(TO_CHAR(ETA, 'dd')) = '01' Then sum(qty - gr_qty) else 0  end as Tanggal_1,
      case when trim(TO_CHAR(ETA, 'dd')) = '02' Then sum(qty - gr_qty) else 0  end as Tanggal_2,
      case when trim(TO_CHAR(ETA, 'dd')) = '03' Then sum(qty - gr_qty)else 0  end as Tanggal_3,
      case when trim(TO_CHAR(ETA, 'dd')) = '04' Then sum(qty - gr_qty) else 0  end as Tanggal_4,
      case when trim(TO_CHAR(ETA, 'dd')) = '05' Then sum(qty - gr_qty) else 0  end as Tanggal_5,
      case when trim(TO_CHAR(ETA, 'dd')) = '06' Then sum(qty - gr_qty) else 0  end as Tanggal_6,
      case when trim(TO_CHAR(ETA, 'dd')) = '07' Then sum(qty - gr_qty) else 0  end as Tanggal_7,
      case when trim(TO_CHAR(ETA, 'dd')) = '08' Then sum(qty - gr_qty) else 0  end as Tanggal_8,
      case when trim(TO_CHAR(ETA, 'dd')) = '09' Then sum(qty - gr_qty) else 0  end as Tanggal_9,
      case when trim(TO_CHAR(ETA, 'dd')) = '10' Then sum(qty - gr_qty) else 0  end as Tanggal_10,
      case when trim(TO_CHAR(ETA, 'dd')) = '11' Then sum(qty - gr_qty) else 0  end as Tanggal_11,
      case when trim(TO_CHAR(ETA, 'dd')) = '12' Then sum(qty - gr_qty) else 0  end as Tanggal_12,
      case when trim(TO_CHAR(ETA, 'dd')) = '13' Then sum(qty - gr_qty) else 0  end as Tanggal_13,
      case when trim(TO_CHAR(ETA, 'dd')) = '14' Then sum(qty - gr_qty) else 0  end as Tanggal_14,
      case when trim(TO_CHAR(ETA, 'dd')) = '15' Then sum(qty - gr_qty) else 0  end as Tanggal_15,
      case when trim(TO_CHAR(ETA, 'dd')) = '16' Then sum(qty - gr_qty) else 0  end as Tanggal_16,
      case when trim(TO_CHAR(ETA, 'dd')) = '17' Then sum(qty - gr_qty) else 0  end as Tanggal_17,
      case when trim(TO_CHAR(ETA, 'dd')) = '18' Then sum(qty - gr_qty) else 0  end as Tanggal_18,
      case when trim(TO_CHAR(ETA, 'dd')) = '19' Then sum(qty - gr_qty) else 0  end as Tanggal_19,
      case when trim(TO_CHAR(ETA, 'dd')) = '20' Then sum(qty - gr_qty) else 0  end as Tanggal_20,
      case when trim(TO_CHAR(ETA, 'dd')) = '21' Then sum(qty - gr_qty) else 0  end as Tanggal_21,
      case when trim(TO_CHAR(ETA, 'dd')) = '22' Then sum(qty - gr_qty) else 0  end as Tanggal_22,
      case when trim(TO_CHAR(ETA, 'dd')) = '23' Then sum(qty - gr_qty) else 0  end as Tanggal_23,
      case when trim(TO_CHAR(ETA, 'dd')) = '24' Then sum(qty - gr_qty) else 0  end as Tanggal_24,
      case when trim(TO_CHAR(ETA, 'dd')) = '25' Then sum(qty - gr_qty) else 0  end as Tanggal_25,
      case when trim(TO_CHAR(ETA, 'dd')) = '26' Then sum(qty - gr_qty) else 0  end as Tanggal_26,
      case when trim(TO_CHAR(ETA, 'dd')) = '27' Then sum(qty - gr_qty) else 0  end as Tanggal_27,
      case when trim(TO_CHAR(ETA, 'dd')) = '28' Then sum(qty - gr_qty) else 0  end as Tanggal_28,
      case when trim(TO_CHAR(ETA, 'dd')) = '29' Then sum(qty - gr_qty) else 0  end as Tanggal_29,
      case when trim(TO_CHAR(ETA, 'dd')) = '30' Then sum(qty - gr_qty) else 0  end as Tanggal_30,
      case when trim(TO_CHAR(ETA, 'dd')) = '31' Then sum(qty - gr_qty) else 0  end as Tanggal_31
      
from po_details pd 
inner join ztb_config_rm b
on pd.item_no = b.item_no
where TO_CHAR(ETA,'YYYYMM') = (select distinct this_month from whinventory) and gr_qty < qty
group by pd.item_no,ETA

)aa group by aa.item

)y 
on x.item = y.item
--where x.item = '1120037'
--where x.item not in ('AFTER TP','HALF BATTERY','LABELED BATTERY','NAKED BATTERY','AFTER TP','PACKED BATTERY');
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_MATERIAL3" ("ITEM", "ITEM_NO", "KETERANGAN", "ITEM1", "LASTMONTH", "LASTMONTHAMOUNT", "TANGGAL1", "TANGGAL2", "TANGGAL3", "TANGGAL4", "TANGGAL5", "TANGGAL6", "TANGGAL7", "TANGGAL8", "TANGGAL9", "TANGGAL0", "TANGGAL11", "TANGGAL12", "TANGGAL13", "TANGGAL14", "TANGGAL15", "TANGGAL16", "TANGGAL17", "TANGGAL18", "TANGGAL19", "TANGGAL20", "TANGGAL21", "TANGGAL22", "TANGGAL23", "TANGGAL24", "TANGGAL25", "TANGGAL26", "TANGGAL27", "TANGGAL28", "TANGGAL29", "TANGGAL30", "TANGGAL31", "THISMONTH", "THISMONTHAMOUNT") AS 
  select zz.*,aa.* from(
select 'B.Actual DO' as Keterangan,aa.* from zvw_inventory_usage aa
union 
select 'C.Actual Arrive' as Keterangan,bb.* from zvw_inventory_purchase bb
union
select 'E.Stock' as Keterangan,cc.* from zvw_inventory_analysist  cc
union 
--select 'D.Mutation' as Keterangan,dd.* from zvw_material_item_view dd
--union
select 'A.Usage Plan' as Keterangan,dd.* from ZVW_INVENTORY_MATERIAL dd
)aa inner join (select item,item_no from item where item  not in ('MAGIC PEN','MAGIC INK','CCR AFTER PLATING','BATTERY AFTER WEIGHT CHECKER','A. DISK AFT DEGREASE','AFTER TP','HALF BATTERY','LABELED BATTERY','NAKED BATTERY','AFTER TP','PACKED BATTERY')) zz 
on aa.item1 = zz.item_no
order by zz.item,zz.item_no, keterangan;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_MPS_INS_PLAN" ("WORK_ORDER", "BULAN", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31") AS 
  select work_order, 
      Bulan,
      sum("1") as "1",
      sum("2")as "2",
      sum("3")as "3",
      sum("4")as "4",
      sum("5")as "5",
      sum("6")as "6",
      sum("7")as "7",
      sum("8")as "8",
      sum("9")as "9",
      sum("10")as "10",
      sum("11")as "11",
      sum("12")as "12",
      sum("13")as "13",
      sum("14")as "14",
      sum("15")as "15",
      sum("16")as "16",
      sum("17")as "17",
      sum("18")as "18",
      sum("19")as "19",
      sum("20")as "20",
      sum("21")as "21",
      sum("22")as "22",
      sum("23")as "23",
      sum("24")as "24",
      sum("25")as "25",
      sum("26")as "26",
      sum("27")as "27",
      sum("28")as "28",
      sum("29")as "29",
    sum("30") as "30",
    sum("31" ) as "31"
      
from 
(
select b.work_order,
       TO_CHAR(mps_date, 'MM') as bulan,
       case when TO_CHAR(mps_date, 'DD') = 1 then mps_qty end as "1",
       case when TO_CHAR(mps_date, 'DD') = 2 then mps_qty end as "2",
       case when TO_CHAR(mps_date, 'DD') = 3 then mps_qty end as "3",
       case when TO_CHAR(mps_date, 'DD') = 4 then mps_qty end as "4",
       case when TO_CHAR(mps_date, 'DD') = 5 then mps_qty end as "5",
       case when TO_CHAR(mps_date, 'DD') = 6 then mps_qty end as "6",
       case when TO_CHAR(mps_date, 'DD') = 7 then mps_qty end as "7",
       case when TO_CHAR(mps_date, 'DD') = 8 then mps_qty end as "8",
       case when TO_CHAR(mps_date, 'DD') = 9 then mps_qty end as "9",
       case when TO_CHAR(mps_date, 'DD') = 10 then mps_qty end as "10",
       case when TO_CHAR(mps_date, 'DD') = 11 then mps_qty end as "11",
       case when TO_CHAR(mps_date, 'DD') = 12 then mps_qty end as "12",
       case when TO_CHAR(mps_date, 'DD') = 13 then mps_qty end as "13",
       case when TO_CHAR(mps_date, 'DD') = 14 then mps_qty end as "14",
       case when TO_CHAR(mps_date, 'DD') = 15 then mps_qty end as "15",
       case when TO_CHAR(mps_date, 'DD') = 16 then mps_qty end as "16",
       case when TO_CHAR(mps_date, 'DD') = 17 then mps_qty end as "17",
       case when TO_CHAR(mps_date, 'DD') = 18 then mps_qty end as "18",
       case when TO_CHAR(mps_date, 'DD') = 19 then mps_qty end as "19",
       case when TO_CHAR(mps_date, 'DD') = 20 then mps_qty end as "20",
       case when TO_CHAR(mps_date, 'DD') = 21 then mps_qty end as "21",
       case when TO_CHAR(mps_date, 'DD') = 22 then mps_qty end as "22",
       case when TO_CHAR(mps_date, 'DD') = 23 then mps_qty end as "23",
       case when TO_CHAR(mps_date, 'DD') = 24 then mps_qty end as "24",
       case when TO_CHAR(mps_date, 'DD') = 25 then mps_qty end as "25",
       case when TO_CHAR(mps_date, 'DD') = 26 then mps_qty end as "26",
       case when TO_CHAR(mps_date, 'DD') = 27 then mps_qty end as "27",
       case when TO_CHAR(mps_date, 'DD') = 28 then mps_qty end as "28",
       case when TO_CHAR(mps_date, 'DD') = 29 then mps_qty end as "29",
       case when TO_CHAR(mps_date, 'DD') = 30 then mps_qty end as "30",
       case when TO_CHAR(mps_date, 'DD') = 31 then mps_qty end as "31"
from (select po_no, po_line_no,mps_date + 1 as mps_date,mps_qty from mps_details) a
inner join mps_header b
on a.po_no = b.po_no and a.po_line_no = b.po_line_no
where b.status = 'FM'
)MPS
group by work_order,bulan;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_MPS_PLAN" ("WORK_ORDER", "BULAN", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31") AS 
  select work_order, 
      Bulan,
      sum("1") as "1",
      sum("2")as "2",
      sum("3")as "3",
      sum("4")as "4",
      sum("5")as "5",
      sum("6")as "6",
      sum("7")as "7",
      sum("8")as "8",
      sum("9")as "9",
      sum("10")as "10",
      sum("11")as "11",
      sum("12")as "12",
      sum("13")as "13",
      sum("14")as "14",
      sum("15")as "15",
      sum("16")as "16",
      sum("17")as "17",
      sum("18")as "18",
      sum("19")as "19",
      sum("20")as "20",
      sum("21")as "21",
      sum("22")as "22",
      sum("23")as "23",
      sum("24")as "24",
      sum("25")as "25",
      sum("26")as "26",
      sum("27")as "27",
      sum("28")as "28",
      sum("29")as "29",
    sum("30") as "30",
    sum("31" ) as "31"
      
from 
(
select b.work_order,
       TO_CHAR(mps_date, 'MM') as bulan,
       case when TO_CHAR(mps_date, 'DD') = 1 then mps_qty end as "1",
       case when TO_CHAR(mps_date, 'DD') = 2 then mps_qty end as "2",
       case when TO_CHAR(mps_date, 'DD') = 3 then mps_qty end as "3",
       case when TO_CHAR(mps_date, 'DD') = 4 then mps_qty end as "4",
       case when TO_CHAR(mps_date, 'DD') = 5 then mps_qty end as "5",
       case when TO_CHAR(mps_date, 'DD') = 6 then mps_qty end as "6",
       case when TO_CHAR(mps_date, 'DD') = 7 then mps_qty end as "7",
       case when TO_CHAR(mps_date, 'DD') = 8 then mps_qty end as "8",
       case when TO_CHAR(mps_date, 'DD') = 9 then mps_qty end as "9",
       case when TO_CHAR(mps_date, 'DD') = 10 then mps_qty end as "10",
       case when TO_CHAR(mps_date, 'DD') = 11 then mps_qty end as "11",
       case when TO_CHAR(mps_date, 'DD') = 12 then mps_qty end as "12",
       case when TO_CHAR(mps_date, 'DD') = 13 then mps_qty end as "13",
       case when TO_CHAR(mps_date, 'DD') = 14 then mps_qty end as "14",
       case when TO_CHAR(mps_date, 'DD') = 15 then mps_qty end as "15",
       case when TO_CHAR(mps_date, 'DD') = 16 then mps_qty end as "16",
       case when TO_CHAR(mps_date, 'DD') = 17 then mps_qty end as "17",
       case when TO_CHAR(mps_date, 'DD') = 18 then mps_qty end as "18",
       case when TO_CHAR(mps_date, 'DD') = 19 then mps_qty end as "19",
       case when TO_CHAR(mps_date, 'DD') = 20 then mps_qty end as "20",
       case when TO_CHAR(mps_date, 'DD') = 21 then mps_qty end as "21",
       case when TO_CHAR(mps_date, 'DD') = 22 then mps_qty end as "22",
       case when TO_CHAR(mps_date, 'DD') = 23 then mps_qty end as "23",
       case when TO_CHAR(mps_date, 'DD') = 24 then mps_qty end as "24",
       case when TO_CHAR(mps_date, 'DD') = 25 then mps_qty end as "25",
       case when TO_CHAR(mps_date, 'DD') = 26 then mps_qty end as "26",
       case when TO_CHAR(mps_date, 'DD') = 27 then mps_qty end as "27",
       case when TO_CHAR(mps_date, 'DD') = 28 then mps_qty end as "28",
       case when TO_CHAR(mps_date, 'DD') = 29 then mps_qty end as "29",
       case when TO_CHAR(mps_date, 'DD') = 30 then mps_qty end as "30",
       case when TO_CHAR(mps_date, 'DD') = 31 then mps_qty end as "31"
from mps_details a
inner join mps_header b
on a.po_no = b.po_no and a.po_line_no = b.po_line_no
where b.status = 'FM'
)MPS
group by work_order,bulan;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_MPS_REMAIN" ("QUANTITY", "WO_NO", "ITEM_NO") AS 
  select sum(slip_quantity)as Quantity,wo_no, item_no  from production_income
group by item_no,wo_no;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_MRP_HEAD" ("ITEM_TYPE", "N_1", "N_2", "N_3", "N_4", "N_5", "N_6", "N_7", "N_8", "N_9", "N_10", "N_11", "N_12", "N_13", "N_14", "N_15", "N_16", "N_17", "N_18", "N_19", "N_20", "N_21", "N_22", "N_23", "N_24", "N_25", "N_26", "N_27", "N_28", "N_29", "N_30", "N_31", "N_32", "N_33", "N_34", "N_35", "N_36", "N_37", "N_38", "N_39", "N_40", "N_41", "N_42", "N_43", "N_44", "N_45", "N_46", "N_47", "N_48", "N_49", "N_50", "N_51", "N_52", "N_53", "N_54", "N_55", "N_56", "N_57", "N_58", "N_59", "N_60", "N_61", "N_62", "N_63", "N_64", "N_65", "N_66", "N_67", "N_68", "N_69", "N_70", "N_71", "N_72", "N_73", "N_74", "N_75", "N_76", "N_77", "N_78", "N_79", "N_80", "N_81", "N_82", "N_83", "N_84", "N_85", "N_86", "N_87", "N_88", "N_89", "N_90") AS 
  select item_descm ITEM_TYPE,
case when sum(bb.N_1) = 0  then 0 else sum(aa.N_1)/sum(bb.N_1) end N_1,
case when sum(bb.N_2) = 0 then 0 else sum(aa.N_2)/sum(bb.N_2) end N_2,
case when sum(bb.N_3) = 0 then 0 else sum(aa.N_3)/sum(bb.N_3) end N_3,
case when sum(bb.N_4) = 0 then 0 else sum(aa.N_4)/sum(bb.N_4) end N_4,
case when sum(bb.N_5) = 0 then 0 else sum(aa.N_5)/sum(bb.N_5) end N_5,
case when sum(bb.N_6) = 0 then 0 else sum(aa.N_6)/sum(bb.N_6) end N_6,
case when sum(bb.N_7) = 0 then 0 else sum(aa.N_7)/sum(bb.N_7) end N_7,
case when sum(bb.N_8) = 0 then 0 else sum(aa.N_8)/sum(bb.N_8) end N_8,
case when sum(bb.N_9) = 0 then 0 else sum(aa.N_9)/sum(bb.N_9) end N_9,
case when sum(bb.N_10) = 0 then 0 else sum(aa.N_10)/sum(bb.N_10) end N_10,
case when sum(bb.N_11) = 0 then 0 else sum(aa.N_11)/sum(bb.N_11) end N_11,
case when sum(bb.N_12) = 0 then 0 else sum(aa.N_12)/sum(bb.N_12) end N_12,
case when sum(bb.N_13) = 0 then 0 else sum(aa.N_13)/sum(bb.N_13) end N_13,
case when sum(bb.N_14) = 0 then 0 else sum(aa.N_14)/sum(bb.N_14) end N_14,
case when sum(bb.N_15) = 0 then 0 else sum(aa.N_15)/sum(bb.N_15) end N_15,
case when sum(bb.N_16) = 0 then 0 else sum(aa.N_16)/sum(bb.N_16) end N_16,
case when sum(bb.N_17) = 0 then 0 else sum(aa.N_17)/sum(bb.N_17) end N_17,
case when sum(bb.N_18) = 0 then 0 else sum(aa.N_18)/sum(bb.N_18) end N_18,
case when sum(bb.N_19) = 0 then 0 else sum(aa.N_19)/sum(bb.N_19) end N_19,
case when sum(bb.N_20) = 0 then 0 else sum(aa.N_20)/sum(bb.N_20) end N_20,
case when sum(bb.N_21) = 0 then 0 else sum(aa.N_21)/sum(bb.N_21) end N_21,
case when sum(bb.N_22) = 0 then 0 else sum(aa.N_22)/sum(bb.N_22) end N_22,
case when sum(bb.N_23) = 0 then 0 else sum(aa.N_23)/sum(bb.N_23) end N_23,
case when sum(bb.N_24) = 0 then 0 else sum(aa.N_24)/sum(bb.N_24) end N_24,
case when sum(bb.N_25) = 0 then 0 else sum(aa.N_25)/sum(bb.N_25) end N_25,
case when sum(bb.N_26) = 0 then 0 else sum(aa.N_26)/sum(bb.N_26) end N_26,
case when sum(bb.N_27) = 0 then 0 else sum(aa.N_27)/sum(bb.N_27) end N_27,
case when sum(bb.N_28) = 0 then 0 else sum(aa.N_28)/sum(bb.N_28) end N_28,
case when sum(bb.N_29) = 0 then 0 else sum(aa.N_29)/sum(bb.N_29) end N_29,
case when sum(bb.N_30) = 0 then 0 else sum(aa.N_30)/sum(bb.N_30) end N_30,
case when sum(bb.N_31) = 0 then 0 else sum(aa.N_31)/sum(bb.N_31) end N_31,
case when sum(bb.N_32) = 0 then 0 else sum(aa.N_32)/sum(bb.N_32) end N_32,
case when sum(bb.N_33) = 0 then 0 else sum(aa.N_33)/sum(bb.N_33) end N_33,
case when sum(bb.N_34) = 0 then 0 else sum(aa.N_34)/sum(bb.N_34) end N_34,
case when sum(bb.N_35) = 0 then 0 else sum(aa.N_35)/sum(bb.N_35) end N_35,
case when sum(bb.N_36) = 0 then 0 else sum(aa.N_36)/sum(bb.N_36) end N_36,
case when sum(bb.N_37) = 0 then 0 else sum(aa.N_37)/sum(bb.N_37) end N_37,
case when sum(bb.N_38) = 0 then 0 else sum(aa.N_38)/sum(bb.N_38) end N_38,
case when sum(bb.N_39) = 0 then 0 else sum(aa.N_39)/sum(bb.N_39) end N_39,
case when sum(bb.N_40) = 0 then 0 else sum(aa.N_40)/sum(bb.N_40) end N_40,
case when sum(bb.N_41) = 0 then 0 else sum(aa.N_41)/sum(bb.N_41) end N_41,
case when sum(bb.N_42) = 0 then 0 else sum(aa.N_42)/sum(bb.N_42) end N_42,
case when sum(bb.N_43) = 0 then 0 else sum(aa.N_43)/sum(bb.N_43) end N_43,
case when sum(bb.N_44) = 0 then 0 else sum(aa.N_44)/sum(bb.N_44) end N_44,
case when sum(bb.N_45) = 0 then 0 else sum(aa.N_45)/sum(bb.N_45) end N_45,
case when sum(bb.N_46) = 0 then 0 else sum(aa.N_46)/sum(bb.N_46) end N_46,
case when sum(bb.N_47) = 0 then 0 else sum(aa.N_47)/sum(bb.N_47) end N_47,
case when sum(bb.N_48) = 0 then 0 else sum(aa.N_48)/sum(bb.N_48) end N_48,
case when sum(bb.N_49) = 0 then 0 else sum(aa.N_49)/sum(bb.N_49) end N_49,
case when sum(bb.N_50) = 0 then 0 else sum(aa.N_50)/sum(bb.N_50) end N_50,
case when sum(bb.N_51) = 0 then 0 else sum(aa.N_51)/sum(bb.N_51) end N_51,
case when sum(bb.N_52) = 0 then 0 else sum(aa.N_52)/sum(bb.N_52) end N_52,
case when sum(bb.N_53) = 0 then 0 else sum(aa.N_53)/sum(bb.N_53) end N_53,
case when sum(bb.N_54) = 0 then 0 else sum(aa.N_54)/sum(bb.N_54) end N_54,
case when sum(bb.N_55) = 0 then 0 else sum(aa.N_55)/sum(bb.N_55) end N_55,
case when sum(bb.N_56) = 0 then 0 else sum(aa.N_56)/sum(bb.N_56) end N_56,
case when sum(bb.N_57) = 0 then 0 else sum(aa.N_57)/sum(bb.N_57) end N_57,
case when sum(bb.N_58) = 0 then 0 else sum(aa.N_58)/sum(bb.N_58) end N_58,
case when sum(bb.N_59) = 0 then 0 else sum(aa.N_59)/sum(bb.N_59) end N_59,
case when sum(bb.N_60) = 0 then 0 else sum(aa.N_60)/sum(bb.N_60) end N_60,
case when sum(bb.N_61) = 0 then 0 else sum(aa.N_61)/sum(bb.N_61) end N_61,
case when sum(bb.N_62) = 0 then 0 else sum(aa.N_62)/sum(bb.N_62) end N_62,
case when sum(bb.N_63) = 0 then 0 else sum(aa.N_63)/sum(bb.N_63) end N_63,
case when sum(bb.N_64) = 0 then 0 else sum(aa.N_64)/sum(bb.N_64) end N_64,
case when sum(bb.N_65) = 0 then 0 else sum(aa.N_65)/sum(bb.N_65) end N_65,
case when sum(bb.N_66) = 0 then 0 else sum(aa.N_66)/sum(bb.N_66) end N_66,
case when sum(bb.N_67) = 0 then 0 else sum(aa.N_67)/sum(bb.N_67) end N_67,
case when sum(bb.N_68) = 0 then 0 else sum(aa.N_68)/sum(bb.N_68) end N_68,
case when sum(bb.N_69) = 0 then 0 else sum(aa.N_69)/sum(bb.N_69) end N_69,
case when sum(bb.N_70) = 0 then 0 else sum(aa.N_70)/sum(bb.N_70) end N_70,
case when sum(bb.N_71) = 0 then 0 else sum(aa.N_71)/sum(bb.N_71) end N_71,
case when sum(bb.N_72) = 0 then 0 else sum(aa.N_72)/sum(bb.N_72) end N_72,
case when sum(bb.N_73) = 0 then 0 else sum(aa.N_73)/sum(bb.N_73) end N_73,
case when sum(bb.N_74) = 0 then 0 else sum(aa.N_74)/sum(bb.N_74) end N_74,
case when sum(bb.N_75) = 0 then 0 else sum(aa.N_75)/sum(bb.N_75) end N_75,
case when sum(bb.N_76) = 0 then 0 else sum(aa.N_76)/sum(bb.N_76) end N_76,
case when sum(bb.N_77) = 0 then 0 else sum(aa.N_77)/sum(bb.N_77) end N_77,
case when sum(bb.N_78) = 0 then 0 else sum(aa.N_78)/sum(bb.N_78) end N_78,
case when sum(bb.N_79) = 0 then 0 else sum(aa.N_79)/sum(bb.N_79) end N_79,
case when sum(bb.N_80) = 0 then 0 else sum(aa.N_80)/sum(bb.N_80) end N_80,
case when sum(bb.N_81) = 0 then 0 else sum(aa.N_81)/sum(bb.N_81) end N_81,
case when sum(bb.N_82) = 0 then 0 else sum(aa.N_82)/sum(bb.N_82) end N_82,
case when sum(bb.N_83) = 0 then 0 else sum(aa.N_83)/sum(bb.N_83) end N_83,
case when sum(bb.N_84) = 0 then 0 else sum(aa.N_84)/sum(bb.N_84) end N_84,
case when sum(bb.N_85) = 0 then 0 else sum(aa.N_85)/sum(bb.N_85) end N_85,
case when sum(bb.N_86) = 0 then 0 else sum(aa.N_86)/sum(bb.N_86) end N_86,
case when sum(bb.N_87) = 0 then 0 else sum(aa.N_87)/sum(bb.N_87) end N_87,
case when sum(bb.N_88) = 0 then 0 else sum(aa.N_88)/sum(bb.N_88) end N_88,
case when sum(bb.N_89) = 0 then 0 else sum(aa.N_89)/sum(bb.N_89) end N_89,
case when sum(bb.N_90) = 0 then 0 else sum(aa.N_90)/sum(bb.N_90) end N_90

from
(select  ztb_mrp_Data.*,case Item_no 
        when '1170140' then 'CC ROD LR6'
        when '1130031' then 'CC ROD LR6'
        when '1170133' Then 'KOH'
        when '1170037' then 'KOH'
        when '1110064' then 'GASKET LR03'
        when '1110026' then 'GASKET LR03'
        when '1110046' then 'GASKET LR03'
        when '1120007' then 'WASHER LR6'
        when '1120026' then 'WASHER LR6'
        when '1120028' Then 'GASKET LR6'
        when '1120041' Then 'GASKET LR6'
        when '1130025' then 'GASKET LR6'
        when '1110031' then 'WASHER LR03'
        when '1110006' then 'WASHER LR03'
        when '1170113' then 'EMD TOSOH HH T2'
        when '1170130' then 'EMD TOSOH HH T2'
        when '1170118' then 'ZINC POWDER'
        when '1170120' then 'ZINC POWDER'
        when '1110060' then 'CATH CAN LR03 (COATED)  (S)'
        when '1110065' then 'CATH CAN LR03 (COATED)  (S)'
        when '1170155' then 'CATH CAN LR6(COAT)2.0'
        when '1120045' then 'CATH CAN LR6(COAT)2.0'
        when '1170161' then 'CARBOXIL/AQUPEC'
        when '1170139' then 'CARBOXIL/AQUPEC'
        else item_desc end item_descm from ztb_mrp_Data where   NO_ID = 4) aa
INNER JOIN
(select * from ztb_mrp_Data where   NO_ID = 8 )bb
on  aa.item_no = bb.item_no
--where item_descm = 'KOH'
group by item_descm;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_MRP_PM_KONVERSI" ("ITEM_NO", "CR_DATE", "WORK_ORDER", "LOWER_ITEM_NO", "DESCRIPTION", "MPS_DATE", "MPS_QTY", "KONVERSI", "QTY") AS 
  select 
       r.item_no, 
       r.cr_date,
       r.work_order,
       st.lower_item_no,
       it.description, 
       s.mps_date, 
       s.mps_qty,
      CAST(sum(s.mps_qty) * quantity / quantity_base as decimal(18,2)) * (1 + (failure_rate /100))   konversi,
       r.qty
	
from mps_header r
inner join ztb_mps_details s 
on r.po_no = s.po_no and s.po_line_no = r.po_line_no
inner join (  
          select * from structure s
          inner join (
          select max(level_no) level_nos, upper_item_no upper from structure
          group by upper_item_no
          )ss on s.upper_item_no = ss.upper and s.level_no = ss.level_nos

            ) st
on st.upper_item_no = r.item_no
inner join item it 
on st.lower_item_no = it.item_no
where   s.mps_date > (select trim(sysdate) from dual) 
       and s.mps_qty > 0
group by r.item_no, 
       r.work_order,r.cr_date,
       st.lower_item_no,
       it.description, 
       s.mps_date, 
       s.mps_qty,
       quantity, 
       quantity_base,
       failure_rate,r.qty;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_PACKING_PROCESS" ("WORK_ORDER", "BULAN", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31") AS 
  select work_order, 
      Bulan,
      sum("1") as "1",
      sum("2")as "2",
      sum("3")as "3",
      sum("4")as "4",
      sum("5")as "5",
      sum("6")as "6",
      sum("7")as "7",
      sum("8")as "8",
      sum("9")as "9",
      sum("10")as "10",
      sum("11")as "11",
      sum("12")as "12",
      sum("13")as "13",
      sum("14")as "14",
      sum("15")as "15",
      sum("16")as "16",
      sum("17")as "17",
      sum("18")as "18",
      sum("19")as "19",
      sum("20")as "20",
      sum("21")as "21",
      sum("22")as "22",
      sum("23")as "23",
      sum("24")as "24",
      sum("25")as "25",
      sum("26")as "26",
      sum("27")as "27",
      sum("28")as "28",
      sum("29")as "29",
    sum("30") as "30",
    sum("31" ) as "31"
      
from (
select b.wo_no as work_order,
       b.item_no,
       dateend, 
       no_outer_box * carton as Qty,
       TO_CHAR(dateend, 'MM') as bulan,
       case when TO_CHAR(dateend, 'DD') = 1 then no_outer_box * carton end as "1",
       case when TO_CHAR(dateend, 'DD') = 2 then no_outer_box * carton end as "2",
       case when TO_CHAR(dateend, 'DD') = 3 then no_outer_box * carton end as "3",
       case when TO_CHAR(dateend, 'DD') = 4 then no_outer_box * carton end as "4",
       case when TO_CHAR(dateend, 'DD') = 5 then no_outer_box * carton end as "5",
       case when TO_CHAR(dateend, 'DD') = 6 then no_outer_box * carton end as "6",
       case when TO_CHAR(dateend, 'DD') = 7 then no_outer_box * carton end as "7",
       case when TO_CHAR(dateend, 'DD') = 8 then no_outer_box * carton end as "8",
       case when TO_CHAR(dateend, 'DD') = 9 then no_outer_box * carton end as "9",
       case when TO_CHAR(dateend, 'DD') = 10 then no_outer_box * carton end as "10",
       case when TO_CHAR(dateend, 'DD') = 11 then no_outer_box * carton end as "11",
       case when TO_CHAR(dateend, 'DD') = 12 then no_outer_box * carton end as "12",
       case when TO_CHAR(dateend, 'DD') = 13 then no_outer_box * carton end as "13",
       case when TO_CHAR(dateend, 'DD') = 14 then no_outer_box * carton end as "14",
       case when TO_CHAR(dateend, 'DD') = 15 then no_outer_box * carton end as "15",
       case when TO_CHAR(dateend, 'DD') = 16 then no_outer_box * carton end as "16",
       case when TO_CHAR(dateend, 'DD') = 17 then no_outer_box * carton end as "17",
       case when TO_CHAR(dateend, 'DD') = 18 then no_outer_box * carton end as "18",
       case when TO_CHAR(dateend, 'DD') = 19 then no_outer_box * carton end as "19",
       case when TO_CHAR(dateend, 'DD') = 20 then no_outer_box * carton end as "20",
       case when TO_CHAR(dateend, 'DD') = 21 then no_outer_box * carton end as "21",
       case when TO_CHAR(dateend, 'DD') = 22 then no_outer_box * carton end as "22",
       case when TO_CHAR(dateend, 'DD') = 23 then no_outer_box * carton end as "23",
       case when TO_CHAR(dateend, 'DD') = 24 then no_outer_box * carton end as "24",
       case when TO_CHAR(dateend, 'DD') = 25 then no_outer_box * carton end as "25",
       case when TO_CHAR(dateend, 'DD') = 26 then no_outer_box * carton end as "26",
       case when TO_CHAR(dateend, 'DD') = 27 then no_outer_box * carton end as "27",
       case when TO_CHAR(dateend, 'DD') = 28 then no_outer_box * carton end as "28",
       case when TO_CHAR(dateend, 'DD') = 29 then no_outer_box * carton end as "29",
       case when TO_CHAR(dateend, 'DD') = 30 then no_outer_box * carton end as "30",
       case when TO_CHAR(dateend, 'DD') = 31 then no_outer_box * carton end as "31"
from ztb_kanban_pck a
inner join ztb_p_plan b
on a.id = b.id
inner join mps_header c
on b.wo_no = c.work_order
inner join (select item_no,pallet_unit_number/ pi.pallet_ctn_number as carton from item inner join packing_information pi on item.pi_no = pi.pi_no)item
on item.item_no = a.item_no
where dateend is not null
)progress
group by work_order,bulan;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_PALLET_CHECK" ("DO_NO", "PPBE_NO", "ANSWER_NO", "GROSS_DETAIL", "NET_DETAIL", "MSM_DETAIL", "GROSS_INS", "NET_INS", "MSM_INS", "GROSS_INV", "NET_INV", "MSM_INV") AS 
  select do_no,
       ppbe_no,
       aa.answer_no,
       ceil(sum(aa.gross)) gross_detail,
       ceil(sum(aa.net)) net_detail,
       ceil(sum(aa.msm)) msm_detail,
       ceil((bb.gw)) gross_ins,
       ceil((bb.nw)) net_ins,
       ceil((bb.msm)) msm_ins,
       case when cc.gross is null  then ceil((bb.gw))  else ceil(cc.gross) end gross_inv, 
       case when cc.gross is null then  ceil((bb.nw))  else ceil(cc.net) end net_inv, 
       case when cc.gross is null then  ceil((bb.msm)) else ceil(cc.measurement) end msm_inv
from ztb_shipping_detail aa
inner join ztb_shipping_ins bb
on aa.answer_no = bb.answer_no
left outer join ( 
select s.answer_no1, r.gross, r.net, r.measurement,s.do_no from do_Details s
inner join do_pl_header r
on s.do_no = r.do_no and s.line_no = r.pl_line_no
)cc on aa.answer_no = cc.answer_no1
group by aa.answer_no,bb.gw,bb.nw, bb.msm,ppbe_no,cc.gross, cc.net, cc.measurement,do_no;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_PLAN_ASSY" ("ASSY_LINE", "CELL_TYPE", "REVISI", "BULAN", "TAHUN", "PLAN_1", "PLAN_2", "PLAN_3", "PLAN_4", "PLAN_5", "PLAN_6", "PLAN_7", "PLAN_8", "PLAN_9", "PLAN_10", "PLAN_11", "PLAN_12", "PLAN_13", "PLAN_14", "PLAN_15", "PLAN_16", "PLAN_17", "PLAN_18", "PLAN_19", "PLAN_20", "PLAN_21", "PLAN_22", "PLAN_23", "PLAN_24", "PLAN_25", "PLAN_26", "PLAN_27", "PLAN_28", "PLAN_29", "PLAN_30", "PLAN_31") AS 
  select distinct pl.assy_line, pl.cell_type, pl.revisi, pl.bulan, pl.tahun,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=1),0) as plan_1,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=2),0) as plan_2,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=3),0) as plan_3,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=4),0) as plan_4,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=5),0) as plan_5,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=6),0) as plan_6,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=7),0) as plan_7,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=8),0) as plan_8,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=9),0) as plan_9,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=10),0) as plan_10,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=11),0) as plan_11,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=12),0) as plan_12,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=13),0) as plan_13,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=14),0) as plan_14,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=15),0) as plan_15,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=16),0) as plan_16,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=17),0) as plan_17,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=18),0) as plan_18,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=19),0) as plan_19,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=20),0) as plan_20,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=21),0) as plan_21,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=22),0) as plan_22,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=23),0) as plan_23,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=24),0) as plan_24,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=25),0) as plan_25,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=26),0) as plan_26,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=27),0) as plan_27,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=28),0) as plan_28,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=29),0) as plan_29,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=30),0) as plan_30,
nvl((select qty from ztb_assy_plan where assy_line=pl.assy_line AND cell_type=pl.cell_type and bulan=pl.bulan and tahun=pl.tahun and revisi=pl.revisi and tanggal=31),0) as plan_31
from ztb_assy_plan pl
where pl.revisi=(select max(revisi) from ztb_assy_plan where bulan=pl.bulan and tahun=pl.tahun)
group by pl.assy_line, pl.cell_type, pl.revisi, pl.bulan, pl.tahun
order by pl.assy_line,bulan asc;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_PLAN_ASSY_ACT" ("ASSY_LINE", "CELL_TYPE", "REVISI", "BULAN", "TAHUN", "PLAN_1", "ACTUAL_1", "PLAN_2", "ACTUAL_2", "PLAN_3", "ACTUAL_3", "PLAN_4", "ACTUAL_4", "PLAN_5", "ACTUAL_5", "PLAN_6", "ACTUAL_6", "PLAN_7", "ACTUAL_7", "PLAN_8", "ACTUAL_8", "PLAN_9", "ACTUAL_9", "PLAN_10", "ACTUAL_10", "PLAN_11", "ACTUAL_11", "PLAN_12", "ACTUAL_12", "PLAN_13", "ACTUAL_13", "PLAN_14", "ACTUAL_14", "PLAN_15", "ACTUAL_15", "PLAN_16", "ACTUAL_16", "PLAN_17", "ACTUAL_17", "PLAN_18", "ACTUAL_18", "PLAN_19", "ACTUAL_19", "PLAN_20", "ACTUAL_20", "PLAN_21", "ACTUAL_21", "PLAN_22", "ACTUAL_22", "PLAN_23", "ACTUAL_23", "PLAN_24", "ACTUAL_24", "PLAN_25", "ACTUAL_25", "PLAN_26", "ACTUAL_26", "PLAN_27", "ACTUAL_27", "PLAN_28", "ACTUAL_28", "PLAN_29", "ACTUAL_29", "PLAN_30", "ACTUAL_30", "PLAN_31", "ACTUAL_31") AS 
  select distinct pl.assy_line, pl.cell_type, pl.revisi,pl.bulan, pl.tahun,
pl.plan_1,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=1),0) as actual_1,
pl.plan_2,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=2),0) as actual_2,
pl.plan_3,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=3),0) as actual_3,
pl.plan_4,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=4),0) as actual_4,
pl.plan_5,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=5),0) as actual_5,
pl.plan_6,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=6),0) as actual_6,
pl.plan_7,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=7),0) as actual_7,
pl.plan_8,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=8),0) as actual_8,
pl.plan_9,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=9),0) as actual_9,
pl.plan_10,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=10),0) as actual_10,
pl.plan_11,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=11),0) as actual_11,
pl.plan_12,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=12),0) as actual_12,
pl.plan_13,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=13),0) as actual_13,
pl.plan_14,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=14),0) as actual_14,
pl.plan_15,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=15),0) as actual_15,
pl.plan_16,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=16),0) as actual_16,
pl.plan_17,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=17),0) as actual_17,
pl.plan_18,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=18),0) as actual_18,
pl.plan_19,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=19),0) as actual_19,
pl.plan_20,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=20),0) as actual_20,
pl.plan_21,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=21),0) as actual_21,
pl.plan_22,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=22),0) as actual_22,
pl.plan_23,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=23),0) as actual_23,
pl.plan_24,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=24),0) as actual_24,
pl.plan_25,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=25),0) as actual_25,
pl.plan_26,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=26),0) as actual_26,
pl.plan_27,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=27),0) as actual_27,
pl.plan_28,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=28),0) as actual_28,
pl.plan_29,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=29),0) as actual_29,
pl.plan_30,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=30),0) as actual_30,
pl.plan_31,
nvl((select sum(qty_Act_perpallet) from ztb_assy_kanban where assy_line= pl.assy_line AND cell_type= pl.cell_type and to_number(to_char(tanggal_actual,'mm'))= pl.bulan AND to_number(to_char(tanggal_actual,'yyyy'))= pl.tahun AND to_number(to_char(tanggal_actual,'dd'))=31),0) as actual_31
from zvw_plan_assy pl;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_PLAN_ASSY_ACT_TOTAL" ("ASSY_LINE", "CELL_TYPE", "REVISI", "BULAN", "TAHUN", "TOTAL_PLAN_1", "TOTAL_ACTUAL_1", "TOTAL_PLAN_2", "TOTAL_ACTUAL_2", "TOTAL_PLAN_3", "TOTAL_ACTUAL_3", "TOTAL_PLAN_4", "TOTAL_ACTUAL_4", "TOTAL_PLAN_5", "TOTAL_ACTUAL_5", "TOTAL_PLAN_6", "TOTAL_ACTUAL_6", "TOTAL_PLAN_7", "TOTAL_ACTUAL_7", "TOTAL_PLAN_8", "TOTAL_ACTUAL_8", "TOTAL_PLAN_9", "TOTAL_ACTUAL_9", "TOTAL_PLAN_10", "TOTAL_ACTUAL_10", "TOTAL_PLAN_11", "TOTAL_ACTUAL_11", "TOTAL_PLAN_12", "TOTAL_ACTUAL_12", "TOTAL_PLAN_13", "TOTAL_ACTUAL_13", "TOTAL_PLAN_14", "TOTAL_ACTUAL_14", "TOTAL_PLAN_15", "TOTAL_ACTUAL_15", "TOTAL_PLAN_16", "TOTAL_ACTUAL_16", "TOTAL_PLAN_17", "TOTAL_ACTUAL_17", "TOTAL_PLAN_18", "TOTAL_ACTUAL_18", "TOTAL_PLAN_19", "TOTAL_ACTUAL_19", "TOTAL_PLAN_20", "TOTAL_ACTUAL_20", "TOTAL_PLAN_21", "TOTAL_ACTUAL_21", "TOTAL_PLAN_22", "TOTAL_ACTUAL_22", "TOTAL_PLAN_23", "TOTAL_ACTUAL_23", "TOTAL_PLAN_24", "TOTAL_ACTUAL_24", "TOTAL_PLAN_25", "TOTAL_ACTUAL_25", "TOTAL_PLAN_26", "TOTAL_ACTUAL_26", "TOTAL_PLAN_27", "TOTAL_ACTUAL_27", "TOTAL_PLAN_28", "TOTAL_ACTUAL_28", "TOTAL_PLAN_29", "TOTAL_ACTUAL_29", "TOTAL_PLAN_30", "TOTAL_ACTUAL_30", "TOTAL_PLAN_31", "TOTAL_ACTUAL_31") AS 
  select assy_line,cell_type, revisi, bulan, tahun, 
plan_1 as total_plan_1, actual_1 as total_actual_1,
plan_1+plan_2 as total_plan_2, actual_1+ actual_2 as total_actual_2,
plan_1+plan_2+plan_3 as total_plan_3, actual_1+actual_2+actual_3 as total_actual_3,
plan_1+plan_2+plan_3+plan_4 as total_plan_4, actual_1+actual_2+actual_3+actual_4 as total_actual_4,
plan_1+plan_2+plan_3+plan_4+plan_5 as total_plan_5, actual_1+actual_2+actual_3+actual_4+actual_5 as total_actual_5,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6 as total_plan_6, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6 as total_actual_6,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7 as total_plan_7, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7 as total_actual_7,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8 as total_plan_8, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8 as total_actual_8,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9 as total_plan_9, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9 as total_actual_9,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10 as total_plan_10, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10 as total_actual_10,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10+plan_11 as total_plan_11, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10+actual_11 as total_actual_11,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10+plan_11+plan_12 as total_plan_12, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10+actual_11+actual_12 as total_actual_12,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10+plan_11+plan_12+plan_13 as total_plan_13, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10+actual_11+actual_12+actual_13 as total_actual_13,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10+plan_11+plan_12+plan_13+plan_14 as total_plan_14, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10+actual_11+actual_12+actual_13+actual_14 as total_actual_14,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10+plan_11+plan_12+plan_13+plan_14+plan_15 as total_plan_15, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10+actual_11+actual_12+actual_13+actual_14+actual_15 as total_actual_15,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10+plan_11+plan_12+plan_13+plan_14+plan_15+plan_16 as total_plan_16, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10+actual_11+actual_12+actual_13+actual_14+actual_15+actual_16 as total_actual_16,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10+plan_11+plan_12+plan_13+plan_14+plan_15+plan_16+plan_17 as total_plan_17, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10+actual_11+actual_12+actual_13+actual_14+actual_15+actual_16+actual_17 as total_actual_17,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10+plan_11+plan_12+plan_13+plan_14+plan_15+plan_16+plan_17+plan_18 as total_plan_18, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10+actual_11+actual_12+actual_13+actual_14+actual_15+actual_16+actual_17+actual_18 as total_actual_18,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10+plan_11+plan_12+plan_13+plan_14+plan_15+plan_16+plan_17+plan_18+plan_19 as total_plan_19, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10+actual_11+actual_12+actual_13+actual_14+actual_15+actual_16+actual_17+actual_18+actual_19 as total_actual_19,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10+plan_11+plan_12+plan_13+plan_14+plan_15+plan_16+plan_17+plan_18+plan_19+plan_20 as total_plan_20, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10+actual_11+actual_12+actual_13+actual_14+actual_15+actual_16+actual_17+actual_18+actual_19+actual_20 as total_actual_20,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10+plan_11+plan_12+plan_13+plan_14+plan_15+plan_16+plan_17+plan_18+plan_19+plan_20+plan_21 as total_plan_21, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10+actual_11+actual_12+actual_13+actual_14+actual_15+actual_16+actual_17+actual_18+actual_19+actual_20+actual_21 as total_actual_21,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10+plan_11+plan_12+plan_13+plan_14+plan_15+plan_16+plan_17+plan_18+plan_19+plan_20+plan_21+plan_22 as total_plan_22, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10+actual_11+actual_12+actual_13+actual_14+actual_15+actual_16+actual_17+actual_18+actual_19+actual_20+actual_21+actual_22 as total_actual_22,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10+plan_11+plan_12+plan_13+plan_14+plan_15+plan_16+plan_17+plan_18+plan_19+plan_20+plan_21+plan_22+plan_23 as total_plan_23, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10+actual_11+actual_12+actual_13+actual_14+actual_15+actual_16+actual_17+actual_18+actual_19+actual_20+actual_21+actual_22+actual_23 as total_actual_23,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10+plan_11+plan_12+plan_13+plan_14+plan_15+plan_16+plan_17+plan_18+plan_19+plan_20+plan_21+plan_22+plan_23+plan_24 as total_plan_24, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10+actual_11+actual_12+actual_13+actual_14+actual_15+actual_16+actual_17+actual_18+actual_19+actual_20+actual_21+actual_22+actual_23+actual_24 as total_actual_24,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10+plan_11+plan_12+plan_13+plan_14+plan_15+plan_16+plan_17+plan_18+plan_19+plan_20+plan_21+plan_22+plan_23+plan_24+plan_25 as total_plan_25, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10+actual_11+actual_12+actual_13+actual_14+actual_15+actual_16+actual_17+actual_18+actual_19+actual_20+actual_21+actual_22+actual_23+actual_24+actual_25 as total_actual_25,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10+plan_11+plan_12+plan_13+plan_14+plan_15+plan_16+plan_17+plan_18+plan_19+plan_20+plan_21+plan_22+plan_23+plan_24+plan_25+plan_26 as total_plan_26, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10+actual_11+actual_12+actual_13+actual_14+actual_15+actual_16+actual_17+actual_18+actual_19+actual_20+actual_21+actual_22+actual_23+actual_24+actual_25+actual_26 as total_actual_26,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10+plan_11+plan_12+plan_13+plan_14+plan_15+plan_16+plan_17+plan_18+plan_19+plan_20+plan_21+plan_22+plan_23+plan_24+plan_25+plan_26+plan_27 as total_plan_27, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10+actual_11+actual_12+actual_13+actual_14+actual_15+actual_16+actual_17+actual_18+actual_19+actual_20+actual_21+actual_22+actual_23+actual_24+actual_25+actual_26+actual_27 as total_actual_27,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10+plan_11+plan_12+plan_13+plan_14+plan_15+plan_16+plan_17+plan_18+plan_19+plan_20+plan_21+plan_22+plan_23+plan_24+plan_25+plan_26+plan_27+plan_28 as total_plan_28, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10+actual_11+actual_12+actual_13+actual_14+actual_15+actual_16+actual_17+actual_18+actual_19+actual_20+actual_21+actual_22+actual_23+actual_24+actual_25+actual_26+actual_27+actual_28 as total_actual_28,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10+plan_11+plan_12+plan_13+plan_14+plan_15+plan_16+plan_17+plan_18+plan_19+plan_20+plan_21+plan_22+plan_23+plan_24+plan_25+plan_26+plan_27+plan_28+plan_29 as total_plan_29, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10+actual_11+actual_12+actual_13+actual_14+actual_15+actual_16+actual_17+actual_18+actual_19+actual_20+actual_21+actual_22+actual_23+actual_24+actual_25+actual_26+actual_27+actual_28+actual_29 as total_actual_29,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10+plan_11+plan_12+plan_13+plan_14+plan_15+plan_16+plan_17+plan_18+plan_19+plan_20+plan_21+plan_22+plan_23+plan_24+plan_25+plan_26+plan_27+plan_28+plan_29+plan_30 as total_plan_30, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10+actual_11+actual_12+actual_13+actual_14+actual_15+actual_16+actual_17+actual_18+actual_19+actual_20+actual_21+actual_22+actual_23+actual_24+actual_25+actual_26+actual_27+actual_28+actual_29+actual_30 as total_actual_30,
plan_1+plan_2+plan_3+plan_4+plan_5+plan_6+plan_7+plan_8+plan_9+plan_10+plan_11+plan_12+plan_13+plan_14+plan_15+plan_16+plan_17+plan_18+plan_19+plan_20+plan_21+plan_22+plan_23+plan_24+plan_25+plan_26+plan_27+plan_28+plan_29+plan_30+plan_31 as total_plan_31, actual_1+actual_2+actual_3+actual_4+actual_5+actual_6+actual_7+actual_8+actual_9+actual_10+actual_11+actual_12+actual_13+actual_14+actual_15+actual_16+actual_17+actual_18+actual_19+actual_20+actual_21+actual_22+actual_23+actual_24+actual_25+actual_26+actual_27+actual_28+actual_29+actual_30+actual_31 as total_actual_31
from zvw_plan_assy_act;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_PM_INVENTORY" ("ITEM1", "LASTMONTH", "LASTMONTHAMOUNT", "TANGGAL1", "TANGGAL2", "TANGGAL3", "TANGGAL4", "TANGGAL5", "TANGGAL6", "TANGGAL7", "TANGGAL8", "TANGGAL9", "TANGGAL0", "TANGGAL11", "TANGGAL12", "TANGGAL13", "TANGGAL14", "TANGGAL15", "TANGGAL16", "TANGGAL17", "TANGGAL18", "TANGGAL19", "TANGGAL20", "TANGGAL21", "TANGGAL22", "TANGGAL23", "TANGGAL24", "TANGGAL25", "TANGGAL26", "TANGGAL27", "TANGGAL28", "TANGGAL29", "TANGGAL30", "TANGGAL31", "THISMONTH", "THISMONTHAMOUNT") AS 
  select x.item as Item1,
       x.lastmonth,
       x.lastmonthamount,
       x.lastmonth + nvl(y.tanggal1, 0) as tanggal1,
       x.lastmonth + nvl(y.tanggal2, 0) as tanggal2,
       x.lastmonth + nvl(y.tanggal3,0) as tanggal3,
       x.lastmonth + nvl(y.tanggal4,0) as tanggal4, 
       x.lastmonth + nvl(y.tanggal5,0) as tanggal5,
       x.lastmonth + nvl(y.tanggal6,0) as tanggal6,
       x.lastmonth + nvl(y.tanggal7,0) as tanggal7,
       x.lastmonth + nvl(y.tanggal8,0) as tanggal8,
       x.lastmonth + nvl(y.tanggal9,0) as tanggal9,
       x.lastmonth + nvl(y.tanggall0,0) as tanggal0,
       x.lastmonth + nvl(y.tanggall1,0) as tanggal11,
       x.lastmonth + nvl(y.tanggall2,0) as tanggal12,
       x.lastmonth + nvl(y.tanggall3,0) as tanggal13,
       x.lastmonth + nvl(y.tanggall4,0) as tanggal14,
       x.lastmonth + nvl(y.tanggall5,0) as tanggal15,
       x.lastmonth + nvl(y.tanggall6,0) as tanggal16,
       x.lastmonth + nvl(y.tanggall7,0) as tanggal17,
       x.lastmonth + nvl(y.tanggall8,0) as tanggal18,
       x.lastmonth + nvl(y.tanggall9,0) as tanggal19,
       x.lastmonth + nvl(y.tanggal20,0) as tanggal20,
       x.lastmonth + nvl(y.tanggal21,0) as tanggal21,
       x.lastmonth + nvl(y.tanggal22,0) as tanggal22,
       x.lastmonth + nvl(y.tanggal23,0) as tanggal23,
       x.lastmonth + nvl(y.tanggal24,0) as tanggal24,
       x.lastmonth + nvl(y.tanggal25,0) as tanggal25,
       x.lastmonth + nvl(y.tanggal26,0) as tanggal26,
       x.lastmonth + nvl(y.tanggal27,0) as tanggal27,
       x.lastmonth + nvl(y.tanggal28,0) as tanggal28,
       x.lastmonth + nvl(y.tanggal29,0) as tanggal29,
       x.lastmonth + nvl(y.tanggal30,0) as tanggal30,
       x.lastmonth + nvl(y.tanggal31,0) as tanggal31,
        x.thismonth,
       x.thismonthamount 
       --aa.thismonthamount as actualAmount
from 
(
select i.item_no as item,this_month,--,slip_date, 
       sum(w.last_inventory) as LastMonth ,
       sum(i.standard_price  * w.last_inventory ) LastMonthAmount,
       sum(w.last2_inventory) as LastMonth2 ,
       sum(i.standard_price  * w.last2_inventory ) LastMonthAmount2,
       sum(w.this_inventory) as ThisMonth,
       sum(i.standard_price * w.this_inventory ) as ThisMonthAmount
from item i
inner join whinventory w
on i.item_no = w.item_no
where  cost_subject_code = '136020' 
group by this_month,i.item_no
)x
left outer join 
(
select aa.item,
     
       sum(Tanggal_1) as Tanggal1,
       sum(Tanggal_2) as Tanggal2,
       sum(Tanggal_3) as Tanggal3,
       sum(Tanggal_4) as Tanggal4,
       sum(Tanggal_5) as Tanggal5,
       sum(Tanggal_6) as Tanggal6,
       sum(Tanggal_7) as Tanggal7,
       sum(Tanggal_8) as Tanggal8,
       sum(Tanggal_9) as Tanggal9,
       sum(Tanggal_10) as Tanggall0,
       sum(Tanggal_11) as Tanggall1,
       sum(Tanggal_12) as Tanggall2,
       sum(Tanggal_13) as Tanggall3,
       sum(Tanggal_14) as Tanggall4,
       sum(Tanggal_15) as Tanggall5,
       sum(Tanggal_16) as Tanggall6,
       sum(Tanggal_17) as Tanggall7,
       sum(Tanggal_18) as Tanggall8,
       sum(Tanggal_19) as Tanggall9,
       sum(Tanggal_20) as Tanggal20,
       sum(Tanggal_21) as Tanggal21,
       sum(Tanggal_22) as Tanggal22,
       sum(Tanggal_23) as Tanggal23,
       sum(Tanggal_24) as Tanggal24,
       sum(Tanggal_25) as Tanggal25,
       sum(Tanggal_26) as Tanggal26,
       sum(Tanggal_27) as Tanggal27,
       sum(Tanggal_28) as Tanggal28,
       sum(Tanggal_29) as Tanggal29,
       sum(Tanggal_30) as Tanggal30,
       sum(Tanggal_31) as Tanggal31
from 
(
select i.item_no as item,
      case when trim(TO_CHAR(slip_date, 'dd')) = '01' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_1,
      case when trim(TO_CHAR(slip_date, 'dd')) <= '02' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_2,
      case when trim(TO_CHAR(slip_date, 'dd')) <= '03' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_3,
      case when trim(TO_CHAR(slip_date, 'dd')) <= '04' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_4,
       case when trim(TO_CHAR(slip_date, 'dd')) <= '05' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_5,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '06' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_6,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '07' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_7,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '08' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_8,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '09' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_9,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '10' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_10,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '11' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_11,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '12' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_12,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '13' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_13,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '14' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_14,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '15' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_15,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '16' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_16,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '17' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_17,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '18' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_18,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '19' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_19,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '20' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_20,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '21' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_21,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '22' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_22,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '23' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_23,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '24' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_24,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '25' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_25,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '26' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_26,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '27' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_27,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '28' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_28,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '29' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_29,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '30' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_30,
        case when trim(TO_CHAR(slip_date, 'dd')) <= '31' Then sum(case when in_out_flag = 'O' Then  t.slip_quantity * -1 else t.slip_quantity end) else 0  end as Tanggal_31

        
from item i
inner join transaction t
on i.item_no = t.item_no
inner join sliptype s
on s.slip_type = t.slip_type
inner join whinventory w
on w.item_no = i.item_no
where  t.cost_subject_code = '136020' and accounting_month = (select distinct this_month from whinventory) --and i.item_no = '1110031'
group by  i.item_no,slip_date,last_inventory--,slip_date--,i.item_no,i.standard_price

)aa group by aa.item

)y 
on x.item = y.item
--where x.item = '91232093'
order by x.item;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_PM_PLAN" ("ITEM1", "LASTMONTH", "LASTMONTHAMOUNT", "TANGGAL1", "TANGGAL2", "TANGGAL3", "TANGGAL4", "TANGGAL5", "TANGGAL6", "TANGGAL7", "TANGGAL8", "TANGGAL9", "TANGGALL0", "TANGGALL1", "TANGGALL2", "TANGGALL3", "TANGGALL4", "TANGGALL5", "TANGGALL6", "TANGGALL7", "TANGGALL8", "TANGGALL9", "TANGGAL20", "TANGGAL21", "TANGGAL22", "TANGGAL23", "TANGGAL24", "TANGGAL25", "TANGGAL26", "TANGGAL27", "TANGGAL28", "TANGGAL29", "TANGGAL30", "TANGGAL31", "THISMONTH", "THISMONTHAMOUNT") AS 
  select ITEM1,
       LASTMONTH,
       LASTMONTHAMOUNT,
       sum(Tanggal_1) as Tanggal1,
       sum(Tanggal_2) as Tanggal2,
       sum(Tanggal_3) as Tanggal3,
       sum(Tanggal_4) as Tanggal4,
       sum(Tanggal_5) as Tanggal5,
       sum(Tanggal_6) as Tanggal6,
       sum(Tanggal_7) as Tanggal7,
       sum(Tanggal_8) as Tanggal8,
       sum(Tanggal_9) as Tanggal9,
       sum(Tanggal_10) as Tanggall0,
       sum(Tanggal_11) as Tanggall1,
       sum(Tanggal_12) as Tanggall2,
       sum(Tanggal_13) as Tanggall3,
       sum(Tanggal_14) as Tanggall4,
       sum(Tanggal_15) as Tanggall5,
       sum(Tanggal_16) as Tanggall6,
       sum(Tanggal_17) as Tanggall7,
       sum(Tanggal_18) as Tanggall8,
       sum(Tanggal_19) as Tanggall9,
       sum(Tanggal_20) as Tanggal20,
       sum(Tanggal_21) as Tanggal21,
       sum(Tanggal_22) as Tanggal22,
       sum(Tanggal_23) as Tanggal23,
       sum(Tanggal_24) as Tanggal24,
       sum(Tanggal_25) as Tanggal25,
       sum(Tanggal_26) as Tanggal26,
       sum(Tanggal_27) as Tanggal27,
       sum(Tanggal_28) as Tanggal28,
       sum(Tanggal_29) as Tanggal29,
       sum(Tanggal_30) as Tanggal30,
       sum(Tanggal_31) as Tanggal31,
       THISMONTH,
      THISMONTHAMOUNT
from 

(
      
      select lower_item_no ITEM1,
            0 LASTMONTH,
            0 LASTMONTHAMOUNT,
            case when trim(HARI) = '01' Then sum(converse_qty) else 0  end as Tanggal_1,
            case when trim(HARI) = '02' Then sum(converse_qty) else 0  end as Tanggal_2,
            case when trim(HARI) = '03' Then sum(converse_qty) else 0  end as Tanggal_3,
            case when trim(HARI) = '04' Then sum(converse_qty) else 0  end as Tanggal_4,
            case when trim(HARI) = '05' Then sum(converse_qty) else 0  end as Tanggal_5,
            case when trim(HARI) = '06' Then sum(converse_qty) else 0  end as Tanggal_6,
            case when trim(HARI) = '07' Then sum(converse_qty) else 0  end as Tanggal_7,
            case when trim(HARI) = '08' Then sum(converse_qty) else 0  end as Tanggal_8,
            case when trim(HARI) = '09' Then sum(converse_qty) else 0  end as Tanggal_9,
            case when trim(HARI) = '10' Then sum(converse_qty) else 0  end as Tanggal_10,
            case when trim(HARI) = '11' Then sum(converse_qty) else 0  end as Tanggal_11,
            case when trim(HARI) = '12' Then sum(converse_qty) else 0  end as Tanggal_12,
            case when trim(HARI) = '13' Then sum(converse_qty) else 0  end as Tanggal_13,
            case when trim(HARI) = '14' Then sum(converse_qty) else 0  end as Tanggal_14,
            case when trim(HARI) = '15' Then sum(converse_qty) else 0  end as Tanggal_15,
            case when trim(HARI) = '16' Then sum(converse_qty) else 0  end as Tanggal_16,
            case when trim(HARI) = '17' Then sum(converse_qty) else 0  end as Tanggal_17,
            case when trim(HARI) = '18' Then sum(converse_qty) else 0  end as Tanggal_18,
            case when trim(HARI) = '19' Then sum(converse_qty) else 0  end as Tanggal_19,
            case when trim(HARI) = '20' Then sum(converse_qty) else 0  end as Tanggal_20,
            case when trim(HARI) = '21' Then sum(converse_qty) else 0  end as Tanggal_21,
            case when trim(HARI) = '22' Then sum(converse_qty) else 0  end as Tanggal_22,
            case when trim(HARI) = '23' Then sum(converse_qty) else 0  end as Tanggal_23,
            case when trim(HARI) = '24' Then sum(converse_qty) else 0  end as Tanggal_24,
            case when trim(HARI) = '25' Then sum(converse_qty) else 0  end as Tanggal_25,
            case when trim(HARI) = '26' Then sum(converse_qty) else 0  end as Tanggal_26,
            case when trim(HARI) = '27' Then sum(converse_qty) else 0  end as Tanggal_27,
            case when trim(HARI) = '28' Then sum(converse_qty) else 0  end as Tanggal_28,
            case when trim(HARI) = '29' Then sum(converse_qty) else 0  end as Tanggal_29,
            case when trim(HARI) = '30' Then sum(converse_qty) else 0  end as Tanggal_30,
            case when trim(HARI) = '31' Then sum(converse_qty)  else 0  end as Tanggal_31,
            0 THISMONTH,
            0 THISMONTHAMOUNT
            
      
      from
      (
      select lower_item_no,
             --quantity_base,
             ceil(sum(mps_qty/quantity_base)) as Converse_QTY,
             to_char(mps_date,'dd') hari
      
      from mps_details s
      inner join mps_header r
      on r.po_no = s.po_no 
      and r.po_line_no = s.po_line_no
      left outer join (

          select * from structure s
          inner join (
          select max(level_no) level_nos, upper_item_no upper from structure
          group by upper_item_no
          )ss on s.upper_item_no = ss.upper and s.level_no = ss.level_nos



      )s
      on r.item_no = s.upper_item_no
      where    to_char(mps_date,'MM') = (select to_char(sysdate,'MM')   from dual)
      group by to_char(mps_date,'dd') ,lower_item_no
      )d
      group by lower_item_no,hari
)aa group by ITEM1,
       LASTMONTH,
       LASTMONTHAMOUNT,
       THISMONTH,
       THISMONTHAMOUNT;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_PM_PURCHASE" ("ITEM1", "LASTMONTH", "LASTMONTHAMOUNT", "TANGGAL1", "TANGGAL2", "TANGGAL3", "TANGGAL4", "TANGGAL5", "TANGGAL6", "TANGGAL7", "TANGGAL8", "TANGGAL9", "TANGGAL0", "TANGGAL11", "TANGGAL12", "TANGGAL13", "TANGGAL14", "TANGGAL15", "TANGGAL16", "TANGGAL17", "TANGGAL18", "TANGGAL19", "TANGGAL20", "TANGGAL21", "TANGGAL22", "TANGGAL23", "TANGGAL24", "TANGGAL25", "TANGGAL26", "TANGGAL27", "TANGGAL28", "TANGGAL29", "TANGGAL30", "TANGGAL31", "THISMONTH", "THISMONTHAMOUNT") AS 
  select x.item as item1,
       x.LastMonth as lastmonth,
       x.lastmonthamount as lastmonthamount,
         nvl(y.tanggal1, 0) as tanggal1,
        nvl(y.tanggal2, 0) as tanggal2,
       nvl(y.tanggal3, 0) as tanggal3,
       nvl(y.tanggal4, 0) as tanggal4, 
       nvl(y.tanggal5, 0) as tanggal5,
       nvl(y.tanggal6, 0) as tanggal6,
       nvl(y.tanggal7, 0) as tanggal7,
       nvl(y.tanggal8, 0) as tanggal8,
       nvl(y.tanggal9, 0) as tanggal9,
       nvl(y.tanggall0, 0) as tanggal0,
       nvl(y.tanggall1, 0) as tanggal11,
       nvl(y.tanggall2, 0) as tanggal12,
       nvl(y.tanggall3, 0) as tanggal13,
       nvl(y.tanggall4, 0) as tanggal14,
       nvl(y.tanggall5, 0) as tanggal15,
       nvl(y.tanggall6, 0) as tanggal16,
       nvl(y.tanggall7, 0) as tanggal17,
       nvl(y.tanggall8, 0) as tanggal18,
       nvl(y.tanggall9, 0) as tanggal19,
       nvl(y.tanggal20, 0) as tanggal20,
       nvl(y.tanggal21, 0) as tanggal21,
       nvl(y.tanggal22, 0) as tanggal22,
       nvl(y.tanggal23, 0) as tanggal23,
       nvl(y.tanggal24, 0) as tanggal24,
       nvl(y.tanggal25, 0) as tanggal25,
       nvl(y.tanggal26, 0) as tanggal26,
       nvl(y.tanggal27, 0) as tanggal27,
       nvl(y.tanggal28, 0) as tanggal28,
       nvl(y.tanggal29, 0) as tanggal29,
       nvl(y.tanggal30, 0) as tanggal30,
       nvl(y.tanggal31, 0) as tanggal31,
       x.ThisMonth as thismonth,
       x.ThisMonthAmount as thismonthamount
from 
(
select i.item_no as item,this_month,--,slip_date, 
       sum(w.last_inventory) as LastMonth ,
       sum(i.standard_price  * w.last_inventory ) LastMonthAmount,
       sum(w.last_inventory) as LastMonth2 ,
       sum(i.standard_price  * w.last2_inventory ) LastMonthAmount2,
       sum(w.this_inventory) as ThisMonth,
       sum(i.standard_price * w.this_inventory ) as ThisMonthAmount
from item i
inner join whinventory w
on i.item_no = w.item_no
where  cost_subject_code = '136020' 
group by this_month,i.item_no
)x
left outer join 
(
select aa.item,
     
       sum(Tanggal_1) as Tanggal1,
       sum(Tanggal_2) as Tanggal2,
       sum(Tanggal_3) as Tanggal3,
       sum(Tanggal_4) as Tanggal4,
       sum(Tanggal_5) as Tanggal5,
       sum(Tanggal_6) as Tanggal6,
       sum(Tanggal_7) as Tanggal7,
       sum(Tanggal_8) as Tanggal8,
       sum(Tanggal_9) as Tanggal9,
       sum(Tanggal_10) as Tanggall0,
       sum(Tanggal_11) as Tanggall1,
       sum(Tanggal_12) as Tanggall2,
       sum(Tanggal_13) as Tanggall3,
       sum(Tanggal_14) as Tanggall4,
       sum(Tanggal_15) as Tanggall5,
       sum(Tanggal_16) as Tanggall6,
       sum(Tanggal_17) as Tanggall7,
       sum(Tanggal_18) as Tanggall8,
       sum(Tanggal_19) as Tanggall9,
       sum(Tanggal_20) as Tanggal20,
       sum(Tanggal_21) as Tanggal21,
       sum(Tanggal_22) as Tanggal22,
       sum(Tanggal_23) as Tanggal23,
       sum(Tanggal_24) as Tanggal24,
       sum(Tanggal_25) as Tanggal25,
       sum(Tanggal_26) as Tanggal26,
       sum(Tanggal_27) as Tanggal27,
       sum(Tanggal_28) as Tanggal28,
       sum(Tanggal_29) as Tanggal29,
       sum(Tanggal_30) as Tanggal30,
       sum(Tanggal_31) as Tanggal31
from 
(
select i.item_no as item,
      case when trim(TO_CHAR(slip_date, 'dd')) = '01' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity   end end) else 0  end as Tanggal_1,
      case when trim(TO_CHAR(slip_date, 'dd')) = '02' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_2,
      case when trim(TO_CHAR(slip_date, 'dd')) = '03' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_3,
      case when trim(TO_CHAR(slip_date, 'dd')) = '04' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_4,
      case when trim(TO_CHAR(slip_date, 'dd')) = '05' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_5,
      case when trim(TO_CHAR(slip_date, 'dd')) = '06' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_6,
      case when trim(TO_CHAR(slip_date, 'dd')) = '07' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_7,
      case when trim(TO_CHAR(slip_date, 'dd')) = '08' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_8,
      case when trim(TO_CHAR(slip_date, 'dd')) = '09' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_9,
      case when trim(TO_CHAR(slip_date, 'dd')) = '10' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_10,
      case when trim(TO_CHAR(slip_date, 'dd')) = '11' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_11,
      case when trim(TO_CHAR(slip_date, 'dd')) = '12' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_12,
      case when trim(TO_CHAR(slip_date, 'dd')) = '13' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_13,
      case when trim(TO_CHAR(slip_date, 'dd')) = '14' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_14,
      case when trim(TO_CHAR(slip_date, 'dd')) = '15' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_15,
      case when trim(TO_CHAR(slip_date, 'dd')) = '16' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_16,
      case when trim(TO_CHAR(slip_date, 'dd')) = '17' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1  else t.slip_quantity end end) else 0  end as Tanggal_17,
      case when trim(TO_CHAR(slip_date, 'dd')) = '18' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_18,
      case when trim(TO_CHAR(slip_date, 'dd')) = '19' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_19,
      case when trim(TO_CHAR(slip_date, 'dd')) = '20' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_20,
      case when trim(TO_CHAR(slip_date, 'dd')) = '21' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_21,
      case when trim(TO_CHAR(slip_date, 'dd')) = '22' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_22,
      case when trim(TO_CHAR(slip_date, 'dd')) = '23' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_23,
      case when trim(TO_CHAR(slip_date, 'dd')) = '24' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_24,
      case when trim(TO_CHAR(slip_date, 'dd')) = '25' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_25,
      case when trim(TO_CHAR(slip_date, 'dd')) = '26' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_26,
      case when trim(TO_CHAR(slip_date, 'dd')) = '27' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_27,
      case when trim(TO_CHAR(slip_date, 'dd')) = '28' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_28,
      case when trim(TO_CHAR(slip_date, 'dd')) = '29' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_29,
      case when trim(TO_CHAR(slip_date, 'dd')) = '30' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_30,
      case when trim(TO_CHAR(slip_date, 'dd')) = '31' Then sum(case when  table_position = 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1  else t.slip_quantity end end) else 0  end as Tanggal_31

        
from item i
inner join transaction t
on i.item_no = t.item_no
inner join sliptype s
on s.slip_type = t.slip_type
where  t.cost_subject_code = '136020' and accounting_month = (select distinct this_month  from whinventory)
group by  i.item_no,slip_date--,slip_date--,i.item_no,i.standard_price

)aa group by aa.item

)y 
on x.item = y.item
--where x.item = '1120037'
--where x.item not in ('AFTER TP','HALF BATTERY','LABELED BATTERY','NAKED BATTERY','AFTER TP','PACKED BATTERY');
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_PM_THEORITICAL" ("ITEM1", "LASTMONTH", "LASTMONTHAMOUNT", "TANGGAL1", "TANGGAL2", "TANGGAL3", "TANGGAL4", "TANGGAL5", "TANGGAL6", "TANGGAL7", "TANGGAL8", "TANGGAL9", "TANGGALL0", "TANGGALL1", "TANGGALL2", "TANGGALL3", "TANGGALL4", "TANGGALL5", "TANGGALL6", "TANGGALL7", "TANGGALL8", "TANGGALL9", "TANGGAL20", "TANGGAL21", "TANGGAL22", "TANGGAL23", "TANGGAL24", "TANGGAL25", "TANGGAL26", "TANGGAL27", "TANGGAL28", "TANGGAL29", "TANGGAL30", "TANGGAL31", "THISMONTH", "THISMONTHAMOUNT") AS 
  select ITEM1,
       LASTMONTH,
       LASTMONTHAMOUNT,
       sum(Tanggal_1) as Tanggal1,
       sum(Tanggal_2) as Tanggal2,
       sum(Tanggal_3) as Tanggal3,
       sum(Tanggal_4) as Tanggal4,
       sum(Tanggal_5) as Tanggal5,
       sum(Tanggal_6) as Tanggal6,
       sum(Tanggal_7) as Tanggal7,
       sum(Tanggal_8) as Tanggal8,
       sum(Tanggal_9) as Tanggal9,
       sum(Tanggal_10) as Tanggall0,
       sum(Tanggal_11) as Tanggall1,
       sum(Tanggal_12) as Tanggall2,
       sum(Tanggal_13) as Tanggall3,
       sum(Tanggal_14) as Tanggall4,
       sum(Tanggal_15) as Tanggall5,
       sum(Tanggal_16) as Tanggall6,
       sum(Tanggal_17) as Tanggall7,
       sum(Tanggal_18) as Tanggall8,
       sum(Tanggal_19) as Tanggall9,
       sum(Tanggal_20) as Tanggal20,
       sum(Tanggal_21) as Tanggal21,
       sum(Tanggal_22) as Tanggal22,
       sum(Tanggal_23) as Tanggal23,
       sum(Tanggal_24) as Tanggal24,
       sum(Tanggal_25) as Tanggal25,
       sum(Tanggal_26) as Tanggal26,
       sum(Tanggal_27) as Tanggal27,
       sum(Tanggal_28) as Tanggal28,
       sum(Tanggal_29) as Tanggal29,
       sum(Tanggal_30) as Tanggal30,
       sum(Tanggal_31) as Tanggal31,
       THISMONTH,
      THISMONTHAMOUNT
from 

(
      
      select lower_item_no ITEM1,
            0 LASTMONTH,
            0 LASTMONTHAMOUNT,
            case when trim(HARI) = '01' Then sum(converse_qty) else 0  end as Tanggal_1,
            case when trim(HARI) = '02' Then sum(converse_qty) else 0  end as Tanggal_2,
            case when trim(HARI) = '03' Then sum(converse_qty) else 0  end as Tanggal_3,
            case when trim(HARI) = '04' Then sum(converse_qty) else 0  end as Tanggal_4,
            case when trim(HARI) = '05' Then sum(converse_qty) else 0  end as Tanggal_5,
            case when trim(HARI) = '06' Then sum(converse_qty) else 0  end as Tanggal_6,
            case when trim(HARI) = '07' Then sum(converse_qty) else 0  end as Tanggal_7,
            case when trim(HARI) = '08' Then sum(converse_qty) else 0  end as Tanggal_8,
            case when trim(HARI) = '09' Then sum(converse_qty) else 0  end as Tanggal_9,
            case when trim(HARI) = '10' Then sum(converse_qty) else 0  end as Tanggal_10,
            case when trim(HARI) = '11' Then sum(converse_qty) else 0  end as Tanggal_11,
            case when trim(HARI) = '12' Then sum(converse_qty) else 0  end as Tanggal_12,
            case when trim(HARI) = '13' Then sum(converse_qty) else 0  end as Tanggal_13,
            case when trim(HARI) = '14' Then sum(converse_qty) else 0  end as Tanggal_14,
            case when trim(HARI) = '15' Then sum(converse_qty) else 0  end as Tanggal_15,
            case when trim(HARI) = '16' Then sum(converse_qty) else 0  end as Tanggal_16,
            case when trim(HARI) = '17' Then sum(converse_qty) else 0  end as Tanggal_17,
            case when trim(HARI) = '18' Then sum(converse_qty) else 0  end as Tanggal_18,
            case when trim(HARI) = '19' Then sum(converse_qty) else 0  end as Tanggal_19,
            case when trim(HARI) = '20' Then sum(converse_qty) else 0  end as Tanggal_20,
            case when trim(HARI) = '21' Then sum(converse_qty) else 0  end as Tanggal_21,
            case when trim(HARI) = '22' Then sum(converse_qty) else 0  end as Tanggal_22,
            case when trim(HARI) = '23' Then sum(converse_qty) else 0  end as Tanggal_23,
            case when trim(HARI) = '24' Then sum(converse_qty) else 0  end as Tanggal_24,
            case when trim(HARI) = '25' Then sum(converse_qty) else 0  end as Tanggal_25,
            case when trim(HARI) = '26' Then sum(converse_qty) else 0  end as Tanggal_26,
            case when trim(HARI) = '27' Then sum(converse_qty) else 0  end as Tanggal_27,
            case when trim(HARI) = '28' Then sum(converse_qty) else 0  end as Tanggal_28,
            case when trim(HARI) = '29' Then sum(converse_qty) else 0  end as Tanggal_29,
            case when trim(HARI) = '30' Then sum(converse_qty) else 0  end as Tanggal_30,
            case when trim(HARI) = '31' Then sum(converse_qty)  else 0  end as Tanggal_31,
            0 THISMONTH,
            0 THISMONTHAMOUNT
            
      
      from
      (
      select lower_item_no,
             --quantity_base,
             ceil(sum(case when slip_type = 80 then slip_quantity else slip_quantity * -1 end /quantity_base)) as Converse_QTY,
             to_char(slip_date,'dd') hari
      
      from production_income r
      left outer join (

          select * from structure s
          inner join (
          select max(level_no) level_nos, upper_item_no upper from structure
          group by upper_item_no
          )ss on s.upper_item_no = ss.upper and s.level_no = ss.level_nos



	)s
      on r.item_no = s.upper_item_no
      where    to_char(slip_date,'MM') = (select to_char(sysdate,'MM')   from dual) and to_char(slip_date,'YYYY') = (select to_char(sysdate,'YYYY')   from dual)
      group by to_char(slip_date,'dd') ,lower_item_no
      )d
      group by lower_item_no,hari
)aa
group by ITEM1,
       LASTMONTH,
       LASTMONTHAMOUNT,
       THISMONTH,
       THISMONTHAMOUNT;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_PM_USAGE" ("ITEM1", "LASTMONTH", "LASTMONTHAMOUNT", "TANGGAL1", "TANGGAL2", "TANGGAL3", "TANGGAL4", "TANGGAL5", "TANGGAL6", "TANGGAL7", "TANGGAL8", "TANGGAL9", "TANGGAL0", "TANGGAL11", "TANGGAL12", "TANGGAL13", "TANGGAL14", "TANGGAL15", "TANGGAL16", "TANGGAL17", "TANGGAL18", "TANGGAL19", "TANGGAL20", "TANGGAL21", "TANGGAL22", "TANGGAL23", "TANGGAL24", "TANGGAL25", "TANGGAL26", "TANGGAL27", "TANGGAL28", "TANGGAL29", "TANGGAL30", "TANGGAL31", "THISMONTH", "THISMONTHAMOUNT") AS 
  select x.item as item1,
       x.LastMonth as lastmonth,
       x.lastmonthamount as lastmonthamount,
         nvl(y.tanggal1, 0) as tanggal1,
        nvl(y.tanggal2, 0) as tanggal2,
       nvl(y.tanggal3, 0) as tanggal3,
       nvl(y.tanggal4, 0) as tanggal4, 
       nvl(y.tanggal5, 0) as tanggal5,
       nvl(y.tanggal6, 0) as tanggal6,
       nvl(y.tanggal7, 0) as tanggal7,
       nvl(y.tanggal8, 0) as tanggal8,
       nvl(y.tanggal9, 0) as tanggal9,
       nvl(y.tanggall0, 0) as tanggal0,
       nvl(y.tanggall1, 0) as tanggal11,
       nvl(y.tanggall2, 0) as tanggal12,
       nvl(y.tanggall3, 0) as tanggal13,
       nvl(y.tanggall4, 0) as tanggal14,
       nvl(y.tanggall5, 0) as tanggal15,
       nvl(y.tanggall6, 0) as tanggal16,
       nvl(y.tanggall7, 0) as tanggal17,
       nvl(y.tanggall8, 0) as tanggal18,
       nvl(y.tanggall9, 0) as tanggal19,
       nvl(y.tanggal20, 0) as tanggal20,
       nvl(y.tanggal21, 0) as tanggal21,
       nvl(y.tanggal22, 0) as tanggal22,
       nvl(y.tanggal23, 0) as tanggal23,
       nvl(y.tanggal24, 0) as tanggal24,
       nvl(y.tanggal25, 0) as tanggal25,
       nvl(y.tanggal26, 0) as tanggal26,
       nvl(y.tanggal27, 0) as tanggal27,
       nvl(y.tanggal28, 0) as tanggal28,
       nvl(y.tanggal29, 0) as tanggal29,
       nvl(y.tanggal30, 0) as tanggal30,
       nvl(y.tanggal31, 0) as tanggal31,
       x.ThisMonth as thismonth,
       x.ThisMonthAmount as thismonthamount
from 
(
select i.item_no as item,this_month,--,slip_date, 
       sum(w.last_inventory) as LastMonth ,
       sum(i.standard_price  * w.last_inventory ) LastMonthAmount,
       sum(w.last_inventory) as LastMonth2 ,
       sum(i.standard_price  * w.last2_inventory ) LastMonthAmount2,
       sum(w.this_inventory) as ThisMonth,
       sum(i.standard_price * w.this_inventory ) as ThisMonthAmount
from item i
inner join whinventory w
on i.item_no = w.item_no
where  cost_subject_code = '136020' 
group by this_month,i.item_no
)x
left outer join 
(
select aa.item,
     
       sum(Tanggal_1) as Tanggal1,
       sum(Tanggal_2) as Tanggal2,
       sum(Tanggal_3) as Tanggal3,
       sum(Tanggal_4) as Tanggal4,
       sum(Tanggal_5) as Tanggal5,
       sum(Tanggal_6) as Tanggal6,
       sum(Tanggal_7) as Tanggal7,
       sum(Tanggal_8) as Tanggal8,
       sum(Tanggal_9) as Tanggal9,
       sum(Tanggal_10) as Tanggall0,
       sum(Tanggal_11) as Tanggall1,
       sum(Tanggal_12) as Tanggall2,
       sum(Tanggal_13) as Tanggall3,
       sum(Tanggal_14) as Tanggall4,
       sum(Tanggal_15) as Tanggall5,
       sum(Tanggal_16) as Tanggall6,
       sum(Tanggal_17) as Tanggall7,
       sum(Tanggal_18) as Tanggall8,
       sum(Tanggal_19) as Tanggall9,
       sum(Tanggal_20) as Tanggal20,
       sum(Tanggal_21) as Tanggal21,
       sum(Tanggal_22) as Tanggal22,
       sum(Tanggal_23) as Tanggal23,
       sum(Tanggal_24) as Tanggal24,
       sum(Tanggal_25) as Tanggal25,
       sum(Tanggal_26) as Tanggal26,
       sum(Tanggal_27) as Tanggal27,
       sum(Tanggal_28) as Tanggal28,
       sum(Tanggal_29) as Tanggal29,
       sum(Tanggal_30) as Tanggal30,
       sum(Tanggal_31) as Tanggal31
from 
(
select i.item_no as item,
      case when trim(TO_CHAR(slip_date, 'dd')) = '01' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity   end end) else 0  end as Tanggal_1,
      case when trim(TO_CHAR(slip_date, 'dd')) = '02' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_2,
      case when trim(TO_CHAR(slip_date, 'dd')) = '03' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_3,
      case when trim(TO_CHAR(slip_date, 'dd')) = '04' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_4,
      case when trim(TO_CHAR(slip_date, 'dd')) = '05' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_5,
      case when trim(TO_CHAR(slip_date, 'dd')) = '06' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_6,
      case when trim(TO_CHAR(slip_date, 'dd')) = '07' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_7,
      case when trim(TO_CHAR(slip_date, 'dd')) = '08' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_8,
      case when trim(TO_CHAR(slip_date, 'dd')) = '09' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_9,
      case when trim(TO_CHAR(slip_date, 'dd')) = '10' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_10,
      case when trim(TO_CHAR(slip_date, 'dd')) = '11' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_11,
      case when trim(TO_CHAR(slip_date, 'dd')) = '12' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_12,
      case when trim(TO_CHAR(slip_date, 'dd')) = '13' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_13,
      case when trim(TO_CHAR(slip_date, 'dd')) = '14' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_14,
      case when trim(TO_CHAR(slip_date, 'dd')) = '15' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_15,
      case when trim(TO_CHAR(slip_date, 'dd')) = '16' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_16,
      case when trim(TO_CHAR(slip_date, 'dd')) = '17' Then sum(case when table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1  else t.slip_quantity end end) else 0  end as Tanggal_17,
      case when trim(TO_CHAR(slip_date, 'dd')) = '18' Then sum(case when table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_18,
      case when trim(TO_CHAR(slip_date, 'dd')) = '19' Then sum(case when table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_19,
      case when trim(TO_CHAR(slip_date, 'dd')) = '20' Then sum(case when table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_20,
      case when trim(TO_CHAR(slip_date, 'dd')) = '21' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_21,
      case when trim(TO_CHAR(slip_date, 'dd')) = '22' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_22,
      case when trim(TO_CHAR(slip_date, 'dd')) = '23' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_23,
      case when trim(TO_CHAR(slip_date, 'dd')) = '24' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_24,
      case when trim(TO_CHAR(slip_date, 'dd')) = '25' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_25,
      case when trim(TO_CHAR(slip_date, 'dd')) = '26' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_26,
      case when trim(TO_CHAR(slip_date, 'dd')) = '27' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_27,
      case when trim(TO_CHAR(slip_date, 'dd')) = '28' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_28,
      case when trim(TO_CHAR(slip_date, 'dd')) = '29' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_29,
      case when trim(TO_CHAR(slip_date, 'dd')) = '30' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1 else t.slip_quantity  end end) else 0  end as Tanggal_30,
      case when trim(TO_CHAR(slip_date, 'dd')) = '31' Then sum(case when  table_position <> 1 then  case when in_out_flag <> 'I' Then  t.slip_quantity * -1  else t.slip_quantity end end) else 0  end as Tanggal_31

        
from item i
inner join transaction t
on i.item_no = t.item_no
inner join sliptype s
on s.slip_type = t.slip_type
where  t.cost_subject_code = '136020' and accounting_month = (select distinct this_month  from whinventory)
group by  i.item_no,slip_date--,slip_date--,i.item_no,i.standard_price

)aa group by aa.item

)y 
on x.item = y.item
--where x.item = '1120037'
--where x.item not in ('AFTER TP','HALF BATTERY','LABELED BATTERY','NAKED BATTERY','AFTER TP','PACKED BATTERY');
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_PM_VIEW" ("ITEM", "ITEM_NO", "KETERANGAN", "ITEM1", "LASTMONTH", "LASTMONTHAMOUNT", "TANGGAL1", "TANGGAL2", "TANGGAL3", "TANGGAL4", "TANGGAL5", "TANGGAL6", "TANGGAL7", "TANGGAL8", "TANGGAL9", "TANGGAL0", "TANGGAL11", "TANGGAL12", "TANGGAL13", "TANGGAL14", "TANGGAL15", "TANGGAL16", "TANGGAL17", "TANGGAL18", "TANGGAL19", "TANGGAL20", "TANGGAL21", "TANGGAL22", "TANGGAL23", "TANGGAL24", "TANGGAL25", "TANGGAL26", "TANGGAL27", "TANGGAL28", "TANGGAL29", "TANGGAL30", "TANGGAL31", "THISMONTH", "THISMONTHAMOUNT") AS 
  select zz.*,aa.* from(
select 'C.Actual DO' as Keterangan,cc.* from zvw_pm_usage cc
union 
select 'D.Actual Arrive' as Keterangan,dd.* from   zvw_pm_purchase dd 
union
select 'E.Stock' as Keterangan,ee.* from   zvw_pm_inventory ee
union 
select 'A.Usage Plan' as Keterangan,dd.* from  zvw_pm_plan dd
UNION 
select 'B.Theoritical' as Keterangan,bb.* from  zvw_pm_theoritical bb
)aa inner join (select item,item_no from item where item  not in ('MAGIC PEN','MAGIC INK','CCR AFTER PLATING','BATTERY AFTER WEIGHT CHECKER','A. DISK AFT DEGREASE','AFTER TP','HALF BATTERY','LABELED BATTERY','NAKED BATTERY','AFTER LABEL','AFTER TP','PACKED BATTERY')) zz 
on aa.item1 = zz.item_no
order by zz.item,zz.item_no, keterangan;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_PRODUCTION_DELAY" ("PACKAGE_TYPE", "WORK_ORDER", "CR_DATE", "ITEM_NO", "ITEM", "DESCRIPTION", "LABEL_TYPE_NAME", "BATT_TYPE", "QTY", "PLAN_QTY", "ACTUALQTY", "DELAYQTY") AS 
  select  zz.package_type,
        aa.*,
        nvl(bb.actualQty,0) as actualQty,
        aa.plan_qty -  nvl(bb.actualQty,0) as delayQty
        
from 
(
select work_order, cr_date, hr.item_no, it.item, it.description, lt.label_type_name, 
cl.class_1 ||''|| cl.class_2 as batt_type, hr.qty, sum(mps_qty) as plan_qty
from mps_header hr
inner join mps_details dt on hr.po_line_no = dt.po_line_no and hr.po_no = dt.po_no
inner join item it on hr.item_no = it.item_no
inner join label_type lt on it.label_type = lt.label_type_code
inner join class cl on it.class_code = cl.class_code
where dt.mps_date <= (select sysdate from dual) 
group by hr.item_no,it.item,it.description, lt.label_type_name, cl.class_1, cl.class_2, work_order,hr.qty,cr_date
)aa left outer join 
(
select wo_no,
       sum(slip_quantity) as  ActualQty
from production_income
--where to_char(slip_date,'MM') = '08' and to_char(slip_date,'YYYY') = 2017
group by wo_no
)bb on aa.work_order = bb.wo_no
left outer join ztb_item_pck zz
on aa.item_no = zz.item_no
where plan_qty > nvl(bb.actualQty,0) and qty > nvl(bb.actualQty,0);
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_PRODUCTION_MOVEUP" ("PACKAGE_TYPE", "WORK_ORDER", "CR_DATE", "ITEM_NO", "ITEM", "DESCRIPTION", "LABEL_TYPE_NAME", "BATT_TYPE", "QTY", "PLAN_QTY", "ACTUALQTY", "MOVEUPQTY") AS 
  select  zz.package_type,
        aa.*,
        nvl(bb.actualQty,0) as actualQty,
         nvl(bb.actualQty,0) - aa.plan_qty  as MoveUpQty
        
from 
(
select work_order, cr_date, hr.item_no, it.item, it.description, lt.label_type_name, 
cl.class_1 ||''|| cl.class_2 as batt_type, hr.qty, sum(mps_qty) as plan_qty
from mps_header hr
inner join mps_details dt on hr.po_line_no = dt.po_line_no and hr.po_no = dt.po_no
inner join item it on hr.item_no = it.item_no
inner join label_type lt on it.label_type = lt.label_type_code
inner join class cl on it.class_code = cl.class_code
where dt.mps_date <= (select sysdate  from dual) 
group by hr.item_no,it.item,it.description, lt.label_type_name, cl.class_1, cl.class_2, work_order,hr.qty,cr_date
)aa left outer join 
(
select wo_no,
       sum(case when slip_type  = 80 then slip_quantity else slip_quantity * -1 end) as  ActualQty
from production_income --where wo_no = 'FI/18-026-LR6G07NC-41' 
--where to_char(slip_date,'MM') = '08' and to_char(slip_date,'YYYY') = 2017
group by wo_no
)bb on aa.work_order = bb.wo_no
left outer join ztb_item_pck zz
on aa.item_no = zz.item_no left outer join
(
select work_order, cr_date, hr.item_no, it.item, it.description, lt.label_type_name, 
cl.class_1 ||''|| cl.class_2 as batt_type, hr.qty, sum(mps_qty) as next_qty
from mps_header hr
inner join mps_details dt on hr.po_line_no = dt.po_line_no and hr.po_no = dt.po_no
inner join item it on hr.item_no = it.item_no
inner join label_type lt on it.label_type = lt.label_type_code
inner join class cl on it.class_code = cl.class_code
where dt.mps_date > (select sysdate from dual) 
group by hr.item_no,it.item,it.description, lt.label_type_name, cl.class_1, cl.class_2, work_order,hr.qty,cr_date
)dd on aa.work_order = dd.work_order
where  nvl(bb.actualQty,0) > (  nvl(bb.actualQty,0) - aa.plan_qty)
and  nvl(bb.actualQty,0) - aa.plan_qty > 0 and next_qty > 0;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_PURCHASE_PLAN" ("TIPE", "ITEM_NO", "PURCHASE_PLAN_0", "PURCHASE_PLAN_1", "PURCHASE_PLAN_2", "PURCHASE_PLAN_3", "PURCHASE_PLAN_4", "PURCHASE_PLAN_5", "PURCHASE_PLAN_6", "PURCHASE_PLAN_7", "PURCHASE_PLAN_8", "PURCHASE_PLAN_9", "PURCHASE_PLAN_10", "PURCHASE_PLAN_11", "PURCHASE_PLAN_12", "PURCHASE_PLAN_13", "PURCHASE_PLAN_14", "PURCHASE_PLAN_15", "PURCHASE_PLAN_16", "PURCHASE_PLAN_17", "PURCHASE_PLAN_18", "PURCHASE_PLAN_19", "PURCHASE_PLAN_20", "PURCHASE_PLAN_21", "PURCHASE_PLAN_22", "PURCHASE_PLAN_23", "PURCHASE_PLAN_24", "PURCHASE_PLAN_25", "PURCHASE_PLAN_26", "PURCHASE_PLAN_27", "PURCHASE_PLAN_28", "PURCHASE_PLAN_29", "PURCHASE_PLAN_30", "PURCHASE_PLAN_31", "PURCHASE_PLAN_32", "PURCHASE_PLAN_33", "PURCHASE_PLAN_34", "PURCHASE_PLAN_35", "PURCHASE_PLAN_36", "PURCHASE_PLAN_37", "PURCHASE_PLAN_38", "PURCHASE_PLAN_39", "PURCHASE_PLAN_40", "PURCHASE_PLAN_41", "PURCHASE_PLAN_42", "PURCHASE_PLAN_43", "PURCHASE_PLAN_44", "PURCHASE_PLAN_45", "PURCHASE_PLAN_46", "PURCHASE_PLAN_47", "PURCHASE_PLAN_48", "PURCHASE_PLAN_49", "PURCHASE_PLAN_50", "PURCHASE_PLAN_51", "PURCHASE_PLAN_52", "PURCHASE_PLAN_53", "PURCHASE_PLAN_54", "PURCHASE_PLAN_55", "PURCHASE_PLAN_56", "PURCHASE_PLAN_57", "PURCHASE_PLAN_58", "PURCHASE_PLAN_59", "PURCHASE_PLAN_60", "PURCHASE_PLAN_61", "PURCHASE_PLAN_62", "PURCHASE_PLAN_63", "PURCHASE_PLAN_64", "PURCHASE_PLAN_65", "PURCHASE_PLAN_66", "PURCHASE_PLAN_67", "PURCHASE_PLAN_68", "PURCHASE_PLAN_69", "PURCHASE_PLAN_70", "PURCHASE_PLAN_71", "PURCHASE_PLAN_72", "PURCHASE_PLAN_73", "PURCHASE_PLAN_74", "PURCHASE_PLAN_75", "PURCHASE_PLAN_76", "PURCHASE_PLAN_77", "PURCHASE_PLAN_78", "PURCHASE_PLAN_79", "PURCHASE_PLAN_80", "PURCHASE_PLAN_81", "PURCHASE_PLAN_82", "PURCHASE_PLAN_83", "PURCHASE_PLAN_84", "PURCHASE_PLAN_85", "PURCHASE_PLAN_86", "PURCHASE_PLAN_87", "PURCHASE_PLAN_88", "PURCHASE_PLAN_89", "PURCHASE_PLAN_90") AS 
  select distinct b.tipe, b.item_no,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate,'yyyy-mm-dd')) as purchase_plan_0,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+1,'yyyy-mm-dd')) as purchase_plan_1,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+2,'yyyy-mm-dd')) as purchase_plan_2,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+3,'yyyy-mm-dd')) as purchase_plan_3,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+4,'yyyy-mm-dd')) as purchase_plan_4,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+5,'yyyy-mm-dd')) as purchase_plan_5,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+6,'yyyy-mm-dd')) as purchase_plan_6,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+7,'yyyy-mm-dd')) as purchase_plan_7,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+8,'yyyy-mm-dd')) as purchase_plan_8,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+9,'yyyy-mm-dd')) as purchase_plan_9,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+10,'yyyy-mm-dd')) as purchase_plan_10,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+11,'yyyy-mm-dd')) as purchase_plan_11,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+12,'yyyy-mm-dd')) as purchase_plan_12,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+13,'yyyy-mm-dd')) as purchase_plan_13,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+14,'yyyy-mm-dd')) as purchase_plan_14,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+15,'yyyy-mm-dd')) as purchase_plan_15,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+16,'yyyy-mm-dd')) as purchase_plan_16,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+17,'yyyy-mm-dd')) as purchase_plan_17,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+18,'yyyy-mm-dd')) as purchase_plan_18,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+19,'yyyy-mm-dd')) as purchase_plan_19,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+20,'yyyy-mm-dd')) as purchase_plan_20,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+21,'yyyy-mm-dd')) as purchase_plan_21,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+22,'yyyy-mm-dd')) as purchase_plan_22,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+23,'yyyy-mm-dd')) as purchase_plan_23,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+24,'yyyy-mm-dd')) as purchase_plan_24,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+25,'yyyy-mm-dd')) as purchase_plan_25,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+26,'yyyy-mm-dd')) as purchase_plan_26,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+27,'yyyy-mm-dd')) as purchase_plan_27,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+28,'yyyy-mm-dd')) as purchase_plan_28,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+29,'yyyy-mm-dd')) as purchase_plan_29,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+30,'yyyy-mm-dd')) as purchase_plan_30,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+31,'yyyy-mm-dd')) as purchase_plan_31,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+32,'yyyy-mm-dd')) as purchase_plan_32,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+33,'yyyy-mm-dd')) as purchase_plan_33,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+34,'yyyy-mm-dd')) as purchase_plan_34,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+35,'yyyy-mm-dd')) as purchase_plan_35,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+36,'yyyy-mm-dd')) as purchase_plan_36,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+37,'yyyy-mm-dd')) as purchase_plan_37,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+38,'yyyy-mm-dd')) as purchase_plan_38,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+39,'yyyy-mm-dd')) as purchase_plan_39,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+40,'yyyy-mm-dd')) as purchase_plan_40,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+41,'yyyy-mm-dd')) as purchase_plan_41,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+42,'yyyy-mm-dd')) as purchase_plan_42,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+43,'yyyy-mm-dd')) as purchase_plan_43,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+44,'yyyy-mm-dd')) as purchase_plan_44,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+45,'yyyy-mm-dd')) as purchase_plan_45,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+46,'yyyy-mm-dd')) as purchase_plan_46,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+47,'yyyy-mm-dd')) as purchase_plan_47,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+48,'yyyy-mm-dd')) as purchase_plan_48,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+49,'yyyy-mm-dd')) as purchase_plan_49,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+50,'yyyy-mm-dd')) as purchase_plan_50,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+51,'yyyy-mm-dd')) as purchase_plan_51,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+52,'yyyy-mm-dd')) as purchase_plan_52,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+53,'yyyy-mm-dd')) as purchase_plan_53,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+54,'yyyy-mm-dd')) as purchase_plan_54,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+55,'yyyy-mm-dd')) as purchase_plan_55,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+56,'yyyy-mm-dd')) as purchase_plan_56,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+57,'yyyy-mm-dd')) as purchase_plan_57,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+58,'yyyy-mm-dd')) as purchase_plan_58,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+59,'yyyy-mm-dd')) as purchase_plan_59,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+60,'yyyy-mm-dd')) as purchase_plan_60,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+61,'yyyy-mm-dd')) as purchase_plan_61,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+62,'yyyy-mm-dd')) as purchase_plan_62,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+63,'yyyy-mm-dd')) as purchase_plan_63,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+64,'yyyy-mm-dd')) as purchase_plan_64,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+65,'yyyy-mm-dd')) as purchase_plan_65,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+66,'yyyy-mm-dd')) as purchase_plan_66,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+67,'yyyy-mm-dd')) as purchase_plan_67,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+68,'yyyy-mm-dd')) as purchase_plan_68,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+69,'yyyy-mm-dd')) as purchase_plan_69,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+70,'yyyy-mm-dd')) as purchase_plan_70,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+71,'yyyy-mm-dd')) as purchase_plan_71,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+72,'yyyy-mm-dd')) as purchase_plan_72,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+73,'yyyy-mm-dd')) as purchase_plan_73,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+74,'yyyy-mm-dd')) as purchase_plan_74,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+75,'yyyy-mm-dd')) as purchase_plan_75,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+76,'yyyy-mm-dd')) as purchase_plan_76,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+77,'yyyy-mm-dd')) as purchase_plan_77,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+78,'yyyy-mm-dd')) as purchase_plan_78,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+79,'yyyy-mm-dd')) as purchase_plan_79,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+80,'yyyy-mm-dd')) as purchase_plan_80,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+81,'yyyy-mm-dd')) as purchase_plan_81,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+82,'yyyy-mm-dd')) as purchase_plan_82,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+83,'yyyy-mm-dd')) as purchase_plan_83,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+84,'yyyy-mm-dd')) as purchase_plan_84,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+85,'yyyy-mm-dd')) as purchase_plan_85,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+86,'yyyy-mm-dd')) as purchase_plan_86,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+87,'yyyy-mm-dd')) as purchase_plan_87,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+88,'yyyy-mm-dd')) as purchase_plan_88,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+89,'yyyy-mm-dd')) as purchase_plan_89,
(select nvl(sum(pod.qty),0) from po_details pod where pod.item_no=b.item_no AND to_char(eta,'yyyy-mm-dd')=to_char(sysdate+90,'yyyy-mm-dd')) as purchase_plan_90
from ztb_config_rm b
left join po_details a on b.item_no=a.item_no;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_RAW_MATERIAL" ("ITEM_NO", "TIPE", "MIN_DAYS", "MAX_DAYS", "REMARK", "DEVIDED", "DAILY_NEEDS", "KETERANGAN", "ITEM1", "LASTMONTH", "LASTMONTHAMOUNT", "TANGGAL1", "TANGGAL2", "TANGGAL3", "TANGGAL4", "TANGGAL5", "TANGGAL6", "TANGGAL7", "TANGGAL8", "TANGGAL9", "TANGGAL0", "TANGGAL11", "TANGGAL12", "TANGGAL13", "TANGGAL14", "TANGGAL15", "TANGGAL16", "TANGGAL17", "TANGGAL18", "TANGGAL19", "TANGGAL20", "TANGGAL21", "TANGGAL22", "TANGGAL23", "TANGGAL24", "TANGGAL25", "TANGGAL26", "TANGGAL27", "TANGGAL28", "TANGGAL29", "TANGGAL30", "TANGGAL31", "THISMONTH", "THISMONTHAMOUNT") AS 
  select zz.*,aa.* from(
select 'a.Usage' as Keterangan,aa.* from zvw_inventory_usage aa
union 
select 'b.purchase' as Keterangan,bb.* from zvw_inventory_purchase bb
union
select 'd.Stock' as Keterangan,cc.* from zvw_inventory_analysist  cc
union 
select 'c.Mutasi' as Keterangan,dd.* from zvw_material_item_view dd
)aa inner join ztb_config_rm zz 
on aa.item1 = zz.item_no
order by tipe,item1, keterangan;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_RAW_MATERIAL2" ("ITEM", "ITEM_NO", "KETERANGAN", "ITEM1", "LASTMONTH", "LASTMONTHAMOUNT", "TANGGAL1", "TANGGAL2", "TANGGAL3", "TANGGAL4", "TANGGAL5", "TANGGAL6", "TANGGAL7", "TANGGAL8", "TANGGAL9", "TANGGAL0", "TANGGAL11", "TANGGAL12", "TANGGAL13", "TANGGAL14", "TANGGAL15", "TANGGAL16", "TANGGAL17", "TANGGAL18", "TANGGAL19", "TANGGAL20", "TANGGAL21", "TANGGAL22", "TANGGAL23", "TANGGAL24", "TANGGAL25", "TANGGAL26", "TANGGAL27", "TANGGAL28", "TANGGAL29", "TANGGAL30", "TANGGAL31", "THISMONTH", "THISMONTHAMOUNT") AS 
  select zz.*,aa.* from(
select 'A.Usage' as Keterangan,aa.* from zvw_inventory_usage aa
union 
select 'B.Purchase' as Keterangan,bb.* from zvw_inventory_purchase bb
union
select 'D.Stock' as Keterangan,cc.* from zvw_inventory_analysist  cc
union 
select 'C.Mutation' as Keterangan,dd.* from zvw_material_item_view dd
)aa inner join (select item,item_no from item where item  not in ('MAGIC PEN','MAGIC INK','CHEMICAL - OTHERS','CCR AFTER PLATING','BATTERY AFTER WEIGHT CHECKER','A. DISK AFT DEGREASE','AFTER TP','HALF BATTERY','LABELED BATTERY','NAKED BATTERY','AFTER TP','PACKED BATTERY')) zz 
on aa.item1 = zz.item_no
order by zz.item,zz.item_no, keterangan;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_SALES_REPORT" ("SO_NO", "DO_NO", "CUSTOMER_PO_NO", "ITEM_NO", "ITEM", "DESCRIPTION", "TYPE_BATERY", "QTY", "UNIT_PL", "CURR_MARK", "U_PRICE", "AMOUNT", "STANDARD_PRICE", "FINAL_DESTINATION", "TRADE_TERM", "PORT_LOADING", "ETD", "ETA", "BL_DATE", "EX_FACT", "CUSTOMER", "COMPANY") AS 
  select so_no,
         do_no,
       case when substr(customer_po_no, 0, 1) = '0' then ''''||customer_po_no else customer_po_no end customer_po_no,
       item.item_no,
       item.item,
       item.description,
       cls.class_1||cls.class_2 as type_Batery,
       do_so.qty,
       unt.unit_pl,
       cry.curr_mark,
       ds.u_price,
       do_so.qty * ds.u_price amount,
       item.standard_price,
       dh.final_destination,
       dh.trade_term,
       dh.port_loading,
       dh.etd,
       dh.eta,
       dh.bl_Date,
       dh.inv_date as ex_fact,
       case when do_no like '%RPLC%' then '14. ITEM SAMPLE' else item.item_remark1 end as Customer,
       com.company
from do_so
inner join item on do_so.item_no = item.item_no
inner join do_header dh on do_so.do_no = dh.do_no
inner join do_details ds on do_so.do_no  = ds.do_no and do_so.line_no = ds.line_no
left outer join class cls on cls.class_code = item.class_code
left outer join unit unt on unt.unit_code = item.uom_q
left outer join currency cry on cry.curr_code = dh.curr_code
left outer join company com on com.company_code = dh.customer_code;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_SEMI_BAT" ("ID_PRINT", "TIPE", "QTY", "KET") AS 
  select aa.id_print,tipe||'-'||aging1 Tipe, qty_heat QTY,'HEAT' Ket 
                                        from ztb_wip_bat aa
                                        inner join (select bb.id_print,aging  aging1,
                                                            replace(replace(substr(assy_line, 1, instr(assy_line, '#') -1)||replace(replace(cell_type,'C01','C1'),'(T)'),'LR06','LR6'),'LR01','LR1') tipe,
                                                            sum(qty_act_perpallet) qty,
                                                            max(tanggal_produksi) tgl  
                                                     from  ztb_assy_kanban bb
                                                     left outer join (select id_print, 
                                                    SUBSTR(id_pallet, INSTR(id_pallet, '-')+1,length(id_pallet)) aging 
                                                     from ztb_assy_heating where position = 1)zz on bb.id_print = zz.id_print
                                                     --where tanggal_produksi > (select sysdate - 30 from dual)
                                                     group by replace(replace(substr(assy_line, 1, instr(assy_line, '#') -1)||replace(replace(cell_type,'C01','C1'),'(T)'),'LR06','LR6'),'LR01','LR1') ,bb.id_print,aging) bb
                                        on aa.id_print = bb.id_print
                                        where qty_heat > 0
UNION ALL
select aa.id_print,tipe||'-'||aging1, qty_aging,'AGING' 
                                        from ztb_wip_bat aa
                                        inner join (select bb.id_print,aging  aging1,
                                                            replace(replace(substr(assy_line, 1, instr(assy_line, '#') -1)||replace(replace(cell_type,'C01','C1'),'(T)'),'LR06','LR6'),'LR01','LR1') tipe,
                                                            sum(qty_act_perpallet) qty,
                                                            max(tanggal_produksi) tgl  
                                                     from  ztb_assy_kanban bb
                                                     left outer join (select id_print, 
                                                    SUBSTR(id_pallet, INSTR(id_pallet, '-')+1,length(id_pallet)) aging 
                                                     from ztb_assy_heating where position = 2)zz on bb.id_print = zz.id_print
                                                     --where tanggal_produksi > (select sysdate - 30 from dual)
                                                     group by replace(replace(substr(assy_line, 1, instr(assy_line, '#') -1)||replace(replace(cell_type,'C01','C1'),'(T)'),'LR06','LR6'),'LR01','LR1') ,bb.id_print,aging) bb
                                        on aa.id_print = bb.id_print
                                        where qty_aging > 0
UNION ALL
select aa.id_print,tipe||'-'||aging1, qty_label,'BEFORE LABEL' 
                                        from ztb_wip_bat aa
                                        inner join (select bb.id_print,aging  aging1,
                                                            replace(replace(substr(assy_line, 1, instr(assy_line, '#') -1)||replace(replace(cell_type,'C01','C1'),'(T)'),'LR06','LR6'),'LR01','LR1') tipe,
                                                            sum(qty_act_perpallet) qty,
                                                            max(tanggal_produksi) tgl  
                                                     from  ztb_assy_kanban bb
                                                     left outer join (select id_print, 
                                                     SUBSTR(id_pallet, INSTR(id_pallet, '-')+1,length(id_pallet)) aging 
                                                     from ztb_assy_heating where position = 2)zz on bb.id_print = zz.id_print
                                                     --where tanggal_produksi > (select sysdate - 30 from dual)
                                                     group by replace(replace(substr(assy_line, 1, instr(assy_line, '#') -1)||replace(replace(cell_type,'C01','C1'),'(T)'),'LR06','LR6'),'LR01','LR1') ,bb.id_print,aging) bb
                                        on aa.id_print = bb.id_print
                                        and tgl > (select sysdate - 60 from dual) and  qty_label > 0
UNION ALL
select aa.id_print,tipe||'-'||aging1, qty_suspend,'SUSPENDED' 
                                        from ztb_wip_bat aa
                                        inner join (select bb.id_print,aging  aging1,
                                                            replace(replace(substr(assy_line, 1, instr(assy_line, '#') -1)||replace(replace(cell_type,'C01','C1'),'(T)'),'LR06','LR6'),'LR01','LR1') tipe,
                                                            sum(qty_act_perpallet) qty,
                                                            max(tanggal_produksi) tgl  
                                                     from  ztb_assy_kanban bb
                                                     left outer join (select id_print, 
                                                    SUBSTR(id_pallet, INSTR(id_pallet, '-')+1,length(id_pallet)) aging 
                                                     from ztb_assy_heating where position = 2)zz on bb.id_print = zz.id_print
                                                    
                                                     group by replace(replace(substr(assy_line, 1, instr(assy_line, '#') -1)||replace(replace(cell_type,'C01','C1'),'(T)'),'LR06','LR6'),'LR01','LR1') ,bb.id_print,aging) bb
                                        on aa.id_print = bb.id_print
                                        where qty_suspend > 0;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_SEMI_BAT_LABEL" ("ID_PRINT", "TIPE", "QTY_LABEL", "KET") AS 
  select aa.id_print,tipe||'-'||aging1 tipe, qty_label,'BEFORE LABEL' ket
                                        from ztb_wip_bat aa
                                        inner join (select bb.id_print,aging  aging1,
                                                            replace(replace(substr(assy_line, 1, instr(assy_line, '#') -1)||replace(replace(cell_type,'C01','C1'),'(T)'),'LR06','LR6'),'LR01','LR1') tipe,
                                                            sum(qty_act_perpallet) qty,
                                                            max(tanggal_produksi) tgl  
                                                     from  ztb_assy_kanban bb
                                                     left outer join (select id_print, 
                                                     SUBSTR(id_pallet, INSTR(id_pallet, '-')+1,length(id_pallet)) aging 
                                                     from ztb_assy_heating where position = 2)zz on bb.id_print = zz.id_print
                                                     where tanggal_produksi > (select sysdate - 30 from dual)
                                                     group by replace(replace(substr(assy_line, 1, instr(assy_line, '#') -1)||replace(replace(cell_type,'C01','C1'),'(T)'),'LR06','LR6'),'LR01','LR1') ,bb.id_print,aging) bb
                                        on aa.id_print = bb.id_print
                                        and tgl > (select sysdate - 3 from dual) and  qty_label > 0;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_SO_MONITOR" ("CUSTOMER_PO_NO", "LINE_NO", "ITEM_NO", "DESCRIPTION", "GRADE_CODE", "TYPE", "INV_NO", "INV_LINE_NO", "WO", "ORDER_QTY", "EX_FACTORY_QTY", "BL_INV") AS 
  select r.customer_po_no,s.line_no,s.item_no,it.description, GRADE_CODE,
case when trim(it.class_code) like '1112%' then 'LR6' else case when it.class_code like '1113%' Then 'LR03' else case when it.class_Code = '111111' then 'LR1' END  END END as Type,

ii.inv_no, 
inv_line_no,
CUSTOMER_PO_NO || '-'|| case when trim(it.class_code) like '1112%' then 'LR6' else case when it.class_code like '1113%' Then 'LR03' else case when it.class_Code = '111111' then 'LR1' END  END END ||GRADE_CODE||'-'||LINE_NO  as WO,
s.qty as Order_Qty,
nvl(ii.qty,0) as ex_Factory_QTY,
case when doh.inv_no is null then 0 else nvl(ii.qty,0) end  as BL_Inv
--(select nvl(sum(qty),0) from indication where commit_date is not null and indication.so_no = s.so_no and indication.so_line_no = s.line_no) as Ex_Factory_Qty 
from so_header r
inner join so_details s
on s.so_no = r.so_no
inner join item it
on it.item_no = s.item_no
left outer join (select nvl(sum(qty),0) as qty, so_no,so_line_no, indication.inv_no,inv_line_no from indication where commit_date is not null group by so_no,so_line_no,inv_no,inv_line_no )  ii 
on s.so_no = ii.so_no and s.line_no = ii.so_line_no
left outer join (select inv_no from do_header where BL_date is not NULL  ) doh
on ii.inv_no = doh.inv_no
where customer_po_no in (
select po_no
from mps_header
where status = 'FM');
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_SUMMARY_ASY_PLAN" ("CELL", "WORKINGDAYS", "DAILYPRODUCTION", "TOTAL", "TAHUN", "BULAN") AS 
  select aa.cell,
       workingdays,
       cast(total/workingdays as int) DailyProduction,
       total,
       aa.tahun,
       aa.bulan
from 
(
select substr(assy_line, 0, 4) cell,bulan,tahun,
       sum(qty) total

from ztb_assy_plan where used = 1
group by substr(assy_line, 0, 4),bulan,tahun
)aa 
inner join (
select cell,count(tanggal) as WorkingDays,bulan,tahun from 
(
select distinct substr(assy_line, 0, 4) cell,tanggal,bulan,tahun
from ztb_assy_plan where used = 1 
)a group by cell,bulan,tahun
)bb on aa.cell = bb.cell  and aa.bulan = bb.bulan  and aa.tahun = bb.tahun ;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_SUSPEND_LIST" ("ID_PRINT", "OK_QTY", "NG_QTY", "ASSY_LINE", "CELL_TYPE", "LOT_DATE", "PROBLEM", "STATUS", "UNSUSPEND_DATE", "AGING_DATE", "HEATING_DATE", "SUSPEND_DATE", "QTY_SUSPEND", "SUSPEND_DATE_1") AS 
  select id_print,ok_qty,ng_qty,assy_line,cell_type,lot_date,problem,status,unsuspend_Date,max(aging) Aging_date,max(heating) heating_date, max(suspend_date) Suspend_Date,qty_suspend,suspend_date_1

from(
select assy_line,cell_type,dd.suspend_date suspend_date_1,
lot_date, bb.id_print,problem,dd.status,ok_qty,ng_qty,unsuspend_Date,
case when position = 1 then upto_date end, 
        case when position = 2 then upto_date end aging, 
         case when position = 3 then upto_date end heating, 
          case when position = 4 then upto_date end suspend_date, 
          case when position = 4 then remark end remark, 
          qty_suspend
from ztb_assy_heating aa
inner join ztb_wip_bat bb
on aa.id_print = bb.id_print 
inner join (select  assy_line,cell_type, max(tanggal_produksi) lot_date,sum(qty_act_perpallet),id_print from ztb_assy_kanban group by  assy_line,cell_type,id_print)cc
on aa.id_print = cc.id_print 
inner join ztb_qc_data  dd
 on aa.id_print = dd.id_print
 )
group by assy_line,cell_type,lot_date,id_print,qty_suspend,problem,ok_qty,ng_qty,status,unsuspend_Date,suspend_date_1;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_TEST" ("PACKAGING_TYPE", "WORK_ORDER", "PO_NO", "PO_LINE_NO", "ITEM_NO", "BRAND", "DATE_CODE", "STATUS", "BATERY_TYPE", "CELL_GRADE", "CUSTOMER_GROUP", "QTY_ORDER", "CR_DATE", "U_PRICE", "CURR", "CUSTOMER_CODE", "SALES_AMOUNT", "TERM", "COUNTRY_CODE", "COMPANY", "QTY_PRODUKSI", "WO_NO", "COMMIT_DATE", "INV_NO", "INV_LINE_NO", "QTY", "CUSTOMER_PO_NO", "CPL", "BL_DATE", "INV_NO_1", "QTY_FORECAST", "QTY_GUDANG", "QTY_IN_TRANSIT", "ACTUAL_SALES", "SALES_MONTH") AS 
  select z.*,pi.*,cc.*,dh.*,
      
      case when z.qty_order - nvl(qty_produksi,0) < 0 then 0 else z.qty_order - nvl(qty_produksi,0) end as Qty_Forecast,
      case when bl_date is null and commit_date is null and qty_produksi is not null then nvl(cc.qty,qty_produksi) else 0 end as Qty_Gudang,
      case when bl_date is null and commit_date is not null and qty_produksi is not null then cc.qty else 0 end as Qty_in_transit,
      case when bl_date is not null and commit_date is not null and qty_produksi is not null then cc.qty else 0 end as Actual_sales,
      case when bl_date is not null and commit_date is not null and qty_produksi is not null then dh.bl_date end as sales_month
from zvw_forecast_1 z
left outer join (select sum(case when slip_type = 80 then slip_quantity else slip_quantity *-1 end) as Qty_Produksi,wo_no from production_income group by wo_no )pi
on z.work_order = pi.wo_no
left outer join 
(
select i.commit_date,inv_no,inv_line_no, i.qty,a.customer_po_no,cast(b.customer_po_line_no as integer) as cpl  from so_header a
inner join so_details b
on a.so_no = b.so_no
left outer join indication i
on i.so_no = b.so_no and i.so_line_no = b.line_no
)cc on trim(cc.customer_po_no)= trim(z.po_no)  and trim(cc.cpl) = trim(z.po_line_no)
left outer join (select bl_date, inv_no as inv_no_1 from do_header)dh on cc.inv_no = dh.inv_no_1
where item_no <> '645845' --and  work_order like 'FI/17-049%'
order by z.packaging_type, z.work_order;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_WH_IN_OUT" ("ITEM_NO", "DESCRIPTION", "QTY", "UOM", "PALLET", "RACK") AS 
  select  aa.item_no, description ,masuk-nvl(keluar,0) as Qty,(select unit from unit where unit.unit_code  = item.uom_q) as UOM,AA.pallet,aa.rack 
from (select nvl(SUM(nvl(qty,0)),0) as Masuk, item_no, rack,pallet from ztb_wh_in_det group by item_no, rack,pallet) aa 
left outer join (select nvl(SUM(nvl(qty,0)),0) as keluar, item_no, rack,pallet from ztb_wh_out_det group by item_no, rack ,pallet)b 
on aa.item_no = b.item_no and aa.rack = b.rack  and aa.pallet = b.pallet
left outer join item on aa.item_no = item.item_no
order by aa.item_no,aa.pallet;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_WH_KANBAN_TRANS" ("ID", "ITEM_NO", "QTY", "FLAG", "SLIP_NO", "WO_NO", "PLT_NO") AS 
  select a.id, a.item_no,a.qty, a.flag,a.slip_no, b.wo_no, b.plt_no from ztb_wh_kanban_trans a
left outer join ztb_m_plan b on a.id = b.id;
 

  CREATE OR REPLACE FORCE VIEW "PORDER"."ZVW_WIP_PACKING_MAT" ("ID", "WO_NO", "PLT_NO", "STARTCHECKER", "ITEM_NO", "QTY_PROD", "MATERIAL_ITEM", "QTY", "DESCRIPTION") AS 
  select aa.*,s.item_no Material_Item,s.Qty,i.description from
(
select aa.id,bb.wo_no,bb.plt_no,aa.startdate StartChecker,bb.item_no, bb.qty_prod from ztb_kanban aa
inner join  ztb_m_plan bb on aa.id = bb.id
)aa
left outer join
(
select bb.wo_no,bb.plt_no from production_income aa
inner join  ztb_p_plan bb on aa.slip_no = cast(bb.id as varchar(20))
)bb
on aa.wo_no = bb.wo_no and aa.plt_no = bb.plt_no
left outer join ztb_wh_kanban_trans   s
on aa.id = s.id
left outer join item i
on s.item_no = i.item_no
where bb.wo_no is null and substr(StartChecker, 0, 7) > '2018/02'
order by StartChecker;
 
