package com.vetconnect.controller;

import com.vetconnect.model.Veterinaria;
import com.vetconnect.service.VeterinariaService;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/VeterinariaServlet")
public class VeterinariaServlet extends HttpServlet {

    private VeterinariaService veterinariaService = new VeterinariaService();

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Veterinaria veterinaria = new Veterinaria();

        veterinaria.setId(veterinariaService.obtenerVeterinarias().size()+1);
        veterinaria.setNombre(request.getParameter("nombre"));
        veterinaria.setDireccion(request.getParameter("direccion"));
        veterinaria.setTelefono(request.getParameter("telefono"));
        veterinaria.setCiudad(request.getParameter("ciudad"));
        veterinaria.setEspecialidad(request.getParameter("especialidad"));

        veterinariaService.registrarVeterinaria(veterinaria);

        response.sendRedirect("views/listarVeterinarias.jsp");

    }

}