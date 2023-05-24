<%@page import="ma.EncryptDecrypt"%>
<html>
<head>
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<title>
</title>
<style>
a#des
{
    background: #c70707;border-radius: 12px;height: 27px;border-style: double;
}
div#readfile
{
    margin-left: 296px;
    margin-top: 0px;
    border-style: groove;
    width: 400px;
    height: 100px;
}
</style>
</head>
<body>
<div id="header-wrapper" style="
    background: url('Images/Background (1).jpg');
    background-repeat: round;
    height: 89px; 
    border-radius: 20px;
    border-style: double;
    border-color: aliceblue;
    border-radius: 18px;">  
	<div id="header" class="container"> 
		<div id="logo">
			<h1><a href="#">Tumour Prediction</a></h1>
		</div>
		<div id="menu">
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="UploadDataSet.jsp">Upload</a></li>
                                <li><a href="View_Datasets.jsp">Datasets</a></li>
				<li><a href="Search.jsp">Search ID</a></li>
				<li><a href="MissingData.jsp">Missing Data</a></li>
				<li><a href="OverallAnalysis.jsp" id='des'>Analysis</a></li>
			</ul>
		</div>
	</div>
</div>
    <br><br>
<div id="header-featured">
    <p align="center" style="font-size: 30px;color: chartreuse;">View Encrypted Data</p>
  
<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="algorithm.CART"%>
<%@page import="algorithm.CNN"%>
<%--<%@include file="Connection.jsp"%>--%>
<table align="center" border=1 style="width: 1155px;text-transform: uppercase;text-align: center;color: navy;font-weight: bold;line-height: 2;background: wheat;border-radius: 13px;">
                <tr style="background: black;color: yellow;">
                    <td>id</td>
                    <td>age</td>
                    <td>gender</td>
                    <td>cp</td>
                    <td>trestbps</td>
                    <td>chol</td>
                    <td>fbs</td>
                    <td>restecg</td>
                    <td>thalach</td>
                    <td>exang</td>
                    <td>oldpeak</td>
                    <td>slope</td>
                    <td>ca</td>
                    <td>thal</td>
                    <td>num</td>
                    <td>name</td>
                    
                </tr>
