package com.vetconnect.controller;

import com.vetconnect.model.Usuario;
import com.vetconnect.service.UsuarioService;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/RegistroServlet")
public class RegistroServlet extends HttpServlet {

    private UsuarioService usuarioService = new UsuarioService();

    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String correo = request.getParameter("correo");
        String telefono = request.getParameter("telefono");
        String contraseña = request.getParameter("contraseña");

        Usuario usuario = new Usuario();

        usuario.setId(usuarioService.obtenerUsuarios().size() + 1);
        usuario.setNombre(nombre);
        usuario.setApellido(apellido);
        usuario.setCorreo(correo);
        usuario.setTelefono(telefono);
        usuario.setContraseña(contraseña);

        usuarioService.registrarUsuario(usuario);

        response.sendRedirect("views/login.jsp");

    }

}