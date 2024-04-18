package com.mycompany.javabd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class BD {
    public Connection connection = null;
    final String DRIVER = "com.mysql.cj.jdbc.Driver";
    final String DBNAME = "bancoMySQL";
    final String URL = "jdbc:mysql://localhost:3306/" + DBNAME;
    final String LOGIN = "root";
    final String SENHA = "1234";
    
    public boolean getConnection() {
        try {
            Class.forName(DRIVER);
            connection = DriverManager.getConnection(URL, LOGIN, SENHA);
            System.out.println("Conectou");
            return true;
        } catch (ClassNotFoundException ex) {
            JOptionPane.showMessageDialog(null, "Driver não encontrado: " + ex.toString());
            return false;
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Falha ao conectar: " + ex.toString());
            return false;
        }
        
    }
    
    public void close() {
        try {
            connection.close();
            System.out.println("Fechou");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Problemas ao Fechar a Conexão.");
        }
    }
}
