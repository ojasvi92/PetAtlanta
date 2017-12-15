<!DOCTYPE HTML>
<html>
<head>
<title>PetAtl Dry Dog Food Store</title>


<cfif not isdefined("Form.AddCartForm")> 
  <cfset Form.AddCartForm = "No"> 
  </cfif> 

  <CFQUERY NAME="AddcartInfo" DATASOURCE="UnivDB">
	


			insert into cart (CustID,ProductID,Quantity) values(6, #Form.prodidurl#, #Form.prodqty#)
		  </CFQUERY>
<cflocation url="http://localhost:8500/PetAtl/sales.cfm?cat=#Form.prodcat#">

</head>
<body>



</body>
</html>