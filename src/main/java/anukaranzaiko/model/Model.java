package anukaranzaiko.model;
import java.sql.*;

public class Model {

    public Connection conexion() throws Exception {

        Class.forName("com.mysql.cj.jdbc.Driver");

        String usuario = "admin";
        String clave = "admin";
        String url = "jdbc:mysql://localhost:3306/db_sena_adso";
        Connection conexion;

        conexion = DriverManager.getConnection(url,usuario,clave);
        return conexion;
        
    }

}