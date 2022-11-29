package com.example.ef_grupo_3.Daos;
import
import com.example.ef_grupo_3.Beans.CorteLaser;
import com.example.ef_grupo_3.Beans.Escaneo3D;
import com.example.ef_grupo_3.Beans.Impresion3D;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DaoServicios extends DaoBase{

    public ArrayList<Impresion3D> listarImpresion3D() {
        ArrayList<Impresion3D> listaImpresion3D = new ArrayList<>();
        String sql = "SELECT * FROM impresion3d";

        try (Connection connection = this.getConnection();
             Statement stm = connection.createStatement();
             ResultSet rs = stm.executeQuery(sql)) {


            while(rs.next()){
                Impresion3D impresion3D = new Impresion3D();
                impresion3D.setFecha(rs.getString(9));
                impresion3D.setCosto();
                impresion3D.setRealizacion();

                listaImpresion3D.add(impresion3D);
            }
        } catch (SQLException throwables){
            throwables.printStackTrace();
        }

        return listaImpresion3D;
    }

    public ArrayList<CorteLaser> listarCorteLaser() {
        ArrayList<CorteLaser> listaCorteLaser = new ArrayList<>();
        String sql = "SELECT * FROM cortelaser";

        try (Connection connection = this.getConnection();
             Statement stm = connection.createStatement();
             ResultSet rs = stm.executeQuery(sql)) {

            while(rs.next()){
                CorteLaser corteLaser = new CorteLaser();


                listaCorteLaser.add(corteLaser);
            }
        } catch (SQLException throwables){
            throwables.printStackTrace();
        }

        return listaCorteLaser;
    }
    public ArrayList<Escaneo3D> listarEscaneo3D() {
        ArrayList<Escaneo3D> listaEscaneo3D = new ArrayList<>();
        String sql = "SELECT * FROM escaneo3d";

        try (Connection connection = this.getConnection();
             Statement stm = connection.createStatement();
             ResultSet rs = stm.executeQuery(sql)) {


            while(rs.next()){
                Escaneo3D escaneo3D = new Escaneo3D();



                listaEscaneo3D.add(escaneo3D);
            }
        } catch (SQLException throwables){
            throwables.printStackTrace();
        }

        return listaEscaneo3D;
    }



}
