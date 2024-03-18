import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Methods")
public class Methods1 extends HttpServlet {
	Connection con;
	public void init(ServletConfig config) {;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/api","root","mysql");
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			PrintWriter out=response.getWriter();
			response.setContentType("text/html");
				try {
					String opt=request.getParameter("opti");
					System.out.println("option: "+opt);
					if(opt.equals("option1")) {
//						out.println("<body><form method='post'action='Methods1'>");
//						out.println("Enter the Roll_No:<input type='number' name='roll_no'/>");
//						out.println("Enter the Student Name:<input type='text' name='name'/>");
//						out.println("Enter the Student Grade:<input type='text' name='grade'/>");
//						out.println("<input type='submit' value='submit'/>");
						String no=request.getParameter("roll_no");
						int roll_no=Integer.parseInt(no);
						String name=request.getParameter("name");
						String grade=request.getParameter("grade");
						System.out.println(roll_no +" "+name +" "+ grade);
						PreparedStatement st = con.prepareStatement("insert into students values("+roll_no+",'"+name+"','"+grade+"')");
						st.executeUpdate();
						System.out.println("Inserted");
						out.println("Student data successfully inserted");
					}
					if(opt.equals("option2")) {
						String no=request.getParameter("roll_no");
						int roll_no=Integer.parseInt(no);
						String name=request.getParameter("name");
						String grade=request.getParameter("grade");
						PreparedStatement st = con.prepareStatement("update students set name='"+name+"',grade='"+grade+"' where roll_no="+roll_no+"");
						st.executeUpdate();
						System.out.println("Updated");
						out.println("Student data successfully updated");
					}
					if(opt.equals("option3")) {
						String no=request.getParameter("roll_no");
						int roll_no=Integer.parseInt(no);
						PreparedStatement st = con.prepareStatement("delete from students where roll_no="+roll_no+"");
						st.executeUpdate();
						System.out.println("Deleted");
						out.println("Student data successfully deleted");
					}
					if(opt.equals("option4")) {
//						RequestDispatcher dispatcher = request.getRequestDispatcher("js.jsp");
//						int roll_no_value;
//						String name_value;
//						String grade_value;
//						dispatcher.forward(request, response);
						String no=request.getParameter("roll_no");
						int roll_no=Integer.parseInt(no);
						PreparedStatement st = con.prepareStatement("select *  from students where roll_no="+roll_no+"");
						ResultSet rs=st.executeQuery();
						if(rs.next()) {
							out.println("Roll No:"+rs.getInt("roll_no")+" Name:"+ ""+rs.getString("name")+" Grade:"+rs.getString("grade")+"<br>");
//								roll_no_value=rs.getInt("roll_no");
//								name_value=rs.getString("name");
//								grade_value=rs.getString("grade");
//								request.setAttribute("roll_no", roll_no_value);
//								request.setAttribute("name", name_value);
//								request.setAttribute("grade",grade_value);
						}
						else {
							System.err.println("No data found");
						}
						System.out.println("Data Found");
						out.println("Student data successfully fetched");
					}
					if(opt.equals("option5")) {
						PreparedStatement st = con.prepareStatement("select *  from students");
						ResultSet rs=st.executeQuery();
						if(rs.next()) {
							out.println("Roll No:"+rs.getInt("roll_no")+" Name:"+ ""+rs.getString("name")+" Grade:"+rs.getString("grade")+"<br>");
							while(rs.next()) {
								out.println("Roll No:"+rs.getInt("roll_no")+" Name:"+ ""+rs.getString("name")+" Grade:"+rs.getString("grade"));
								
							}
						}
						else {
							System.err.println("No data found");
						}
						System.out.println("Data Found");
						out.println("Student data successfully fetched");
					}
	

				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	public void destroy() {
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}