<%
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost/disease_prediction", "root","root");
                PreparedStatement query=con.prepareStatement("select * from datasets");
                ResultSet rs=query.executeQuery();
                //Decision Tree Algorithm Code
                
                while(rs.next())
                {
                    int cp=0,trestbps=0,chol=0,fbs=0,restecg=0,thalach=0,exang=0,oldpeak=0,slope=0,ca=0,thal=0,num=0; 
                    int age=0,gender=0;
                    age=rs.getInt(2);
                    gender=rs.getInt(3);
                    cp=rs.getInt(4);
                    trestbps=rs.getInt(5);
                    chol=rs.getInt(6);
                    fbs=rs.getInt(7);
                    restecg=rs.getInt(8);
                    thalach=rs.getInt(9);
                    exang=rs.getInt(10);
                    oldpeak=rs.getInt(11);
                    slope=rs.getInt(12);
                    ca=rs.getInt(13);
                    thal=rs.getInt(14);
                    num=rs.getInt(15);
                //}
                //CNN Algorithm Processing END
                
                int S_L=0,S_N=0,S_H=0;
                int US_L=0,US_N=0,US_H=0;
                
                CNN c=new CNN();
                
                c.chest_pain(cp);
                c.resting_blood_pressure(trestbps);
                c.serum_cholestoral(chol);
                c.fasting_blood_sugar(fbs);
                c.resting_electrocardiographic_results(restecg);
                c.heart_rate_achieved(thalach);
                c.exercise_induced_angina(exang);
                c.ST_depression_induced_by_exercise(oldpeak);
                c.slope_of_the_peak_exercise(slope);
                c.number_of_major_vessels(ca);//ca
                c.thal(thal);
                c.num(num);
        
                
                
                String cp1=c.get_chest_pain();
                String rbp1=c.get_resting_blood_pressure();
                String sc1=c.get_serum_cholestoral();
                String fbs1=c.get_fasting_blood_sugar();
                String rer1=c.get_resting_electrocardiographic_results();
                String hra1=c.get_heart_rate_achieved();
                String eia1=c.get_exercise_induced_angina();
                String sibye1=c.get_ST_depression_induced_by_exercise();
                String sotpe1=c.get_slope_of_the_peak_exercise();
                String nomv1=c.get_number_of_major_vessels();
                String thal1=c.get_thal();
                String num1=c.get_num();
                
                //CART (Classification And Regression Tree) algorithm calling function
                CART d=new CART();
                d.set_decision_tree(""+age, ""+gender, "David");
                String ar[]=d.get_decision_tree();

                if(ar[0].equalsIgnoreCase("HIGH LEVEL"))
                    {
                        S_H++;
                    }
                    else if(ar[0].equalsIgnoreCase("LOW LEVEL"))
                    {
                        S_L++;
                    }
                    else if(ar[0].equalsIgnoreCase("NORMAL LEVEL"))
                    {
                        S_N++;
                    }
                    
                    if(ar[1].equalsIgnoreCase("HIGH LEVEL"))
                    {
                        S_H++;
                    }
                    else if(ar[1].equalsIgnoreCase("LOW LEVEL"))
                    {S_L++;
                    }
                    else if(ar[1].equalsIgnoreCase("NORMAL LEVEL"))
                    {S_N++;
                    }
                    //Unstructured Data
                    if(cp1.equalsIgnoreCase("HIGH LEVEL"))
                    {US_H++;
                    }
                    else if(cp1.equalsIgnoreCase("LOW LEVEL"))
                    {US_L++;
                    }
                    else if(cp1.equalsIgnoreCase("NORMAL LEVEL"))
                    {US_N++;
                    }
                    if(rbp1.equalsIgnoreCase("HIGH LEVEL"))
                    {US_H++;
                    }
                    else if(rbp1.equalsIgnoreCase("LOW LEVEL"))
                    {US_L++;
                    }
                    else if(rbp1.equalsIgnoreCase("NORMAL LEVEL"))
                    {US_N++;
                    }
                    if(sc1.equalsIgnoreCase("HIGH LEVEL"))
                    {US_H++;
                    }
                    else if(sc1.equalsIgnoreCase("LOW LEVEL"))
                    {US_L++;
                    }
                    else if(sc1.equalsIgnoreCase("NORMAL LEVEL"))
                    {US_N++;
                    }
                    if(fbs1.equalsIgnoreCase("HIGH LEVEL"))
                    {US_H++;
                    }
                    else if(fbs1.equalsIgnoreCase("LOW LEVEL"))
                    {US_L++;
                    }
                    else if(fbs1.equalsIgnoreCase("NORMAL LEVEL"))
                    {US_N++;
                    }
                    if(rer1.equalsIgnoreCase("HIGH LEVEL"))
                    {US_H++;
                    }
                    else if(rer1.equalsIgnoreCase("LOW LEVEL"))
                    {US_L++;
                    }
                    else if(rer1.equalsIgnoreCase("NORMAL LEVEL"))
                    {US_N++;
                    }
                    if(hra1.equalsIgnoreCase("HIGH LEVEL"))
                    {US_H++;
                    }
                    else if(hra1.equalsIgnoreCase("LOW LEVEL"))
                    {US_L++;
                    }
                    else if(hra1.equalsIgnoreCase("NORMAL LEVEL"))
                    {US_N++;
                    }if(eia1.equalsIgnoreCase("HIGH LEVEL"))
                    {US_H++;
                    }
                    else if(eia1.equalsIgnoreCase("LOW LEVEL"))
                    {US_L++;
                    }
                    else if(eia1.equalsIgnoreCase("NORMAL LEVEL"))
                    {US_N++;
                    }
                    if(sibye1.equalsIgnoreCase("HIGH LEVEL"))
                    {US_H++;
                    }
                    else if(sibye1.equalsIgnoreCase("LOW LEVEL"))
                    {US_L++;
                    }
                    else if(sibye1.equalsIgnoreCase("NORMAL LEVEL"))
                    {US_N++;
                    }
                    if(sotpe1.equalsIgnoreCase("HIGH LEVEL"))
                    {US_H++;
                    }
                    else if(sotpe1.equalsIgnoreCase("LOW LEVEL"))
                    {US_L++;
                    }
                    else if(sotpe1.equalsIgnoreCase("NORMAL LEVEL"))
                    {US_N++;
                    }
                    if(nomv1.equalsIgnoreCase("HIGH LEVEL"))
                    {US_H++;
                    }
                    else if(nomv1.equalsIgnoreCase("LOW LEVEL"))
                    {US_L++;
                    }
                    else if(nomv1.equalsIgnoreCase("NORMAL LEVEL"))
                    {US_N++;
                    }
                    if(thal1.equalsIgnoreCase("HIGH LEVEL"))
                    {US_H++;
                    }
                    else if(thal1.equalsIgnoreCase("LOW LEVEL"))
                    {US_L++;
                    }
                    else if(thal1.equalsIgnoreCase("NORMAL LEVEL"))
                    {US_N++;
                    }
                    if(num1.equalsIgnoreCase("HIGH LEVEL"))
                    {US_H++;
                    }
                    else if(num1.equalsIgnoreCase("LOW LEVEL"))
                    {US_L++;
                    }
                    else if(num1.equalsIgnoreCase("NORMAL LEVEL"))
                    {
                        US_N++;
                    }
                
                int USH=US_H;
                int USL=US_L;
                int SH=S_H;
                int SL=S_L;
//                System.out.println("This is all value USH= "+USH+"  USL = "+USL+" SH = "+SH+"  SL = "+SL);
                //Calculation for Structured and unstructured data's
                //Structured Data Risk Result
                String S_Result="",US_Result="";
                if(SH!=0)
                {
                    S_Result="High Level Risk";
                }
                else if (SL!=0)
                {
                    S_Result="Low Level Risk";
                }
                else
                {
                    S_Result="Low Level Risk";
                }
                //UnStructured Data Risk Result
                if(USH>=6)
                {
                    US_Result="High Level Risk";
                }
                else if(USL!=0)
                {
                    US_Result="Low Level Risk";
                }
                else
                {
                    US_Result="Low Level Risk";
                }
                String Final_Result="";
                if(S_Result.equalsIgnoreCase("High Level Risk")&&US_Result.equalsIgnoreCase("High Level Risk"))// H + H = H
                {
                    Final_Result="(High Risk)";
                }
                else if(S_Result.equalsIgnoreCase("Low Level Risk")&&US_Result.equalsIgnoreCase("Low Level Risk"))// L + L = L
                {
                    Final_Result="(Low Risk)";
                }
                else if(S_Result.equalsIgnoreCase("High Level Risk")&&US_Result.equalsIgnoreCase("Low Level Risk"))// H + L = H
                {
                    Final_Result="(High Risk)";
                }
                else if(S_Result.equalsIgnoreCase("Low Level Risk")&&US_Result.equalsIgnoreCase("High Level Risk"))// L + H = H
                {
                    Final_Result="(High Risk)";
                }
                else
                {
                    Final_Result="(Low Risk)";
                }
                %>
                <%
                EncryptDecrypt enc=new EncryptDecrypt();
                String val1=enc.Encrypt(rs.getString(1));
                String val2=enc.Encrypt(rs.getString(2));
                String val3=enc.Encrypt(rs.getString(3));
                String val4=enc.Encrypt(rs.getString(4));
                String val5=enc.Encrypt(rs.getString(5));
                String val6=enc.Encrypt(rs.getString(6));
                String val7=enc.Encrypt(rs.getString(7));
                String val8=enc.Encrypt(rs.getString(8));
                String val9=enc.Encrypt(rs.getString(9));
                String val10=enc.Encrypt(rs.getString(10));
                String val11=enc.Encrypt(rs.getString(11));
                String val12=enc.Encrypt(rs.getString(12));
                String val13=enc.Encrypt(rs.getString(13));
                String val14=enc.Encrypt(rs.getString(14));
                String val15=enc.Encrypt(rs.getString(15));
                String val16=enc.Encrypt("XXX");
                
                
                %>
                            <tr>
                                <td>
                                    <%=val1%>
                                </td>
                                <td><%=val2%></td>
                                <td><%=val3%></td>
                                <td><%=val4%></td>
                                <td><%=val5%></td>
                                <td><%=val6%></td>
                                <td><%=val7%></td>
                                <td><%=val8%></td>
                                <td><%=val9%></td>
                                <td><%=val10%></td>
                                <td><%=val11%></td>
                                <td><%=val12%></td>
                                <td><%=val13%></td>
                                <td><%=val14%></td>
                                <td><%=val15%></td>
                                <td><%=val16%></td>
                                <%
                                System.out.println(Final_Result);
                                    
                                %>
                                <!--<td><%=Final_Result%></td>-->
                            </tr>
                        <%
                
        } 
%>

            <br><br><br>
	<div id="banner" class="container">
            
        </div>
</div>
</body>
</html>