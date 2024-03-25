/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bioskop.eternal;

import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author eva,nigsih,nabila,audi
 */
public class Koneksi {
    private static java.sql.Connection MySQLConfig;
    
    public static java.sql.Connection configDB()throws SQLException{
        try{
            String url = "jdbc:mysql://localhost:3306/bioskopethernal";
            String user = "root";
            String pass = "";
            
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            MySQLConfig = DriverManager.getConnection(url, user, pass);
        }catch(SQLException e){
            System.out.println("Koneksi ke Database Gagal " + e.getMessage());
        }
        
        return MySQLConfig;
    }
}
