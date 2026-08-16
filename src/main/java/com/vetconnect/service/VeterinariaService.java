package com.vetconnect.service;

import com.vetconnect.model.Veterinaria;
import com.vetconnect.repository.VeterinariaRepository;
import java.util.List;

public class VeterinariaService {

    private VeterinariaRepository repository = new VeterinariaRepository();

    public void registrarVeterinaria(Veterinaria veterinaria){
        repository.guardar(veterinaria);
    }

    public List<Veterinaria> obtenerVeterinarias(){
        return repository.listar();
    }

    public Veterinaria buscarPorId(int id){
        return repository.buscarPorId(id);
    }

}