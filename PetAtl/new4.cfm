<!DOCTYPE HTML>
<html>
<head>
<title>PetAtl Dry Dog Food Store</title>


<cfif not isdefined("Form.custidform")> 
  <cfset Form.custidform = "No"> 
  </cfif> 
<cfset usrid2=url.usrid3/>
<cfoutput>
  <CFQUERY NAME="insertorder" DATASOURCE="UnivDB">
		
				insert into Online_order (custID,Cardnum,ProductID,Trackingnumber,orderdate, status,quantity,cost)  
select c.custID,12347482,c.ProductID,0,'10/04/2017', 'Confirmed',c.quantity,(c.quantity * p.SalePrice) from cart c
 inner join product p on p.productid=c.productid
 where c.custid=#usrid2#
		  </CFQUERY></cfoutput>


<cflocation url="http://localhost:8500/PetAtl/orderhistory.cfm?usrid=#usrid2#">
</head>
<body>



</body>
</html>