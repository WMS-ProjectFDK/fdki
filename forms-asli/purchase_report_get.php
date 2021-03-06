<?php
	session_start();
	include("../connect/conn.php");
	include("../connect/conn_spareparts.php");

	$cmbR = isset($_REQUEST['cmbR']) ? strval($_REQUEST['cmbR']) : '';
	$dt_A = isset($_REQUEST['dt_A']) ? strval($_REQUEST['dt_A']) : '';
	$dt_Z = isset($_REQUEST['dt_Z']) ? strval($_REQUEST['dt_Z']) : '';
	
	if ($cmbR == 1){
	  $sql = "select supplier_code, Nama, Stock_Subject,
	    case when curr = 'US' then amount_original else 0 end US,
	    case when curr = 'JP' then amount_original else 0 end JP,
	    case when curr = 'RP' then amount_original else 0 end RP,
	    case when curr = 'SG' then amount_original else 0 end SGD,
	    case when curr = 'US' then amount_in_us else 0 end US_in_US,
	    case when curr = 'JP' then amount_in_us else 0 end JP_in_US,
	    case when curr = 'RP' then amount_in_us else 0 end RP_in_US,
	    case when curr = 'SG' then amount_in_us else 0 end SGD_in_US,
      	pdays,pdesc
	    from 
	    (select h.supplier_code, company.company Nama, case when trim(ss.stock_subject) = 'Wooden Pallet' then 'Packing Materials' else trim(ss.stock_subject) end stock_subject,
	      c.curr_acc_mark curr, sum(d.amt_o) amount_original, sum(d.amt_l) amount_in_us,
          company.pdays, company.pdesc
	      from gr_header h
	      inner join gr_details d on h.gr_no = d.gr_no
	      inner join item i on d.item_no = i.item_no
	      inner join stock_subject ss on i.stock_subject_code = ss.stock_subject_code
	      inner join currency c on h.curr_code = c.curr_code
	      left outer join company on h.supplier_code = company.company_code
	      where gr_date between to_date('$dt_A','YYYY-MM-DD') AND to_date('$dt_Z','YYYY-MM-DD')
	      group by  company.company,h.supplier_code,c.curr_acc_mark, 
	      case when trim(ss.stock_subject) = 'Wooden Pallet' then 'Packing Materials' else trim(ss.stock_subject) end,
          company.pdays, company.pdesc
	    ) 
	    order by  Stock_Subject,supplier_code ";

	  $sql_parts = "select supplier_code, Nama, Stock_Subject,
	    case when curr = 'US' then amount_original else 0 end US,
	    case when curr = 'JP' then amount_original else 0 end JP,
	    case when curr = 'RP' then amount_original else 0 end RP,
	    case when curr = 'SGD' then amount_original else 0 end SGD,
	    case when curr = 'US' then amount_in_us else 0 end US_in_US,
	    case when curr = 'JP' then amount_in_us else 0 end JP_in_US,
	    case when curr = 'RP' then amount_in_us else 0 end RP_in_US,
	    case when curr = 'SGD' then amount_in_us else 0 end SGD_in_US,
      	pdays,pdesc
	    from 
	    (select h.supplier_code, company.company Nama, case when trim(ss.stock_subject) = 'Wooden Pallet' then 'Packing Materials' else trim(ss.stock_subject) end stock_subject,
	      c.curr_acc_mark curr, sum(d.amt_o) amount_original, sum(d.amt_l) amount_in_us,
          company.pdays, company.pdesc
	      from gr_header h
	      inner join gr_details d on h.gr_no = d.gr_no
	      inner join item i on d.item_no = i.item_no
	      inner join stock_subject ss on i.stock_subject_code = ss.stock_subject_code
	      inner join currency c on h.curr_code = c.curr_code
	      left outer join company on h.supplier_code = company.company_code
	      where gr_date between to_date('$dt_A','YYYY-MM-DD') AND to_date('$dt_Z','YYYY-MM-DD')
	      group by  company.company,h.supplier_code,c.curr_acc_mark, 
	      case when trim(ss.stock_subject) = 'Wooden Pallet' then 'Packing Materials' else trim(ss.stock_subject) end,
          company.pdays, company.pdesc
	    ) 
	    order by  Stock_Subject,supplier_code ";
	}elseif($cmbR == 2){
	  $sql = "select supplier_code, Nama, Stock_Subject, SUM(amount_in_us) TOTAL,
	    SUM(Jan_US) Jan_US, SUM(Jan_JP) Jan_JP, SUM(Jan_RP) Jan_RP, SUM(Jan_SG) Jan_SG, 
	    SUM(Feb_US) Feb_US, SUM(Feb_JP) Feb_JP, SUM(Feb_RP) Feb_RP, SUM(Feb_SG) Feb_SG, 
	    SUM(Mar_US) Mar_US, SUM(Mar_JP) Mar_JP, SUM(Mar_RP) Mar_RP, SUM(Mar_SG) Mar_SG, 
	    SUM(Apr_US) Apr_US, SUM(Apr_JP) Apr_JP, SUM(Apr_RP) Apr_RP, SUM(Apr_SG) Apr_SG, 
	    SUM(May_US) May_US, SUM(May_JP) May_JP, SUM(May_RP) May_RP, SUM(May_SG) May_SG, 
	    SUM(Jun_US) Jun_US, SUM(Jun_JP) Jun_JP, SUM(Jun_RP) Jun_RP, SUM(Jun_SG) Jun_SG, 
	    SUM(Jul_US) Jul_US, SUM(Jul_JP) Jul_JP, SUM(Jul_RP) Jul_RP, SUM(Jul_SG) Jul_SG, 
	    SUM(Aug_US) Aug_US, SUM(Aug_JP) Aug_JP, SUM(Aug_RP) Aug_RP, SUM(Aug_SG) Aug_SG, 
	    SUM(Sep_US) Sep_US, SUM(Sep_JP) Sep_JP, SUM(Sep_RP) Sep_RP, SUM(Sep_SG) Sep_SG, 
	    SUM(Oct_US) Oct_US, SUM(Oct_JP) Oct_JP, SUM(Oct_RP) Oct_RP, SUM(Oct_SG) Oct_SG, 
	    SUM(Nov_US) Nov_US, SUM(Nov_JP) Nov_JP, SUM(Nov_RP) Nov_RP, SUM(Nov_SG) Nov_SG, 
	    SUM(Dec_US) Dec_US, SUM(Dec_JP) Dec_JP, SUM(Dec_RP) Dec_RP, SUM(Dec_SG) Dec_SG,
	    pdays,pdesc 
	    FROM (select supplier_code, Nama, Stock_Subject, amount_in_us,
	          case when bulan = '01' AND curr = 'US' then amount_in_us else 0 end Jan_US,
	          case when bulan = '01' AND curr = 'JP' then amount_in_us else 0 end Jan_JP,
	          case when bulan = '01' AND curr = 'RP' then amount_in_us else 0 end Jan_RP,
	          case when bulan = '01' AND curr = 'SG' then amount_in_us else 0 end Jan_SG,
	          case when bulan = '02' AND curr = 'US' then amount_in_us else 0 end Feb_US,
	          case when bulan = '02' AND curr = 'JP' then amount_in_us else 0 end Feb_JP,
	          case when bulan = '02' AND curr = 'RP' then amount_in_us else 0 end Feb_RP,
	          case when bulan = '02' AND curr = 'SG' then amount_in_us else 0 end Feb_SG,
	          case when bulan = '03' AND curr = 'US' then amount_in_us else 0 end Mar_US,
	          case when bulan = '03' AND curr = 'JP' then amount_in_us else 0 end Mar_JP,
	          case when bulan = '03' AND curr = 'RP' then amount_in_us else 0 end Mar_RP,
	          case when bulan = '03' AND curr = 'SG' then amount_in_us else 0 end Mar_SG,
	          case when bulan = '04' AND curr = 'US' then amount_in_us else 0 end Apr_US,
	          case when bulan = '04' AND curr = 'JP' then amount_in_us else 0 end Apr_JP,
	          case when bulan = '04' AND curr = 'RP' then amount_in_us else 0 end Apr_RP,
	          case when bulan = '04' AND curr = 'SG' then amount_in_us else 0 end Apr_SG,
	          case when bulan = '05' AND curr = 'US' then amount_in_us else 0 end May_US,
	          case when bulan = '05' AND curr = 'JP' then amount_in_us else 0 end May_JP,
	          case when bulan = '05' AND curr = 'RP' then amount_in_us else 0 end May_RP,
	          case when bulan = '05' AND curr = 'SG' then amount_in_us else 0 end May_SG,
	          case when bulan = '06' AND curr = 'US' then amount_in_us else 0 end Jun_US,
	          case when bulan = '06' AND curr = 'JP' then amount_in_us else 0 end Jun_JP,
	          case when bulan = '06' AND curr = 'RP' then amount_in_us else 0 end Jun_RP,
	          case when bulan = '06' AND curr = 'SG' then amount_in_us else 0 end Jun_SG,
	          case when bulan = '07' AND curr = 'US' then amount_in_us else 0 end Jul_US,
	          case when bulan = '07' AND curr = 'JP' then amount_in_us else 0 end Jul_JP,
	          case when bulan = '07' AND curr = 'RP' then amount_in_us else 0 end Jul_RP,
	          case when bulan = '07' AND curr = 'SG' then amount_in_us else 0 end Jul_SG,
	          case when bulan = '08' AND curr = 'US' then amount_in_us else 0 end Aug_US,
	          case when bulan = '08' AND curr = 'JP' then amount_in_us else 0 end Aug_JP,
	          case when bulan = '08' AND curr = 'RP' then amount_in_us else 0 end Aug_RP,
	          case when bulan = '08' AND curr = 'SG' then amount_in_us else 0 end Aug_SG,
	          case when bulan = '09' AND curr = 'US' then amount_in_us else 0 end Sep_US,
	          case when bulan = '09' AND curr = 'JP' then amount_in_us else 0 end Sep_JP,
	          case when bulan = '09' AND curr = 'RP' then amount_in_us else 0 end Sep_RP,
	          case when bulan = '09' AND curr = 'SG' then amount_in_us else 0 end Sep_SG,
	          case when bulan = '10' AND curr = 'US' then amount_in_us else 0 end Oct_US,
	          case when bulan = '10' AND curr = 'JP' then amount_in_us else 0 end Oct_JP,
	          case when bulan = '10' AND curr = 'RP' then amount_in_us else 0 end Oct_RP,
	          case when bulan = '10' AND curr = 'SG' then amount_in_us else 0 end Oct_SG,
	          case when bulan = '11' AND curr = 'US' then amount_in_us else 0 end Nov_US,
	          case when bulan = '11' AND curr = 'JP' then amount_in_us else 0 end Nov_JP,
	          case when bulan = '11' AND curr = 'RP' then amount_in_us else 0 end Nov_RP,
	          case when bulan = '11' AND curr = 'SG' then amount_in_us else 0 end Nov_SG,
	          case when bulan = '12' AND curr = 'US' then amount_in_us else 0 end Dec_US,
	          case when bulan = '12' AND curr = 'JP' then amount_in_us else 0 end Dec_JP,
	          case when bulan = '12' AND curr = 'RP' then amount_in_us else 0 end Dec_RP,
	          case when bulan = '12' AND curr = 'SG' then amount_in_us else 0 end Dec_SG,
	          pdays,pdesc
	          from 
	          (select h.supplier_code, company.company Nama, to_char(gr_Date,'MM') bulan, 
	            case when trim(ss.stock_subject) = 'Wooden Pallet' then 'Packing Materials' else trim(ss.stock_subject) end stock_subject,
	            c.curr_acc_mark curr, sum(d.amt_O) amount_in_us, company.pdays, company.pdesc
	            from gr_header h
	            inner join gr_details d on h.gr_no = d.gr_no
	            inner join item i on d.item_no = i.item_no
	            inner join stock_subject ss on i.stock_subject_code = ss.stock_subject_code
	            inner join currency c on h.curr_code = c.curr_code
	            left outer join company on h.supplier_code = company.company_code 
	            where gr_date between to_date('$dt_A','YYYY-MM-DD') AND to_date('$dt_Z','YYYY-MM-DD')
	            group by  company.company,h.supplier_code,
	            case when trim(ss.stock_subject) = 'Wooden Pallet' then 'Packing Materials' else trim(ss.stock_subject) end, curr_acc_mark,
	            to_char(gr_Date,'MM'),company.pdays, company.pdesc
	          )
	    )
	    group by supplier_code, Nama, Stock_Subject, pdays,pdesc
	    order by  Stock_Subject,supplier_code";

	  $sql_parts = "select supplier_code, Nama, Stock_Subject, SUM(amount_in_us) TOTAL,
	    SUM(Jan_US) Jan_US, SUM(Jan_JP) Jan_JP, SUM(Jan_RP) Jan_RP, SUM(Jan_SG) Jan_SG, 
	    SUM(Feb_US) Feb_US, SUM(Feb_JP) Feb_JP, SUM(Feb_RP) Feb_RP, SUM(Feb_SG) Feb_SG, 
	    SUM(Mar_US) Mar_US, SUM(Mar_JP) Mar_JP, SUM(Mar_RP) Mar_RP, SUM(Mar_SG) Mar_SG, 
	    SUM(Apr_US) Apr_US, SUM(Apr_JP) Apr_JP, SUM(Apr_RP) Apr_RP, SUM(Apr_SG) Apr_SG, 
	    SUM(May_US) May_US, SUM(May_JP) May_JP, SUM(May_RP) May_RP, SUM(May_SG) May_SG, 
	    SUM(Jun_US) Jun_US, SUM(Jun_JP) Jun_JP, SUM(Jun_RP) Jun_RP, SUM(Jun_SG) Jun_SG, 
	    SUM(Jul_US) Jul_US, SUM(Jul_JP) Jul_JP, SUM(Jul_RP) Jul_RP, SUM(Jul_SG) Jul_SG, 
	    SUM(Aug_US) Aug_US, SUM(Aug_JP) Aug_JP, SUM(Aug_RP) Aug_RP, SUM(Aug_SG) Aug_SG, 
	    SUM(Sep_US) Sep_US, SUM(Sep_JP) Sep_JP, SUM(Sep_RP) Sep_RP, SUM(Sep_SG) Sep_SG, 
	    SUM(Oct_US) Oct_US, SUM(Oct_JP) Oct_JP, SUM(Oct_RP) Oct_RP, SUM(Oct_SG) Oct_SG, 
	    SUM(Nov_US) Nov_US, SUM(Nov_JP) Nov_JP, SUM(Nov_RP) Nov_RP, SUM(Nov_SG) Nov_SG, 
	    SUM(Dec_US) Dec_US, SUM(Dec_JP) Dec_JP, SUM(Dec_RP) Dec_RP, SUM(Dec_SG) Dec_SG,
	    pdays,pdesc
	    FROM (select supplier_code, Nama, Stock_Subject, amount_in_us,
	          case when bulan = '01' AND curr = 'US' then amount_in_us else 0 end Jan_US,
	          case when bulan = '01' AND curr = 'JP' then amount_in_us else 0 end Jan_JP,
	          case when bulan = '01' AND curr = 'RP' then amount_in_us else 0 end Jan_RP,
	          case when bulan = '01' AND curr = 'SGD' then amount_in_us else 0 end Jan_SG,
	          case when bulan = '02' AND curr = 'US' then amount_in_us else 0 end Feb_US,
	          case when bulan = '02' AND curr = 'JP' then amount_in_us else 0 end Feb_JP,
	          case when bulan = '02' AND curr = 'RP' then amount_in_us else 0 end Feb_RP,
	          case when bulan = '02' AND curr = 'SGD' then amount_in_us else 0 end Feb_SG,
	          case when bulan = '03' AND curr = 'US' then amount_in_us else 0 end Mar_US,
	          case when bulan = '03' AND curr = 'JP' then amount_in_us else 0 end Mar_JP,
	          case when bulan = '03' AND curr = 'RP' then amount_in_us else 0 end Mar_RP,
	          case when bulan = '03' AND curr = 'SGD' then amount_in_us else 0 end Mar_SG,
	          case when bulan = '04' AND curr = 'US' then amount_in_us else 0 end Apr_US,
	          case when bulan = '04' AND curr = 'JP' then amount_in_us else 0 end Apr_JP,
	          case when bulan = '04' AND curr = 'RP' then amount_in_us else 0 end Apr_RP,
	          case when bulan = '04' AND curr = 'SGD' then amount_in_us else 0 end Apr_SG,
	          case when bulan = '05' AND curr = 'US' then amount_in_us else 0 end May_US,
	          case when bulan = '05' AND curr = 'JP' then amount_in_us else 0 end May_JP,
	          case when bulan = '05' AND curr = 'RP' then amount_in_us else 0 end May_RP,
	          case when bulan = '05' AND curr = 'SGD' then amount_in_us else 0 end May_SG,
	          case when bulan = '06' AND curr = 'US' then amount_in_us else 0 end Jun_US,
	          case when bulan = '06' AND curr = 'JP' then amount_in_us else 0 end Jun_JP,
	          case when bulan = '06' AND curr = 'RP' then amount_in_us else 0 end Jun_RP,
	          case when bulan = '06' AND curr = 'SGD' then amount_in_us else 0 end Jun_SG,
	          case when bulan = '07' AND curr = 'US' then amount_in_us else 0 end Jul_US,
	          case when bulan = '07' AND curr = 'JP' then amount_in_us else 0 end Jul_JP,
	          case when bulan = '07' AND curr = 'RP' then amount_in_us else 0 end Jul_RP,
	          case when bulan = '07' AND curr = 'SGD' then amount_in_us else 0 end Jul_SG,
	          case when bulan = '08' AND curr = 'US' then amount_in_us else 0 end Aug_US,
	          case when bulan = '08' AND curr = 'JP' then amount_in_us else 0 end Aug_JP,
	          case when bulan = '08' AND curr = 'RP' then amount_in_us else 0 end Aug_RP,
	          case when bulan = '08' AND curr = 'SGD' then amount_in_us else 0 end Aug_SG,
	          case when bulan = '09' AND curr = 'US' then amount_in_us else 0 end Sep_US,
	          case when bulan = '09' AND curr = 'JP' then amount_in_us else 0 end Sep_JP,
	          case when bulan = '09' AND curr = 'RP' then amount_in_us else 0 end Sep_RP,
	          case when bulan = '09' AND curr = 'SGD' then amount_in_us else 0 end Sep_SG,
	          case when bulan = '10' AND curr = 'US' then amount_in_us else 0 end Oct_US,
	          case when bulan = '10' AND curr = 'JP' then amount_in_us else 0 end Oct_JP,
	          case when bulan = '10' AND curr = 'RP' then amount_in_us else 0 end Oct_RP,
	          case when bulan = '10' AND curr = 'SGD' then amount_in_us else 0 end Oct_SG,
	          case when bulan = '11' AND curr = 'US' then amount_in_us else 0 end Nov_US,
	          case when bulan = '11' AND curr = 'JP' then amount_in_us else 0 end Nov_JP,
	          case when bulan = '11' AND curr = 'RP' then amount_in_us else 0 end Nov_RP,
	          case when bulan = '11' AND curr = 'SGD' then amount_in_us else 0 end Nov_SG,
	          case when bulan = '12' AND curr = 'US' then amount_in_us else 0 end Dec_US,
	          case when bulan = '12' AND curr = 'JP' then amount_in_us else 0 end Dec_JP,
	          case when bulan = '12' AND curr = 'RP' then amount_in_us else 0 end Dec_RP,
	          case when bulan = '12' AND curr = 'SGD' then amount_in_us else 0 end Dec_SG,
	          pdays,pdesc
	          from 
	          (select h.supplier_code, company.company Nama, to_char(gr_Date,'MM') bulan, 
	            case when trim(ss.stock_subject) = 'Wooden Pallet' then 'Packing Materials' else trim(ss.stock_subject) end stock_subject,
	            c.curr_acc_mark curr, sum(d.amt_O) amount_in_us, company.pdays, company.pdesc
	            from gr_header h
	            inner join gr_details d on h.gr_no = d.gr_no
	            inner join item i on d.item_no = i.item_no
	            inner join stock_subject ss on i.stock_subject_code = ss.stock_subject_code
	            inner join currency c on h.curr_code = c.curr_code
	            left outer join company on h.supplier_code = company.company_code 
	            where gr_date between to_date('$dt_A','YYYY-MM-DD') AND to_date('$dt_Z','YYYY-MM-DD')
	            group by  company.company,h.supplier_code,
	            case when trim(ss.stock_subject) = 'Wooden Pallet' then 'Packing Materials' else trim(ss.stock_subject) end, curr_acc_mark,
	            to_char(gr_Date,'MM'),company.pdays, company.pdesc
	          )
	    )
	    group by supplier_code, Nama, Stock_Subject, pdays,pdesc
	    order by  Stock_Subject,supplier_code";
	}

	$data = oci_parse($connect, $sql);
	oci_execute($data);

	$data_parts = oci_parse($connect_spareparts, $sql_parts);
	oci_execute($data_parts);

	$items = array();
	$rowno=0;
	while($row = oci_fetch_object($data)){
		array_push($items, $row);
		$supp_code = $items[$rowno]->SUPPLIER_CODE;
		$supp_name = $items[$rowno]->NAMA;
		$items[$rowno]->SUPPLIER = $supp_code.'<br/>'.$supp_name;
		$SUBJECT = $items[$rowno]->STOCK_SUBJECT;
		$items[$rowno]->STOCK_SUBJECT = str_replace(' ', '<br/>', strtoupper($SUBJECT));
		$pdays = $items[$rowno]->PDAYS;
		$pdesc = $items[$rowno]->PDESC;
		$items[$rowno]->TERM = $pdays.' '.strtoupper($pdesc);
		$rowno++;
	}

	while($row_parts = oci_fetch_object($data_parts)){
		array_push($items, $row_parts);
		$supp_code = $items[$rowno]->SUPPLIER_CODE;
		$supp_name = $items[$rowno]->NAMA;
		$items[$rowno]->SUPPLIER = $supp_code.'<br/>'.$supp_name;
		$SUBJECT = $items[$rowno]->STOCK_SUBJECT;
		$items[$rowno]->STOCK_SUBJECT = str_replace(' ', '<br/>', strtoupper($SUBJECT));
		$pdays = $items[$rowno]->PDAYS;
		$pdesc = $items[$rowno]->PDESC;
		$items[$rowno]->TERM = $pdays.' '.strtoupper($pdesc);
		$rowno++;
	}	

	$result["rows"] = $items;
	
	echo json_encode($result);
?>