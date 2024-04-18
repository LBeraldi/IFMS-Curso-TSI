/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.javabd;

import java.sql.PreparedStatement;
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
            String sql = "insert into filmes "
                    + "(codigo, titulo, genero, produtora, datacompra) "
                    + "values(?, ?, ?, ?, ?)";
            PreparedStatement st = bd.connection.prepareStatement(sql);
            st.setString(1, filme.getCodigo());
            st.setString(2, filme.getTitulo());
            st.setString(3, filme.getGenero());
            st.setString(4, filme.getProdutora());
            st.setString(5, filme.getDataCompra());
            if(!st.execute()) 
                JOptionPane.showMessageDialog(null,
                        "Filme Cadastrado com Sucesso.");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, 
                    "Falha ao executar SQL: " + ex.toString());
        }
        bd.close();
    }
    
    public void remover() {
        try {
            String sql = "delete from filmes where codigo = ?";
            PreparedStatement st = bd.connection.prepareStatement(sql);
            st.setString(1, codigo);
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
    
    public void atualizar() {
        
    }
    
    public void consultar() {
        
    }
}
