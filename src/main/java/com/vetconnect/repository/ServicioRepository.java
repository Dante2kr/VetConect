package com.vetconnect.repository;

import com.vetconnect.model.Servicio;
import java.util.ArrayList;
import java.util.List;

public class ServicioRepository {

    private static final List<Servicio> servicios = new ArrayList<>();

    public void guardar(Servicio servicio){
        servicios.add(servicio);
    }

    public List<Servicio> listar(){
        return servicios;
    }

}