/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlers;

import beans.Usuario;
import dao.UsuarioDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Lucas
 */
@WebServlet(name = "ServletUsuario", urlPatterns = {"/ServletUsuario"})
public class ServletUsuario extends HttpServlet {
    
    UsuarioDao dao = new UsuarioDao();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        RequestDispatcher rd = null;
        int opcao = Integer.parseInt(request.getParameter("opcao"));
        
        HttpSession session = request.getSession(true);
        
        if (opcao == 1) 
        { //Login
            
            if(dao.exibirTodos() != null)
            {
            
            Usuario u1 = new Usuario();
            u1.setLogin("lucas");
            u1.setSenha("lucas");
            dao.addUsuario(u1);
            
            Usuario u2 = new Usuario();
            u2.setLogin("luiz");
            u2.setSenha("luiz");
            dao.addUsuario(u2);
            
            Usuario u3 = new Usuario();
            u3.setLogin("douglas");
            u3.setSenha("douglas");
            dao.addUsuario(u3);

            }
            
            String userLogin =  request.getParameter("login");
            String userSenha  = request.getParameter("senha");
            
            Usuario u = new Usuario();
            u.setLogin(userLogin);
            u.setSenha(userSenha);
            
            boolean resp = dao.validarLogin(u);
           
            if(resp)
            {
                session.setAttribute("usuario", userLogin);
                rd = request.getRequestDispatcher("index.jsp");  
                
            }else
            {
                rd = request.getRequestDispatcher("formLogin.jsp");
                request.setAttribute("mensagemErroLogin","Usuário e/ou Senha Inválido(s)! Por favor, tente novamente!");
            }
        }
        else if (opcao == 2)
        {
           rd = request.getRequestDispatcher("formCadastrarAutomovel.jsp"); 
        }
        else if (opcao == 3)
        {
            rd = request.getRequestDispatcher("exibirAutomoveis.jsp");
        } 
        else if (opcao == 4) 
        {
            rd = request.getRequestDispatcher("formLogin.jsp");
        } else if (opcao == 5)
        {        
            rd = request.getRequestDispatcher("exibirUltimoCadastrado.jsp");   
        }
        
             
        
        
        
        
        rd.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
