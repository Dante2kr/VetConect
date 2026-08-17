package com.vetconnect.repository;

import com.vetconnect.model.Mascota;

import java.util.ArrayList;
import java.util.List;

public class MascotaRepository {

    private static final List<Mascota> mascotas = new ArrayList<>();

    private static int siguienteId = 1;

    static {
        mascotas.add(
            new Mascota(
                siguienteId++,
                "Max",
                "Perro",
                "Labrador"
            )
        );
    }

    public void guardar(Mascota mascota) {

        mascota.setId(siguienteId++);

        mascotas.add(mascota);
    }

    public List<Mascota> listar() {

        return mascotas;
    }
}