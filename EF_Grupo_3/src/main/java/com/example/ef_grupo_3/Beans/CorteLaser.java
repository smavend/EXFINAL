package com.example.ef_grupo_3.Beans;


import com.example.ef_grupo_3.Daos.CostoRealizacion;

public class CorteLaser implements CostoRealizacion {
   private int id;
   private String grosor;
   private String color;
   private String material;
   private int alto;
   private int ancho;
   private String url;
   private String fecha;
   private Usuario usuario;
   private double costo;
   private double realizacion;

   public int getId() {
      return id;
   }

   public void setId(int id) {
      this.id = id;
   }

   public String getGrosor() {
      return grosor;
   }

   public void setGrosor(String grosor) {
      this.grosor = grosor;
   }

   public String getColor() {
      return color;
   }

   public void setColor(String color) {
      this.color = color;
   }

   public String getMaterial() {
      return material;
   }

   public void setMaterial(String material) {
      this.material = material;
   }

   public int getAlto() {
      return alto;
   }

   public void setAlto(int alto) {
      this.alto = alto;
   }

   public int getAncho() {
      return ancho;
   }

   public void setAncho(int ancho) {
      this.ancho = ancho;
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

   public Usuario getUsuario() {
      return usuario;
   }

   public void setUsuario(Usuario usuario) {
      this.usuario = usuario;
   }

   public double getCosto() {
      return costo;
   }

   public double getRealizacion() {
      return realizacion;
   }

   @Override
   public void setCosto() {
      double grosor = this.getGrosor().equals("fino")?2.0:3.0;
      double color = this.getColor().equals("rojo")?0.1:0.2;
      double dimensiones = this.getAlto()*this.getAncho()*0.1;
      double desc
   }

   @Override
   public void setRealizacion() {

   }
>>>>>>> ee99634808171906f7a05d80d72e2d14379f8bf8
}
