<%@page pageEncoding="UTF-8"%>
<%@page import="myPackage.classes.Answers"%>
<%@page import="myPackage.classes.Exams"%>
<%@page import="myPackage.classes.Questions"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>

			<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
				<div class="sidebar-background" >
					<h2 class="logo-text">
						Online Sınav Sistemi
					</h2>
					<div class="left-menu">
						<a  href="std-page.jsp?pgprt=0"><h2>PROFİL</h2></a>
						<a href="std-page.jsp?pgprt=1"><h2>DERSLER</h2></a>
						<a class="active" href="std-page.jsp?pgprt=2"><h2>SONUÇLAR</h2></a>
					</div>
				</div>
		
                       </div>
               
			<div class="content-area">
                            <div class="panel" style="float: left;max-width: 900px">
                                
        <%
            if(request.getParameter("eid")==null){
        %>
        <div class="title">TÜM SONUÇLAR</div>
           <table id="rounded-corner">
    <thead>
    	<tr>
        	<th scope="col" class="rounded-company">TARİH</th>
            <th scope="col" class="rounded-q1">DERS</th>
            <th scope="col" class="rounded-q2">SAAT</th>
            <th scope="col" class="rounded-q3">DURUM</th>
            
        </tr>
    </thead>
        
    <tbody>
        
        <%
            ArrayList list=pDAO.getAllResultsFromExams(Integer.parseInt(session.getAttribute("userId").toString()));
            for(int i=0;i<list.size();i++){
                Exams e=(Exams)list.get(i);
            %>
    	<tr>
            <td><%=e.getDate() %></td>
            <td><%=e.getcName() %></td>
            <td><%=e.getStartTime()+" - "+e.getEndTime()%></td>
            <% if(e.getStatus()!=null){
                if(e.getStatus().equals("Pass")){%>
                <td style="background: #00cc33;color:white"><%=e.getStatus()%></td>
            <% }else{%>
            <td style="background: #ff3333;color:white"><%=e.getStatus()%></td>
            <% }
            }else{%>
            <td style="background: bisque ;">sonlandırılmış</td>
            <% } %>
            <td><a href="std-page.jsp?pgprt=2&eid=<%=e.getExamId()%>">Detaylar</a></td>
        </tr>
       
       <% }
       %>
    </tbody>
</table>
       <%
            }else{
                %>
                <div class="title">SINAV SONUCU DETAYLARI</div>
                <table id="gradient-style" >
                
                <%
                ArrayList list=pDAO.getAllAnswersByExamId(Integer.parseInt(request.getParameter("eid")));
                for(int i=0;i<list.size();i++){
                    Answers a=(Answers) list.get(i);
                
            %>

            
                <tr>
                    <td rowspan="2"><%=i+1 %>)</td>
                    <td colspan="2"><%=a.getQuestion()%></td>   
                </tr>
                <tr >
                    <td><%="Senin Cevabın: "+a.getAnswer()%></td>
                    <td><%="Doğru Cevap: "+a.getCorrectAns() %></td>
                </tr>
                <tr>
                    <td colspan="3" style="background: white"></td>
                <%
                }
                %>
            </table>
                    
            
            <%
            }
            %>
                            </div>