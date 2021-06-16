package uas_pbo_2021;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class koneksi {
    private static java.sql.Connection koneksi;
     
      public static java.sql.Connection getKoneksi(){
        if(koneksi == null){
          try{
              String url = "jdbc:mysql://localhost:3306/sporthome_pbo";
              String user = "root";
              String password = "";
              
              DriverManager.registerDriver(new com.mysql.jdbc.Driver());
              
              koneksi = DriverManager.getConnection(url, user, password);
          }catch(SQLException t){
              System.out.println("Error Membuat Koneksi");
          }  
        }
        return koneksi;

    }
}
