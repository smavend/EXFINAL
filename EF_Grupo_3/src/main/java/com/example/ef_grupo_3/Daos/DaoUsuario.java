package com.example.ef_grupo_3.Daos;

import com.example.ef_grupo_3.Beans.Impresion3D;

public class DaoUsuario extends DaoBase{
    public float costoImpresion(int idImpresion, String correo){
        String sql = "SELECT * FROM impresion3D i inner join usuarios u on (i.correo == u.correo) WHERE correo = ? and id = ";
    }
}
