package com.vetconnect.model;

public class Cita {

    private int id;
    private String fecha;
    private String hora;
    private String mascota;
    private String veterinaria;
    private String servicio;
    private String estado;

    public Cita() {
    }

    public Cita(int id, String fecha, String hora, String mascota,
            String veterinaria, String servicio, String estado) {

        this.id = id;
        this.fecha = fecha;
        this.hora = hora;
        this.mascota = mascota;
        this.veterinaria = veterinaria;
        this.servicio = servicio;
        this.estado = estado;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getMascota() {
        return mascota;
    }

    public void setMascota(String mascota) {
        this.mascota = mascota;
    }

    public String getVeterinaria() {
        return veterinaria;
    }

    public void setVeterinaria(String veterinaria) {
        this.veterinaria = veterinaria;
    }

    public String getServicio() {
        return servicio;
    }

    public void setServicio(String servicio) {
        this.servicio = servicio;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

}