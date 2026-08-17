package com.vetconnect.controller;

import com.vetconnect.model.Servicio;
import com.vetconnect.service.ServicioService;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/ServicioServlet")
public class ServicioServlet extends HttpServlet {

    private ServicioService service = new ServicioService();

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        Servicio servicio = new Servicio();

        servicio.setId(service.obtenerServicios().size()+1);
        servicio.setNombre(request.getParameter("nombre"));
        servicio.setDescripcion(request.getParameter("descripcion"));
        servicio.setPrecio(Double.parseDouble(request.getParameter("precio")));

        service.registrarServicio(servicio);

        response.sendRedirect("views/listarServicios.jsp");

    }

}