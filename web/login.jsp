
<!DOCTYPE html>
<%@page pageEncoding="UTF-8"%>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body style="background-image: url(sivas.jpg);">
	<center>
		<div class="central-div">
			<form method='post' action="controller.jsp">
                             <input type="hidden" name="page" value="login"> 
                
				<table>
					<tr>
						<td colspan="2">
							<center><h2>ÖĞRENCİ/ÖĞRETMEN GİRİŞ</h2></center>
						</td>
					</tr>
					<tr>
						<td>
							<label>KULLANICI ADI(ÖĞRENCİ NUMARASI)</label>
						</td>
						<td>
                                                    <input type="text" class="text" placeholder=" " name="username">
						</td>
					</tr>
					<tr>
						<td>
							<label>Şifre</label>
						</td>
						<td>
                                                    <input type="password" class="text" placeholder=" " name="password">
						</td>
					</tr>
					<tr>
						<td>
							
						</td>
						<td>
                                                    <% 
                                                        if(request.getSession().getAttribute("userStatus")!=null){
                                                            System.out.println("its called");
                                                      if(request.getSession().getAttribute("userStatus").equals("-1")){  
                                                          System.out.println("now inside");
                                                    %>
                                                    <script>alert("Kullanıcı adı veya şifre yanlış");</script>
                                                    <p style="color: rgba(255, 255, 51, 1);font-size: 17px">Kullanıcı adı veya şifre yanlış</p>
                                                    <br>
                                                    <%
                                                      }
                                                        }
                                                          %>
                                                    
                                                    
                                                    </td>
					</tr>
					<tr>
						<td>
						</td>
						<td>
							<center>
							<input type="submit" value="Giriş" class="button">
							</center>
						</td>
					</tr>
				</table>
			</form>
                                                          
                                                         
		</div>
                                 
</body>
</html>