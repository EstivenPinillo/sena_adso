package anukaranzaiko.model;
import java.sql.*;
import java.util.ArrayList;

public class Estado {
    
    private int idEstado;
    private String nombre;
    private String descripcion;

    public Estado(int idEstado, String nombre, String descripcion) {
        this.idEstado =  idEstado;
        this.nombre = nombre;
        this.descripcion = descripcion;
    }

    public Estado() {
        
    }

    public ArrayList<Estado> select() throws Exception {
        
        Statement statement;
        ResultSet resultSet;

        Connection connection = new Model().conexion();
        statement = connection.createStatement();
        resultSet = statement.executeQuery("select * from tbl_estado");

        ArrayList<Estado> estados = new ArrayList<>();
        
        while(resultSet.next()) {
            int idEstado = resultSet.getInt("id_estado");
            String nombre = resultSet.getString("nombre");
            String descripcion = resultSet.getString("descripcion");

            Estado estado = new Estado(idEstado, nombre, descripcion);
            estados.add(estado);
        }
        
        return estados;
    }

    public void insert() {

    }

    public void update() {

    }

    public void delete(){

    }

    public int getIdEstado() {
        return idEstado;
    }

    public void setIdEstado(int idEstado) {
        this.idEstado = idEstado;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

}
