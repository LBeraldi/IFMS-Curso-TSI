/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.javabd;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

public class FilmesDAO {
    private BD bd = null;

    public FilmesDAO() {
        bd = new BD();
        bd.getConnection();
    }

    public void incluir(Filme filme) {
        try {
            String sql = "INSERT INTO FILMES " + "(CODIGO, TITULO, GENERO, PRODUTORA, DATACOMPRA) " + "VALUES(?, ?, ?, ?, ?)";
            PreparedStatement st = bd.connection.prepareStatement(sql);
            st.setString(1, filme.getCodigo());
            st.setString(2, filme.getTitulo());
            st.setString(3, filme.getGenero());
            st.setString(4, filme.getProdutora());
            st.setString(5, filme.getDataCompra());
            if (!st.execute()) JOptionPane.showMessageDialog(null, "Filme Cadastrado com Sucesso.");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Falha ao executar SQL: " + ex.toString());
        }
        bd.close();
    }

    public void remover(Filme filme) {
        try {
            String sql = "DELETE FROM FILMES WHERE CODIGO = ?";
            PreparedStatement st = bd.connection.prepareStatement(sql);
            st.setString(1, filme.getCodigo());
            int rowsAffected = st.executeUpdate();
            if (rowsAffected > 0) {
                JOptionPane.showMessageDialog(null, "Filme removido com sucesso.");
            } else {
                JOptionPane.showMessageDialog(null, "Filme não encontrado.");
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Falha ao executar SQL: " + ex.toString());
        }
    }

    public void atualizar(Filme filme) {
        try {
            String sql = "UPDATE FILMES SET TITULO = ?, GENERO = ?, PRODUTORA = ?, DATACOMPRA = ? WHERE CODIGO = ?";
            PreparedStatement st = bd.connection.prepareStatement(sql);
            st.setString(1, filme.getTitulo());
            st.setString(2, filme.getGenero());
            st.setString(3, filme.getProdutora());
            st.setString(4, filme.getDataCompra());
            st.setString(5, filme.getCodigo());

            int rowsAffected = st.executeUpdate();
            if (rowsAffected > 0) {
                JOptionPane.showMessageDialog(null, "Filme atualizado com sucesso.");
            } else {
                JOptionPane.showMessageDialog(null, "Filme não encontrado para atualização.");
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Falha ao executar SQL: " + ex.toString());
        }
    }

    public void consultar() {
        try {
            String sql = "SELECT * FROM FILMES WHERE CODIGO = ?";
            PreparedStatement st = bd.connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                Filme filme = new Filme();
                filme.setCodigo(rs.getString("codigo"));
                filme.setTitulo(rs.getString("titulo"));
                filme.setGenero(rs.getString("genero"));
                filme.setProdutora(rs.getString("produtora"));
                filme.setDataCompra(rs.getString("datacompra"));

                System.out.println("Título: " + filme.getTitulo());
                System.out.println("Gênero: " + filme.getGenero());
                System.out.println("Produtora: " + filme.getProdutora());
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Falha ao executar SQL: " + ex.toString());
        }
    }
}
