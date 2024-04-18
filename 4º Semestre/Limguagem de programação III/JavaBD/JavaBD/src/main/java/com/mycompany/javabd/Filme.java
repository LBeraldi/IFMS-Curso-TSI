/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.javabd;


public class Filme {
    private String codigo;
    private String titulo;
    private String genero;
    private String produtora;
    private String dataCompra;

    public Filme() {
    }

    public Filme(String codigo, String titulo, String genero, String produtora, String dataCompra) {
        this.codigo = codigo;
        this.titulo = titulo;
        this.genero = genero;
        this.produtora = produtora;
        this.dataCompra = dataCompra;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getProdutora() {
        return produtora;
    }

    public void setProdutora(String produtora) {
        this.produtora = produtora;
    }

    public String getDataCompra() {
        return dataCompra;
    }

    public void setDataCompra(String dataCompra) {
        this.dataCompra = dataCompra;
    }
}
