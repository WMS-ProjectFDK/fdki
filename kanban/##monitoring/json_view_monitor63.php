<?php
include("../../connect/conn3.php");
$sql = "
        select assylr63.dbo.cekjalan(getdate()) JALAN,ISNULL(cast(assylr63.dbo.cekrasio(getdate()) as decimal(18,2)),0) RASIO,assylr63.dbo.cekStop(getdate())  STOPS
        ,(select status from assylr63.dbo.line_master where id_line = 16) STS_START
        ,(select status from assylr63.dbo.line_master where id_line = 13) STS_STOP,
        case when (select status from assylr63.dbo.line_master where id_line = 13) = 0 then assylr63.dbo.cekStop(getdate()) 
            else  (select top 1 detik from assylr63.dbo.line_report where  id_line = 13 order by start desc) end STOPSx,
        case when (select status from assylr63.dbo.line_master where id_line = 1) = 0 then MOULD 
            else  (select top 1 detik from assylr63.dbo.line_report where  id_line = 1 order by start desc) end MOULD,
        case when (select status from assylr63.dbo.line_master where id_line = 2) = 0 then can_supply 
            else  (select top 1 detik from assylr63.dbo.line_report where  id_line = 2 order by start desc) end can_supply,

        case when (select status from assylr63.dbo.line_master where id_line = 3) = 0 then MIXINSERT
            else  (select top 1 detik from assylr63.dbo.line_report where  id_line = 3 order by start desc) end  MIXINSERT,
        case when (select status from assylr63.dbo.line_master where id_line = 4) = 0 then BEADING
            else  (select top 1 detik from assylr63.dbo.line_report where  id_line = 4 order by start desc) end  BEADING,
        case when (select status from assylr63.dbo.line_master where id_line = 5) = 0 then ADHESIVE
            else  (select top 1 detik from assylr63.dbo.line_report where  id_line = 5 order by start desc) end  ADHESIVE,

        case when (select status from assylr63.dbo.line_master where id_line =6) = 0 then SEPARATORINSERT
            else  (select top 1 detik from assylr63.dbo.line_report where  id_line = 6 order by start desc) end  SEPARATORINSERT,
        case when (select status from assylr63.dbo.line_master where id_line = 7) = 0 then ELECFILLING
            else  (select top 1 detik from assylr63.dbo.line_report where  id_line = 7 order by start desc) end  ELECFILLING,
        case when (select status from assylr63.dbo.line_master where id_line = 8) = 0 then TrayStock
            else  (select top 1 detik from assylr63.dbo.line_report where  id_line = 8 order by start desc) end TrayStock,
        case when (select status from assylr63.dbo.line_master where id_line = 9) = 0 then Vacuum
            else  (select top 1 detik from assylr63.dbo.line_report where  id_line = 9 order by start desc) end Vacuum,
        case when (select status from assylr63.dbo.line_master where id_line = 10) = 0 then AnodeGel
            else  (select top 1 detik from assylr63.dbo.line_report where  id_line = 10 order by start desc) end AnodeGel,
        case when (select status from assylr63.dbo.line_master where id_line = 11) = 0 then Uncaser
            else  (select top 1 detik from assylr63.dbo.line_report where  id_line = 11 order by start desc) end Uncaser,
        case when (select status from assylr63.dbo.line_master where id_line = 12) = 0 then CCAInsert
            else  (select top 1 detik from assylr63.dbo.line_report where  id_line = 12 order by start desc) end CCAInsert,
        case when (select status from assylr63.dbo.line_master where id_line = 13) = 0 then STOP
            else  (select top 1 detik from assylr63.dbo.line_report where  id_line = 13 order by start desc) end STOP,
        case when (select status from assylr63.dbo.line_master where id_line = 14) = 0 then WeightChck
            else  (select top 1 detik from assylr63.dbo.line_report where  id_line = 14 order by start desc) end WeightChck,
        case when (select status from assylr63.dbo.line_master where id_line = 15) = 0 then CasingLoad
            else  (select top 1 detik from assylr63.dbo.line_report where  id_line = 15 order by start desc) end CasingLoad,
        (select status from assylr63.dbo.line_master where id_line = 1) MOULDINGSTAT,
        (select status from assylr63.dbo.line_master where id_line = 2) CAN_SUPPLYSTAT,
        (select status from assylr63.dbo.line_master where id_line = 3) MIXINSERTSTAT,
        (select status from assylr63.dbo.line_master where id_line = 4) BEADINGSTAT,
        (select status from assylr63.dbo.line_master where id_line = 5) ADHESIVESTAT,
        (select status from assylr63.dbo.line_master where id_line = 6) SEPARATORINSERTSTAT,
        (select status from assylr63.dbo.line_master where id_line = 7) ELECFILLINGSTAT,
        (select status from assylr63.dbo.line_master where id_line = 10) ANODEGELSTAT,
        (select status from assylr63.dbo.line_master where id_line = 8) TRAYSTOCKSTAT,
        (select status from assylr63.dbo.line_master where id_line = 9) VACUUMSTAT,
        (select status from assylr63.dbo.line_master where id_line = 11) UNCASERSTAT,
        (select status from assylr63.dbo.line_master where id_line = 12) CCAINSERTSTAT,
        (select status from assylr63.dbo.line_master where id_line = 14) WEIGHTCHCKSTAT,
        (select status from assylr63.dbo.line_master where id_line = 15) CASINGLOADSTAT,
        (SELECT CONVERT(VARCHAR(20),GETDATE(),105)) TGL,
        (SELECT CONVERT(VARCHAR(20),GETDATE(),108)) WKT,
        MOULD MOULD2,
        CAN_SUPPLY  CAN_SUPPLY2,
        MIXINSERT   MIXINSERT2,
        BEADING  BEADING2,
        ADHESIVE  ADHESIVE2,
        SEPARATORINSERT  SEPARATORINSERT2,
        ELECFILLING ELECFILLING2,
        ANODEGEL  ANODEGEL2,
        TRAYSTOCK TRAYSTOCK2,
        WeightChck WCHECKER2,
        UNCASER UNCASER2,
        CCAINSERT CCAINSERT2,
        CasingLoad CasingLoad2,
        Vacuum VACUUM2
        from assylr63.dbo.Line_Time";
