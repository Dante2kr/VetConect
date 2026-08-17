package com.vetconnect.controller;

import com.vetconnect.model.Mascota;
import com.vetconnect.service.MascotaService;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/MascotaServlet")
public class MascotaServlet extends HttpServlet {

    private MascotaService mascotaService;

    @Override
    public void init() throws ServletException {

        mascotaService = new MascotaService();
    }

    // GET
    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        List<Mascota> mascotas = mascotaService.listarMascotas();

        StringBuilder json = new StringBuilder();

        json.append("[");

        for (int i = 0; i < mascotas.size(); i++) {

            Mascota mascota = mascotas.get(i);

            json.append("{");

            json.append("\"id\":")
                    .append(mascota.getId())
                    .append(",");

            json.append("\"nombre\":\"")
                    .append(mascota.getNombre())
                    .append("\",");

            json.append("\"especie\":\"")
                    .append(mascota.getEspecie())
                    .append("\",");

            json.append("\"raza\":\"")
                    .append(mascota.getRaza())
                    .append("\"");

            json.append("}");

            if (i < mascotas.size() - 1) {
                json.append(",");
            }
        }

        json.append("]");

        response.getWriter().write(json.toString());
    }

    // POST
    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        String nombre = request.getParameter("nombre");
        String especie = request.getParameter("especie");
        String raza = request.getParameter("raza");

        Mascota mascota = new Mascota();

        mascota.setNombre(nombre);
        mascota.setEspecie(especie);
        mascota.setRaza(raza);

        mascotaService.guardarMascota(mascota);

        response.getWriter().write(
                "{\"mensaje\":\"Mascota recibida correctamente\"}"
        );
    }
}