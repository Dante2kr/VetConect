package com.vetconnect.controller;

import com.vetconnect.model.Cita;
import com.vetconnect.service.CitaService;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/CitaServlet")
public class CitaServlet extends HttpServlet {

    private CitaService citaService = new CitaService();

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Cita cita = new Cita();

        cita.setId(citaService.obtenerCitas().size() + 1);
        cita.setFecha(request.getParameter("fecha"));
        cita.setHora(request.getParameter("hora"));
        cita.setMascota(request.getParameter("mascota"));
        cita.setVeterinaria(request.getParameter("veterinaria"));
        cita.setServicio(request.getParameter("servicio"));
        cita.setEstado("Pendiente");

        citaService.registrarCita(cita);

        response.sendRedirect("views/listarCitas.jsp");

    }

}