<%@page pageEncoding="UTF-8"%>
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
                                                <a class="active" href="adm-page.jsp?pgprt=3"><h2>SORULAR</h2></a>
						<a href="adm-page.jsp?pgprt=1"><h2>ÖĞRENCİLER</h2></a>
					</div>
				</div>
			</div>
            <!-- CONTENT AREA -->
            <div class="content-area" >
                            <div class="panel form-style-6" style="min-width: 300px;max-width: 390px;float: left">
            <form action="adm-page.jsp">
                <div class="title">SINAV GÖRÜNTÜLEME</div>
                <br><br>
                <label>SINAV SEÇ</label>
                <input type="hidden" name="pgprt" value="4">
                <select name="coursename" class="text">
        <% 
            ArrayList list1=pDAO.getAllCourses();
            
            for(int i=0;i<list1.size();i=i+2){
        %>
        <option value="<%=list1.get(i)%>"><%=list1.get(i)%></option>
            <%
            }
            %>
            </select>
            <input type="submit" value="SEÇ" class="form-button">
            </form>
                            </div>
        
        <div class="panel form-style-6" style="max-width: 420!important;float: right">   
               <form action="controller.jsp" >
                   <div class="title">YENİ SORU EKLE</div>
                   <table >
                       <tr>
                           <td><label>SINAV ADI</label></td>
                           <td colspan="3"> 
                               <select name="coursename" class="text">
        <% 
            ArrayList list=pDAO.getAllCourses();
            
            for(int i=0;i<list.size();i=i+2){
        %>
        <option value="<%=list.get(i)%>"><%=list.get(i)%></option>
            <%
            }
            %>
            </select>
                           </td>
                       </tr>
                       <tr>
                           <td><label>SORU:</label></td>
                           <td colspan="4"><input type="text" name="question" class="text" placeholder=" " style="width: 420px;" ></td><br>
                       </tr>
                       <tr>
                           <td><label>ŞIKLAR</label></td>
                           <td><input type="text" name="opt1" class="text" placeholder="BİRİNCİ ŞIK" style="width: 130px;" ></td>
                           <td><input type="text" name="opt2" class="text" placeholder="İKİNCİ ŞIK" style="width: 130px;" ></td>
                           <td><input type="text" name="opt3" class="text" placeholder="ÜÇÜNCÜ ŞIK" style="width: 130px;" ></td>
                           <td><input type="text" name="opt4" class="text" placeholder="DÖRDÜNCÜ ŞIK" style="width: 130px;" ></td>
                       </tr>
                       <tr>
                           <td><label>DOĞRU CEVAP</label></td>
                           <td colspan="4"><center><input type="text" name="correct" class="text" placeholder=" " style="width: 130px;" ></center></td>
                       <tr>
                           <td colspan="5"><input type="hidden" name="page" value="questions">
                    <input type="hidden" name="operation" value="addnew">
                       <center><input type="submit" class="form-button" value="EKLE" name="submit"></center></td>
                           
                   </tr>
                   </table>

                </form>
           
    
     </div>
                        </div>