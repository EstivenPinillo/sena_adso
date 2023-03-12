package anukaranzaiko.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sound.midi.VoiceStatus;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import anukaranzaiko.model.Usuario;

public class UsuarioController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 

            String requestUri = request.getRequestURI();
            String newURL;

            switch (requestUri) {

                case "/anukaranzaiko/UsuarioController/registrar":

                    newURL = "/anukaranzaiko/UsuarioRegistrar.jsp";
                    response.sendRedirect(newURL);
                break;
                
                case "/anukaranzaiko/UsuarioController/listar":

                    UsuarioListar(request, response);
                break;

                default:
                break;
            }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String requestUri = request.getRequestURI();
        switch (requestUri) {
            
            case "/anukaranzaiko/UsuarioController/registrar":
        
                UsuarioRegistrar(request, response);
            break;

            case "/anukaranzaiko/UsuarioController/iniciarSesion":
            
                try {
                    IniciarSesion(request, response);
                } catch (Exception e) {
                    response.setContentType("text/html");
                    response.getWriter().print(e);
                }
            break;

            case "/anukaranzaiko/UsuarioController/eliminar":
        
                UsuarioElimninar(request, response);
            break;
            
            case "/anukaranzaiko/UsuarioController/editar":

                UsuarioSelectById(request, response);
            break;

            case "/anukaranzaiko/UsuarioController/editarPost":

                UsuarioUpdate(request, response);
            break;

            default:

            break;
        } 

    }

    private void UsuarioUpdate(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {  
        
        try {

            Usuario usuario = new Usuario();
            
            usuario.setIdUsuario(Integer.parseInt(request.getParameter("idUsuario")));
            usuario.setNombre(request.getParameter("nombre"));
            usuario.setApellido(request.getParameter("apellido"));
            usuario.setCorreo(request.getParameter("correo"));
            usuario.update(usuario);

            UsuarioListar(request, response);

        } catch (Exception e) {
            response.setContentType("text/html");
            response.getWriter().print(e);
        }

    }

    private void UsuarioSelectById(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {  
        
        try {

            Usuario usuario = new Usuario();
            usuario.setIdUsuario(Integer.parseInt(request.getParameter("idUsuario")));

            ArrayList<Usuario> usuarios = new Usuario().selectById(usuario);
            Gson gson = new Gson();
            String usuariosJson = gson.toJson(usuarios);
            String newURL = request.getContextPath() + "/UsuarioEditar.jsp?usuarios=" + URLEncoder.encode(usuariosJson, "UTF-8");
            response.sendRedirect(newURL);

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private void UsuarioElimninar(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException { 

        Usuario usuario = new Usuario();

        usuario.setIdUsuario(Integer.parseInt(request.getParameter("idUsuario")));

        try {
            usuario.eliminar(usuario);
        } catch (Exception e) {
            response.setContentType("text/html");
            response.getWriter().print(e);
        }

        UsuarioListar(request, response);

    }

    private void UsuarioRegistrar(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
        
        try {

            Usuario usuario = new Usuario();

            usuario.setApellido(request.getParameter("apellido"));
            usuario.setNombre(request.getParameter("nombre"));
            usuario.setCorreo(request.getParameter("correo"));
            usuario.setDocumento(request.getParameter("numeroDocumento"));
            usuario.setClave(request.getParameter("clave"));

            usuario.insert(usuario);

            UsuarioListar(request, response);
            
        } catch (Exception e) {
            response.setContentType("text/html");
            response.getWriter().print(e);
        }

    }

    private void UsuarioListar(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
    
        try {

            ArrayList<Usuario> usuarios = new Usuario().Listar();
            Gson gson = new Gson();
            String usuariosJson = gson.toJson(usuarios);
            String newURL = request.getContextPath() + "/UsuarioListar.jsp?usuarios=" + URLEncoder.encode(usuariosJson, "UTF-8");
            response.sendRedirect(newURL);

            

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private void IniciarSesion(HttpServletRequest request, HttpServletResponse response)  throws Exception, IOException  {

        try {

            Usuario usuario = new Usuario();
            
            usuario.setCorreo(request.getParameter("numeroDocumentoCorreo"));
            usuario.setClave(request.getParameter("contrasena"));

            Boolean iniciarSesion = usuario.IniciarSesion(usuario);
            
            if(iniciarSesion){
                String newURL = "/anukaranzaiko/Home.jsp";
                response.sendRedirect(newURL);
            }else{
                String newURL = "/anukaranzaiko/index.jsp";
                response.sendRedirect(newURL);
            }
            
        } catch (Exception e) {
            response.setContentType("text/html");
            response.getWriter().print(e);
        }

    }


}
