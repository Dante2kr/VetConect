package com.vetconnect.repository;

import com.vetconnect.model.Usuario;
import java.util.ArrayList;
import java.util.List;

public class UsuarioRepository {

    // Nuestra base de datos en memoria
    private static final List<Usuario> usuarios = new ArrayList<>();

    // Agregar usuario
    public void guardar(Usuario usuario) {
        usuarios.add(usuario);
    }

    // Obtener todos los usuarios
    public List<Usuario> listar() {
        return usuarios;
    }

    // Buscar usuario por correo
    public Usuario buscarPorCorreo(String correo) {
        for (Usuario usuario : usuarios) {
            if (usuario.getCorreo().equalsIgnoreCase(correo)) {
                return usuario;
            }
        }
        return null;
    }

    // Validar inicio de sesión
    public Usuario iniciarSesion(String correo, String contraseña) {
        for (Usuario usuario : usuarios) {
            if (usuario.getCorreo().equalsIgnoreCase(correo)
                    && usuario.getContraseña().equals(contraseña)) {
                return usuario;
            }
        }
        return null;
    }
}