<%-- 
    Document   : search1
    Created on : Aug 2, 2017, 3:55:10 PM
    Author     : DLK 1
--%>
<%@page import="java.util.LinkedList"%>
<%@page import="algorithm.Stopwords"%>
<%@page import="java.util.LinkedHashSet"%>
<%@page import="algorithm.TFIDFCalculator"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    int zz=0;
    int count=1;
    String fname;
    String ffname;
    Set <String>fin = new LinkedHashSet<String>();
    Set oo = new HashSet();
    Map ma = new LinkedHashMap();
    Map na = new LinkedHashMap();
    ArrayList mmm = new ArrayList();
    ArrayList <String>all = new ArrayList<String>();
    List lis = new ArrayList();
    List lis1 = new ArrayList();
    String cont="";
    String name=session.getAttribute("name").toString();
    session.setAttribute("name", name);
    String key=request.getParameter("key");
    Stopwords sspp=new Stopwords();
        LinkedList<String>stoppp=new LinkedList<String>();
        stoppp = sspp.words(key);        
        String result1=""; 
        for(String zob : stoppp)
        {
            result1+=zob+" ";
        }
        result1 = result1.replaceAll("[,]"," "); 
        key=result1;
        key=key.toLowerCase();
        out.println(key);
    String k=request.getParameter("k");     
    int kk = Integer.parseInt(k);
    String[] arr = key.split(" "); 
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tees","root","root");
      
    PreparedStatement pssw=con.prepareStatement("select * from file");
    ResultSet rssw = pssw.executeQuery();   
    int iyz=0;
    while(rssw.next())
    {
    iyz=iyz+1;
    }
    TFIDFCalculator calc = new TFIDFCalculator();
     for ( String ss : arr) 
    {
        lis1.add(ss);
    ss=ss.toLowerCase();
    String sql="select * from file where content  like '%"+ss+"%' ";
    PreparedStatement pss=con.prepareStatement(sql);
    ResultSet rss = pss.executeQuery();             
    while(rss.next())
    {       
        int c=0;
        fname=rss.getString("fname");
        oo.add(rss.getString("fname"));
        cont=rss.getString("content"); 
        cont=cont.toLowerCase();   
        c= cont.split(ss).length - 1;    
        PreparedStatement ps = con.prepareStatement("insert into val (fname,ke,count) values ('"+fname+"','"+ss+"','"+c+"') ");
        ps.executeUpdate();
    }
    }    
    String sql="select fname from file";
    PreparedStatement pss=con.prepareStatement(sql);
    List <String>god = new ArrayList<String>();
    ResultSet rss = pss.executeQuery();
    while(rss.next())
    {
        int temp=0;
        ffname=rss.getString("fname");
        String sp="select * from val where fname='"+ffname+"' ";
    PreparedStatement sn=con.prepareStatement(sp);
    ResultSet snn = sn.executeQuery();
    while(snn.next())
    {
        temp+=snn.getInt("count");
    }
    if(temp!=0)
    {
    PreparedStatement uu = con.prepareStatement("insert into result (fname,count) values ('"+ffname+"','"+temp+"') ");
    uu.executeUpdate();    
    }    
    }
                //Extra Coding
                PreparedStatement del=con.prepareStatement("truncate table highlevel");
                del.executeUpdate();
    
                PreparedStatement p=con.prepareStatement("select * from result");
                ResultSet s = p.executeQuery();
                while(s.next())
                {
                    String file=s.getString("fname");System.out.println("First loop");
                    PreparedStatement p1=con.prepareStatement("select * from file where fname='"+file+"' ");
                    ResultSet s1 = p1.executeQuery();
                    while(s1.next())
                    {
                        String conts=s1.getString("sto");System.out.println("Second loop");
                        String word[]=conts.split(" ");
                        String qur[]=key.split(" ");
                        int cou=0; int high=0;
                        for(int i=0;i<qur.length;i++)
                        {
                            int dummy=0;
                            for(int j=0;j<word.length;j++)
                            {
				if(qur[i].equalsIgnoreCase(word[j]))
				{
                                    high++;
                                    if(dummy==0)
                                    {
                                        dummy++;
                                        cou++;
                                    }
				}
                            }
                        }
                        if(cou>=qur.length)
                        {
                           PreparedStatement insert=con.prepareStatement("insert into highlevel values('"+file+"','"+high+"') ");
                           insert.executeUpdate();
                        }
                    }
                }
                List <String>rel=new ArrayList<String>();
         //High Priority Files
          PreparedStatement p1=con.prepareStatement("SELECT * FROM highlevel ORDER BY rank+0 DESC");
          ResultSet s1 = p1.executeQuery();
          String zzz="";
          while(s1.next())
          {
              String file=s1.getString("filename");
              String rank=s1.getString("rank");
              fin.add(file);
              System.out.println("Relevance Count is "+Math.log((1+(8/(Integer.parseInt(rank))))));
              zzz +="Relevance Count of File  "+file+"  is : "+Math.log((1+(8/(Integer.parseInt(rank)))));
           zzz+=" </br>";zzz+=" </br>";
          }          
   
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<title>AN EFFICIENT, ACCURATE, AND FORWARD SECURE SEARCHABLE ENCRYPTION SCHEME SUPPORTING RANGE SEARCH</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
	<div class="header header-home">
		<div>
                    <center>
                    <h1 style="color:white;">AN EFFICIENT, ACCURATE, AND FORWARD SECURE SEARCHABLE ENCRYPTION SCHEME SUPPORTING RANGE SEARCH</h1>
		    </center>                    
                    <ul style="margin-left: -390px;">
				<li>
					<span><a href="userhome.jsp">Home</a></span>
				</li>
				<li class="selected">
					<span><a href="search.jsp">Search</a></span>
				</li>
				<li>
					<span><a href="download.jsp">Download Request</a></span>
				</li>
				<li>
					<span><a href="logout.jsp">Logout</a></span>
				</li>
			</ul>
                        <center><h2>Search Result</h2></center>
			<div>
                       <center>                 
                 
     <%
        List <String>god1=new ArrayList<String>();
        System.out.println("Final "+fin);
        int  y;
        y=fin.size(); 
        Iterator itr = fin.iterator();
        while(itr.hasNext())
        {          
           god.add((String)itr.next());
        } 
        if(kk<y)
        {
            for(int i=0;i<kk; i++)
            {
                god1.add(god.get(i));
            }
        }
        else
        {
        for(String zzmo: god)
        {
           god1.add(zzmo);
       }
        }
        for(String vel:god1)
        {
         %>
         <%=vel%>&emsp;<a href="sendreq.jsp?fname=<%=vel%>" >Download</a> <br><br>
         <%
    }
     %>
       <br><br><h4><%=zzz%></h4>
                       </center>
     
                         </div>
		</div>
	</div>
	<div class="body">
		<div class="home">
                    <br><br>
                    
		</div>
	</div>
	<div class="footer">
		<div>
			
		</div>
	</div>
</body>
</html>
