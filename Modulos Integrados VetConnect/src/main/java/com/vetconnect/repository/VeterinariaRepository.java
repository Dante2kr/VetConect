package com.vetconnect.repository;

import com.vetconnect.model.Veterinaria;
import java.util.ArrayList;
import java.util.List;

public class VeterinariaRepository {

    private static final List<Veterinaria> veterinarias = new ArrayList<>();

    public void guardar(Veterinaria veterinaria){
        veterinarias.add(veterinaria);
    }

    public List<Veterinaria> listar(){
        return veterinarias;
    }

    public Veterinaria buscarPorId(int id){

        for(Veterinaria veterinaria : veterinarias){

            if(veterinaria.getId()==id){
                return veterinaria;
            }

        }

        return null;

    }

}