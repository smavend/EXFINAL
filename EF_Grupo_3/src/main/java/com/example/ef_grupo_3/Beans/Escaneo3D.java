package com.example.ef_grupo_3.Beans;

import com.example.ef_grupo_3.Daos.CostoRealizacion;

public class Escaneo3D implements CostoRealizacion {
    private int id;
    private double largo;
    private double ancho;
    private double altura;
    private String resolucion;
    private String fecha;
    private double costo;
    private double realizacion;
    private Usuario usuario;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getLargo() {
        return largo;
    }

    public void setLargo(double largo) {
        this.largo = largo;
    }

    public double getAncho() {
        return ancho;
    }

    public void setAncho(double ancho) {
        this.ancho = ancho;
    }

    public double getAltura() {
        return altura;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }

    public String getResolucion() {
        return resolucion;
    }

    public void setResolucion(String resolucion) {
        this.resolucion = resolucion;
    }
    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public double getCosto() {
        return costo;
    }

    public double getRealizacion() {
        return realizacion;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    @Override
    public void setCosto() {

    }

    @Override
    public void setRealizacion() {

    }
}
