package com.servlets;

import java.io.IOException;
import java.io.InputStream;
import com.service.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.model.User;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
@MultipartConfig
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the profile picture part
        Part filePart = request.getPart("registerProfilePicture");
        byte[] profilePicture = null;

        // profilepicture storage
        
        if (filePart != null) {
            // Convert file part to byte array
            InputStream inputStream = filePart.getInputStream();
            profilePicture = new byte[(int) filePart.getSize()];
            inputStream.read(profilePicture);
            inputStream.close();
        }

        String un = request.getParameter("registerUsername");
        String pw = request.getParameter("registerPassword");
        String email = request.getParameter("registerEmail");

        if (!un.equals("") && !pw.equals("") && !email.equals("")) {
            User user = new User();
            user.setUsername(un);
            user.setPassword(pw);
            user.setEmail(email);
            user.setProfilePicture(profilePicture);  // Set the profile picture

            UserService uService = new UserServiceImpl();
            uService.userSignup(user);
            System.out.println("User " + user.getEmail() + " added successfully!");
            request.setAttribute("msgsuccess", "Sign in success! Please log in.....");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("SignUpForm.jsp").forward(request, response);
        }
	}

}
