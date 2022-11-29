package com.example.ef_grupo_3.Daos;

import com.example.ef_grupo_3.Beans.Impresion3D;
import com.example.ef_grupo_3.Beans.Usuario;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DaoUsuario extends DaoBase{
    public double costoImpresion(Impresion3D impresion3D, Usuario usuario){
        double densidad = impresion3D.getDensidad()*0.3;
        double altura = impresion3D.getAltura()*0.3;
        double material = impresion3D.getMaterial().equals("abs")?3:impresion3D.getMaterial().equals("abs")?3
    }
}
