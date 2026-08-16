package com.vetconnect.repository;

import com.vetconnect.model.Cita;
import java.util.ArrayList;
import java.util.List;

public class CitaRepository {

    private static final List<Cita> citas = new ArrayList<>();

    public void guardar(Cita cita){
        citas.add(cita);
    }

    public List<Cita> listar(){
        return citas;
    }

    public Cita buscarPorId(int id){

        for(Cita cita : citas){

            if(cita.getId()==id){
                return cita;
            }

        }

        return null;
    }

}