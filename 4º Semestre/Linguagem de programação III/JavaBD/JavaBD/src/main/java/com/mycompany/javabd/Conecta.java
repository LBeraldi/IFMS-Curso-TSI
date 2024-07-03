/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package com.mycompany.javabd;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class Conecta {

    public static void main(String[] args) {
        FilmesDAO fdao = new FilmesDAO();
        Filme filme = new Filme("7335", "Teste 2", "Teste 2",
                "Teste 2", "2024-04-15 20:11:00.000");
        fdao.incluir(filme);


//        BD bd = new BD();

//        if (bd.getConnection()) {
//            try {
//                String sql = "SELECT codigo, titulo FROM `filmes`"
//                        + "WHERE codigo > ? AND codigo < ?"
//                        + "ORDER BY codigo";
//                PreparedStatement statement = bd.connection.prepareStatement(sql);
//                statement.setString(1, "03120");
//                statement.setString(2, "03140");
//                ResultSet resulset = statement.executeQuery();
//
//                System.out.println("CODIGO  TITULO");
//                System.out.println("------  -------------------");
//                while (resulset.next()) {
//                    String codigo = resulset.getString("codigo");
//                    String titulo = resulset.getString("titulo");
//                    System.out.println(codigo + "   " + titulo);
//                }
//                resulset.close();
//                statement.close();
//
//                bd.close();
//            } catch (SQLException e) {
//                JOptionPane.showMessageDialog(null, "Problema com o BD: " + e.toString());
//            }
//        } else {
//            JOptionPane.showMessageDialog(null, "Erro ao Conectar");
//        }
    }
}
