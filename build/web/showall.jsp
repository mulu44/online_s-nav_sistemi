<%@page pageEncoding="UTF-8"%>
<%@page import="myPackage.classes.Questions"%>
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
                <center>
        <%
           if(request.getParameter("coursename")!=null){
               ArrayList list=pDAO.getAllQuestions(request.getParameter("coursename"));
               for(int i=0;i<list.size();i++){
                   Questions question=(Questions)list.get(i);
                   
                   %>
                   <div class="question-panel">
						<div class="question" >
                                                    <label class="question-label"><%=i+1 %></label>
						<%=question.getQuestion() %>	
<a href="controller.jsp?page=questions&operation=delQuestion&qid=<%=question.getQuestionId() %>" 
                                                                             onclick="return confirm('Bu soruyu silmek istiyor musunu?');" >
    <div class="delete-btn" style="position: absolute;right: 10px;top: -20px;">sil</div></a>
                                                </div>
						<div class="answer">
                                                        <label class="show"><%=question.getOpt1() %></label>
							<label class="show"><%=question.getOpt2() %></label>
							<label class="show"><%=question.getOpt3() %></label>
							<label class="show"><%=question.getOpt4() %></label>
                                                        <label class="show-correct"><%=question.getCorrect() %></label>
						</div>
					</div>
                   
                   <%
               }
          } %>
       </center>
            </div>