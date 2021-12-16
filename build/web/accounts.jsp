<%@page pageEncoding="UTF-8"%>
<%@page import="myPackage.classes.User"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>

<!-- SIDEBAR -->
			<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
				<div class="sidebar-background" >
					<h2 class="logo-text">
						Online Sınav Sistemi
					</h2>

					<div class="left-menu">
						<a  href="adm-page.jsp?pgprt=0"><h2>PROFİL</h2></a>
						<a href="adm-page.jsp?pgprt=2"><h2>DERSLER</h2></a>
                                                <a href="adm-page.jsp?pgprt=3"><h2>SORULAR</h2></a>
						<a class="active" href="adm-page.jsp?pgprt=1"><h2>ÖĞRENCİLER</h2></a>
					</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
			<div class="content-area">
                            <div class="inner" style="margin-top: 50px">
                                <div class="title" style="margin-top: -30px">ÖĞRENCİ LİSTESİ</div>
       
                                <br>
                                <br>
                                <br/>
                                <a href="register.html" class="button"><span class="add-btn" style="margin-left: 80px;">ÖĞRENCİ EKLE</span></a>
           <br>
           
           
                       <table id="one-column-emphasis" >
    <colgroup>
    	<col class="oce-first" />
    </colgroup>
    <thead>
    	<tr>
        	<th scope="col">İSİM</th>
                
            <th scope="col">MAİL ADRESİ</th>
            <th scope="col">ÖĞRENCİ NUMARASI</th>
           
            <th scope="col"> </th>
            
        </tr>
    </thead>
    <tbody>
           <%
              ArrayList list=pDAO.getAllUsers();
              User user;
              for(int i=0;i<list.size();i++){
                  user=(User)list.get(i);
                  if(user.getUserId()!= Integer.parseInt(session.getAttribute("userId").toString())){
               %>
   
    	<tr>
        	<td><%=user.getFirstName()+" "+user.getLastName() %></td>
            <td><%=user.getEmail() %></td>
            <td><%=user.getUserName() %></td>
          
            <td><a href="controller.jsp?page=accounts&operation=del&uid=<%=user.getUserId() %>" 
                  onclick="return confirm('BU KULLANICIYI SİLMEK İSTİYOR MUSUNUZ?');">
                <div class="delete-btn" style="max-width: 40px;font-size: 17px; padding: 3px">X</div>
                </a></td>
            
        </tr>
         
               
               
               <%
                  }
                  } %>
               
                </tbody>
</table>
           
    
                            </div>
                        </div>