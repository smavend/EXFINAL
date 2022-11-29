package com.example.ef_grupo_3.Daos;

import com.example.ef_grupo_3.Beans.Impresion3D;

public class DaoServicios extends DaoBase{

    public ArrayList<Impresion3D> listarImpresion3D() {
        ArrayList<Impresion3D> listaImpresion3D = new ArrayList<>();
        String sql = "SELECT * FROM arbitro";

        try (Connection connection = this.getConnection();
             Statement stm = connection.createStatement();
             ResultSet rs = stm.executeQuery(sql)) {


            while(rs.next()){
                Arbitro arbitro = new Arbitro();
                arbitro.setIdArbitro(rs.getInt(1));
                arbitro.setNombre(rs.getString(2));
                arbitro.setPais(rs.getString(3));

                arbitros.add(arbitro);
            }
        } catch (SQLException throwables){
            throwables.printStackTrace();
        }

        return listaImpresion3D;
    }



}
