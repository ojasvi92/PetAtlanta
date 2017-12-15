<!DOCTYPE HTML>
<html>
<head>
<title>PetAtl Dry Dog Food Store</title>


<cfif not isdefined("Form.AddCartForm")> 
  <cfset Form.AddCartForm = "No"> 
  </cfif> 

  <CFQUERY NAME="AddcartInfo" DATASOURCE="UnivDB">
	


			insert into cart (CustID,ProductID,Quantity) values((select max(CustID)+1 from customer),#Form.prodidurl#, #Form.prodqty#)
		  </CFQUERY>

<CFQUERY NAME="getcartinfo" DATASOURCE="UnivDB">
	


			select cartid from cart where ProductID = #Form.prodidurl# and CustID=18
		  </CFQUERY>
<cfoutput query="getcartinfo">
<cflocation url="http://localhost:8500/PetAtl/single.cfm?prodid=#Form.prodidurl#&crtid=#cartid#">

</cfoutput>
</head>
<body>



</body>
</html>