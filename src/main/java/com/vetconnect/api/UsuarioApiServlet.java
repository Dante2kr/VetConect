package com.vetconnect.api;

import com.vetconnect.model.Usuario;
import com.vetconnect.service.UsuarioService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/api/usuarios")
public class UsuarioApiServlet extends HttpServlet {

    private UsuarioService usuarioService = new UsuarioService();

    // GET /api/usuarios
    // Obtiene todos los usuarios
    @Override
    protected void doGet(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        List<Usuario> usuarios = usuarioService.obtenerUsuarios();

        StringBuilder json = new StringBuilder();

        json.append("[");

        for (int i = 0; i < usuarios.size(); i++) {

            Usuario usuario = usuarios.get(i);

            json.append("{")
                .append("\"id\":").append(usuario.getId()).append(",")
                .append("\"nombre\":\"").append(usuario.getNombre()).append("\",")
                .append("\"apellido\":\"").append(usuario.getApellido()).append("\",")
                .append("\"correo\":\"").append(usuario.getCorreo()).append("\",")
                .append("\"telefono\":\"").append(usuario.getTelefono()).append("\"")
                .append("}");

            if (i < usuarios.size() - 1) {
                json.append(",");
            }
        }

        json.append("]");

        response.getWriter().write(json.toString());
    }

    // POST /api/usuarios
    // Registra un nuevo usuario
    @Override
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

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

        response.getWriter().write(
            "{\"mensaje\":\"Usuario registrado correctamente\"}"
        );
    }
}