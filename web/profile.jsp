<%@page pageEncoding="UTF-8"%>
<%@page import="myPackage.classes.User"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>

<%
           User user=pDAO.getUserDetails(session.getAttribute("userId").toString());
           if(user.getType().endsWith("admin")){
        %>
         <!-- SIDEBAR -->
			<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
				<div class="sidebar-background" >
					<h2 class="logo-text">
						Online Sınav Sistemi
					</h2>

					<div class="left-menu">
						<a class="active" href="adm-page.jsp?pgprt=0"><h2>PROFİL</h2></a>
						<a href="adm-page.jsp?pgprt=2"><h2>DERSLER</h2></a>
                                                <a href="adm-page.jsp?pgprt=3"><h2>SORULAR</h2></a>
						<a href="adm-page.jsp?pgprt=1"><h2>ÖĞRENCİLER</h2></a>
					</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
			<div class="content-area">
                            <div class="panel" style="float: left;max-width: 600px">
        
                                
        
            <%
           }else{
               %>
               
               <!-- SIDEBAR -->
			<div class="sidebar" style="background-image: url(sidebar-1.jpg)">
				<div class="sidebar-background" >
					<h2 class="logo-text">
						Online Sınav Sistemi
					</h2>
					<div class="left-menu">
						<a class="active" href="std-page.jsp?pgprt=0"><h2>PROFİL</h2></a>
						<a href="std-page.jsp?pgprt=1"><h2>DERSLER</h2></a>
						<a href="std-page.jsp?pgprt=2"><h2>SONUÇLAR</h2></a>
					</div>
				</div>
		
                       </div>
               <!-- CONTENT AREA -->
			<div class="content-area">
                            <div class="panel" style="float: left;max-width: 600px">
               <%
           }
           if(request.getParameter("pedt")==null){
           %>
           <div class="title">PROFİL</div>
           <div class="profile ">
               <h2><span class="tag">AD-SOYAD</span><span class="val"><%=user.getFirstName()+" " %><%=user.getLastName() %></span><br/>
               <span class="tag">MAİL ADRESİ</span><span class="val"><%=user.getEmail() %></span><br/>
               <span class="tag">TEL NO</span><span class="val"><%=user.getContact() %></span><br/>
           </div>
               <%
               if(user.getType().equals("admin")){
               %>
               <br/>
               <a href="adm-page.jsp?pgprt=0&pedt=1"><span class="add-btn">DÜZENLE</span></a>
               <% 
               }else{
               %><br/>
               <a href="std-page.jsp?pgprt=0&pedt=1"><span class="add-btn">DÜZENLE</span></a>
               <% 
               }
               %>
           
           <%
           }else{
               %>
               
               <!-- Start of Edit Form --->
               <div class="title">PROFİL DÜZENLE</div>
               <div class="central-div form-style-6" style="position:inherit;margin-top: 70px;" >
                    <form action="controller.jsp">
                        <input type="hidden" name="page" value="profile"> 
                        <input type="hidden" name="utype" value="<%=user.getType()%>">
				<table>
					
					<tr>
						<td>
							<label>AD</label>
						</td>
						<td>
                                                    <input type="text" name="fname" value="<%=user.getFirstName() %>" class="text" placeholder="AD">
						</td>
					</tr>
					<tr>
						<td>
							<label>SOYAD</label>
						</td>
						<td>
                                                    <input type="text"  name="lname" value="<%=user.getLastName() %>" class="text" placeholder="SOYAD">
						</td>
					</tr>
					
					<tr>
						<td>
							<label>KULLANICI ADI</label>
						</td>
						<td>
                                                    <input type="text" name="uname" value="<%=user.getUserName() %>" class="text" placeholder="User Name">
						</td>
					</tr>
					<tr>
						<td>
							<label>MAİL ADRESİ</label>
						</td>
						<td>
                                                    <input type="email" name="email" value="<%=user.getEmail() %>" class="text" placeholder="Email">
						</td>
					</tr>
					
					<tr>
						<td>
							<label>ŞİFRE</label>
						</td>
						<td>
                                                    <input type="password" value="<%=user.getPassword() %>" name="pass" class="text" placeholder="Password">
						</td>
					</tr>
                                        <tr>
						<td>
							<label>TELFON NUMARASI</label>
						</td>
						<td>
                                                    <input type="text" name="contactno" value="<%=user.getContact() %>" class="text" placeholder="Contact No">
						</td>
					</tr>
                                    
					<tr>
						<td>
						</td>
						<td>
							<center>
							
							<input type="submit" value="KAYDET" class="button">
							</center>
						</td>
					</tr>
				</table>
			</form>
		</div>

                
               <%
           }
           %>
    
        </div>
    </div>