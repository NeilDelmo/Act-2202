/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package information_system;

/**
 *
 * @author john Emjay
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/information_system";
    private static final String USER =  "root";
    private static final String PASSWORD = "root";
    
    public static Connection getConnection(){
        Connection connection = null;
        try{
            connection = DriverManager.getConnection(URL,USER,PASSWORD);
            System.out.println("DATABASE CONNECTED SUCCESSFULLY");
        } catch(SQLException e){
            e.printStackTrace();
        }
        return connection;
    
}
    
}
