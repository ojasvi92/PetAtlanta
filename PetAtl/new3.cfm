<!DOCTYPE HTML>
<html>
<head>
<title>PetAtl Dry Dog Food Store</title>


<cfif not isdefined("Form.AddUser")> 
  <cfset Form.AddUser = "No"> 
  </cfif> 

  <CFQUERY NAME="AddUserInfo" DATASOURCE="UnivDB">
		
				insert into customer (CUSTNAME,STREET,APT,CITY,CSTATE,BUILDING,ZIPCODE,PHONE,EMAIL,password) values ('#Form.username#','#form.stname#',#Form.aptnum#,'#Form.city#','#Form.state#','Eon', #Form.zip#, #Form.number#, '#Form.email#','#Form.password#')
		  </CFQUERY>


<CFQUERY NAME="getcustid" DATASOURCE="UnivDB">
	


			select custid from customer where email = '#Form.email#' and password='#Form.password#'
		  </CFQUERY>
<cfoutput query="getcustid">
<cflocation url="http://localhost:8500/PetAtl/Accountinfo.cfm?usrid=#custid#">
</cfoutput>
</head>
<body>



</body>
</html>