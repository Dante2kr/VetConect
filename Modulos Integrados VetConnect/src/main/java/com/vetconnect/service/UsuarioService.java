package com.vetconnect.service;

import com.vetconnect.model.Usuario;
import com.vetconnect.repository.UsuarioRepository;
import java.util.List;

public class UsuarioService {

    private UsuarioRepository repository = new UsuarioRepository();

    // Registrar usuario
    public void registrarUsuario(Usuario usuario) {
        repository.guardar(usuario);
    }

    // Obtener todos los usuarios
    public List<Usuario> obtenerUsuarios() {
        return repository.listar();
    }

    // Buscar por correo
    public Usuario buscarPorCorreo(String correo) {
        return repository.buscarPorCorreo(correo);
    }

    // Iniciar sesión
    public Usuario iniciarSesion(String correo, String contraseña) {
        return repository.iniciarSesion(correo, contraseña);
    }

}