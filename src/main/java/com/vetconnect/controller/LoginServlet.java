package com.vetconnect.controller;

import com.vetconnect.model.Usuario;
import com.vetconnect.service.UsuarioService;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    private UsuarioService usuarioService = new UsuarioService();

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String correo = request.getParameter("correo");
        String contraseña = request.getParameter("contraseña");

        Usuario usuario = usuarioService.iniciarSesion(correo, contraseña);

        if (usuario != null) {

            HttpSession session = request.getSession();
            session.setAttribute("usuario", usuario);

            response.sendRedirect(request.getContextPath() + "/views/dashboard.jsp?prueba");
        } else {

            response.sendRedirect(request.getContextPath() + "/views/login.jsp");

        }

    }

}