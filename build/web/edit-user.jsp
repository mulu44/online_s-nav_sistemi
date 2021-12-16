<%@page pageEncoding="UTF-8"%>
<div class="central-div" style="top:10%">
                    <form action="controller.jsp">
                        <input type="hidden" name="page" value="PROFİL"> 
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
					
					
						<td>
							<label>KULLANICI ADI</label>
						</td>
						
                                                    <input type="text" name="uname" value="<%=user.getUserName() %>" class="text" placeholder="KULLANICI ADI">
						
					
					<tr>
						<td>
							<label>MAİL ADRESİ</label>
						</td>
						<td>
                                                    <input type="email" name="email" value="<%=user.getEmail() %>" class="text" placeholder="MAİL ADRESİ">
						</td>
					</tr>
					
					<tr>
						<td>
							<label>ŞİFRE</label>
						</td>
						<td>
                                                    <input type="password" value="<%=user.getPassword() %>" name="pass" class="text" placeholder="ŞİFRE">
						</td>
					</tr>
                                        <tr>
						<td>
							<label>TELEFON NUMARASI</label>
						</td>
						<td>
                                                    <input type="text" name="contactno" value="<%=user.getContact() %>" class="text" placeholder="TELEFON NUMARASI">
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