$rs=odbc_exec($con63,$sql);
$arrNo = 0;
while (odbc_fetch_row($rs)){
   
   $arrData[$arrNo] = array("JALAN"=>odbc_result($rs,"JALAN"),
                             "STOPS"=>odbc_result($rs,"STOPS"),
                             "STS_START"=>odbc_result($rs,"STS_START"),
                              "STOPSx"=>odbc_result($rs,"STOPSx"),
                             "STS_STOP"=>odbc_result($rs,"STS_STOP"),
                             "RASIO"=>odbc_result($rs,"RASIO"),
                             "MOULD"=>odbc_result($rs,"MOULD"),
                             "CAN_SUPPLY"=>odbc_result($rs,"CAN_SUPPLY"),
                             "MIXINSERT"=>odbc_result($rs,"MIXINSERT"),
                             "BEADING"=>odbc_result($rs,"BEADING"),
                             "ADHESIVE"=>odbc_result($rs,"ADHESIVE"),
                             "SEPARATORINSERT"=>odbc_result($rs,"SEPARATORINSERT"),
                             "ELECFILLING"=>odbc_result($rs,"ELECFILLING"), 

                             "VACUUM"=>odbc_result($rs,"VACUUM"),
                             "UNCASER"=>odbc_result($rs,"UNCASER"),
                             "CCAINSERT"=>odbc_result($rs,"CCAINSERT"),
                             "ANODEGEL"=>odbc_result($rs,"ANODEGEL"),
                             "TRAYSTOCK"=>odbc_result($rs,"TRAYSTOCK"),
                             "WEIGHTCHCK"=>odbc_result($rs,"WEIGHTCHCK"),
                             "CASINGLOAD"=>odbc_result($rs,"CASINGLOAD"),


                             "MOULD2"=>odbc_result($rs,"MOULD2"),
                             "CAN_SUPPLY2"=>odbc_result($rs,"CAN_SUPPLY2"),
                             "MIXINSERT2"=>odbc_result($rs,"MIXINSERT2"),
                             "BEADING2"=>odbc_result($rs,"BEADING2"),
                             "ADHESIVE2"=>odbc_result($rs,"ADHESIVE2"),
                             "SEPARATORINSERT2"=>odbc_result($rs,"SEPARATORINSERT2"),
                             "ELECFILLING2"=>odbc_result($rs,"ELECFILLING2"),
                             "ANODEGEL2"=>odbc_result($rs,"ANODEGEL2"),
                             "TRAYSTOCK2"=>odbc_result($rs,"TRAYSTOCK2"),
                             "WCHECKER2"=>odbc_result($rs,"WCHECKER2"),
                            
                             "CASINGLOAD2"=>odbc_result($rs,"CASINGLOAD2"),
                             "UNCASER2"=>odbc_result($rs,"UNCASER2"),
                             "VACUUM2"=>odbc_result($rs,"VACUUM2"),
                             "CCAINSERT2"=>odbc_result($rs,"CCAINSERT2"),


                             "TGL"=>odbc_result($rs,"TGL"),
                             "WKT"=>odbc_result($rs,"WKT"),


                             "MOULDINGSTAT"=>odbc_result($rs,"MOULDINGSTAT"),

                             "CAN_SUPPLYSTAT"=>odbc_result($rs,"CAN_SUPPLYSTAT"),
                             "MIXINSERTSTAT"=>odbc_result($rs,"MIXINSERTSTAT"),
                             "BEADINGSTAT"=>odbc_result($rs,"BEADINGSTAT"),
                             "ADHESIVESTAT"=>odbc_result($rs,"ADHESIVESTAT"),
                             "SEPARATORINSERTSTAT"=>odbc_result($rs,"SEPARATORINSERTSTAT"),
                             "ELECFILLINGSTAT"=>odbc_result($rs,"ELECFILLINGSTAT"),
                             "ANODEGELSTAT"=>odbc_result($rs,"ANODEGELSTAT"),
                             "TRAYSTOCKSTAT"=>odbc_result($rs,"TRAYSTOCKSTAT"),
                            
                             "CASINGLOADSTAT"=>odbc_result($rs,"CASINGLOADSTAT"),
                             "WEIGHTCHCKSTAT"=>odbc_result($rs,"WEIGHTCHCKSTAT"),
                              "VACUUMSTAT"=>odbc_result($rs,"VACUUMSTAT"),
                             "UNCASERSTAT"=>odbc_result($rs,"UNCASERSTAT"),
                             "CCAINSERTSTAT"=>odbc_result($rs,"CCAINSERTSTAT")
                    );
   
$arrNo++;

}

$SUBJECT = $items[$rowno]->STOCK_SUBJECT;
        $items[$rowno]->STOCK_SUBJECT = str_replace(' ', '<br/>', strtoupper($SUBJECT));
echo json_encode($arrData);
?>