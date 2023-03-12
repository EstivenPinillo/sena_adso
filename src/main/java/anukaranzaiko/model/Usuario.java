package anukaranzaiko.model;

import java.util.ArrayList;
import java.util.function.Function;
import java.sql.*;

public class Usuario {
    
    private int idUsuario;
    private int idPerfil;
    private int idTipoDcmnt;
    private int idEstado;
    private String nombre;
    private String apellido;
    private String documento;
    private String correo;
    private String clave;
    private String created_at;

   

    public Usuario(int idUsuario,String nombre,String apellido, String correo, String created_at){

        this.idUsuario = idUsuario;
        this.nombre = nombre;
        this.apellido = apellido;
        this.correo = correo;
        this.created_at = created_at;

    }

    public int insert(Usuario usuario) throws Exception {
        
        int trueFalse;
        Statement statement;
        Connection connection = new Model().conexion();
        statement = connection.createStatement();
        trueFalse = statement.executeUpdate("insert into tbl_usuario (id_perfil, id_td, id_estado, nombre, apellido, correo, clave)"
                                            +" values (1,1,1,'"+usuario.getNombre()+"','"+usuario.getApellido()+"','"+usuario.getCorreo()+"','"+usuario.getClave()+"')");
        
        return trueFalse;
    }

    public Boolean IniciarSesion(Usuario usuario) throws Exception {

        Statement statement;
        ResultSet resultSet;
        Connection connection = new Model().conexion();

        statement = connection.createStatement();
        resultSet = statement.executeQuery("select * from tbl_usuario where correo='"+usuario.getCorreo()+"'");
    
        if (resultSet.next()) {
    
            String correo = resultSet.getString("correo");
            String clave = resultSet.getString("clave");
            return correo.equals(usuario.getCorreo()) && clave.equals(usuario.getClave());
            
        }else{
            return false;
        }

    }

    public ArrayList<Usuario> Listar() throws Exception {

        Statement statement;
        ResultSet resultSet;

        Connection connection = new Model().conexion();
        statement = connection.createStatement();
        resultSet = statement.executeQuery("select * from tbl_usuario");

        ArrayList<Usuario> usuarios = new ArrayList<>();
        
        while(resultSet.next()) {

            int idUsuario = resultSet.getInt("id_usuario");
            String nombre = resultSet.getString("nombre");
            String apellido = resultSet.getString("apellido");
            String correo = resultSet.getString("correo");
            String created_at = resultSet.getString("created_at");

            Usuario usuario = new Usuario(idUsuario,nombre, apellido, correo, created_at);
            usuarios.add(usuario);
        }

        return usuarios;
    }

    public void eliminar(Usuario usuario) throws Exception {
        
        Statement statement;
        Connection connection = new Model().conexion();
        statement = connection.createStatement();
        int trueFalse = statement.executeUpdate("delete from tbl_usuario where id_usuario="+usuario.getIdUsuario()+"");
        
    }

    public ArrayList<Usuario> selectById(Usuario usuario) throws Exception {

        Statement statement;
        ResultSet resultSet;

        Connection connection = new Model().conexion();
        statement = connection.createStatement();
        resultSet = statement.executeQuery("select * from tbl_usuario where id_usuario="+usuario.getIdUsuario());

        ArrayList<Usuario> usuarios = new ArrayList<>();
        
        while(resultSet.next()) {

            int idUsuario = resultSet.getInt("id_usuario");
            String nombre = resultSet.getString("nombre");
            String apellido = resultSet.getString("apellido");
            String correo = resultSet.getString("correo");
            String created_at = resultSet.getString("created_at");

            Usuario usuarioss = new Usuario(idUsuario,nombre, apellido, correo, created_at);
            usuarios.add(usuarioss);
        }

        return usuarios;
    }

    public void update(Usuario usuario) throws Exception {

        Statement statement;
        Connection connection = new Model().conexion();
        statement = connection.createStatement();
        int trueFalse = statement.executeUpdate("update tbl_usuario set nombre='"+usuario.getNombre()+"',apellido='"+usuario.getApellido()+"', correo='"+usuario.getCorreo()+"' where id_usuario="+usuario.getIdUsuario());

    }

    public Usuario(){
        
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getIdPerfil() {
        return idPerfil;
    }

    public void setIdPerfil(int idPerfil) {
        this.idPerfil = idPerfil;
    }

    public int getIdTipoDcmnt() {
        return idTipoDcmnt;
    }

    public void setIdTipoDcmnt(int idTipoDcmnt) {
        this.idTipoDcmnt = idTipoDcmnt;
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

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

}
