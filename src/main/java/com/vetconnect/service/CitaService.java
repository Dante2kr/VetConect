package com.vetconnect.service;

import com.vetconnect.model.Cita;
import com.vetconnect.repository.CitaRepository;
import java.util.List;

public class CitaService {

    private CitaRepository repository = new CitaRepository();

    public void registrarCita(Cita cita){
        repository.guardar(cita);
    }

    public List<Cita> obtenerCitas(){
        return repository.listar();
    }

    public Cita buscarPorId(int id){
        return repository.buscarPorId(id);
    }

}