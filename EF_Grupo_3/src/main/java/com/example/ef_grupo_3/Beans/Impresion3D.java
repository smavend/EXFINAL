package com.example.ef_grupo_3.Beans;

import com.example.ef_grupo_3.Daos.CostoRealizacion;

public class Impresion3D implements CostoRealizacion {
    private int id;
    private int densidad;
    private String grosor;
    private Usuario usuario;
    private double altura;
    private String material;
    private String url;
    private String fecha;
    private int autoservicio;
    private double costo;
    private double realizacion;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDensidad() {
        return densidad;
    }

    public void setDensidad(int densidad) {
        this.densidad = densidad;
    }

    public String getGrosor() {
        return grosor;
    }

    public void setGrosor(String grosor) {
        this.grosor = grosor;
    }

    public double getAltura() {
        return altura;
    }

    public void setAltura(double altura) {
        this.altura = altura;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public int getAutoservicio() {
        return autoservicio;
    }

    public void setAutoservicio(int autoservicio) {
        this.autoservicio = autoservicio;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public double getCosto() {
        return costo;
    }

    public void setCosto(double costo) {
        this.costo = costo;
    }

    public double getRealizacion() {
        return realizacion;
    }

    public void setRealizacion(double realizacion) {
        this.realizacion = realizacion;
    }

    @Override
    public void setCosto() {
        double densidad = this.getDensidad()*0.3;
        double altura = this.getAltura()*0.3;
        double material = this.getMaterial().equals("abs")?3:this.getMaterial().equals("pla")?4:5;
        double descuento = this.getUsuario().getTipoUsuario().equals("interno")?0.8:1.0;
        this.costo = densidad*altura*material*descuento;
    }

    @Override
    public void setRealizacion() {
        this.realizacion = this.getDensidad()*0.1;
    }
}