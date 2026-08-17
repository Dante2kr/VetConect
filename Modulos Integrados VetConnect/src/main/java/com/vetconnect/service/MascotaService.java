package com.vetconnect.service;

import com.vetconnect.model.Mascota;
import com.vetconnect.repository.MascotaRepository;

import java.util.List;

public class MascotaService {

    private MascotaRepository mascotaRepository;

    public MascotaService() {
        mascotaRepository = new MascotaRepository();
    }

    public List<Mascota> listarMascotas() {

        return mascotaRepository.listar();
    }

    public void guardarMascota(Mascota mascota) {

        mascotaRepository.guardar(mascota);
    }
}