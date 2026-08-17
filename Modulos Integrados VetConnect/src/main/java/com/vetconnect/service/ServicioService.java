package com.vetconnect.service;

import com.vetconnect.model.Servicio;
import com.vetconnect.repository.ServicioRepository;
import java.util.List;

public class ServicioService {

    private ServicioRepository repository = new ServicioRepository();

    public void registrarServicio(Servicio servicio){
        repository.guardar(servicio);
    }

    public List<Servicio> obtenerServicios(){
        return repository.listar();
    }

}