/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlers;

import beans.Automovel;
import dao.AutomovelDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
@WebServlet(name = "ServletAutomovel", urlPatterns = {"/Automovel"})
public class ServletAutomovel extends HttpServlet {
   
    AutomovelDao dao = new AutomovelDao();

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
        
        if(opcao == 1) //cadastrar
        {
            Automovel a = new Automovel();
            a.setPlaca(request.getParameter("automovel-placa"));
            a.setChassi(request.getParameter("automovel-chassi"));
            a.setFabricante( request.getParameter("automovel-fabricante"));
            a.setAnofabricacao(Integer.parseInt(request.getParameter("automovel-anofabricacao")));
            a.setMotorizacao(Float.parseFloat(request.getParameter("motorizacao")));
            a.setNumportas(Integer.parseInt(request.getParameter("automovel-qntporta")));
            a.setOpcionais(request.getParameter("opcionais"));
            a.setQntestoque(Integer.parseInt(request.getParameter("automovel-qntestoque")));
            
            dao.addAutomovel(a);
            session.setAttribute("veiculos", dao.exibirTodos());
            
            session.setAttribute("ultimoCadastrado", a);
            
            rd = request.getRequestDispatcher("index.jsp");
        } 
        else if(opcao == 2) // exibir todos
        }
        
        if(opcao == 2) // exibir todos
        {
            ArrayList<Automovel> veiculos = dao.todosAutomoveis();
            session.setAttribute("veiculos", veiculos);
            rd = request.getRequestDispatcher("exibirAutomoveis.jsp");
            
        }
        else if(opcao == 3) //remover
        {
            String placa = request.getParameter("placa");            
            Automovel a = dao.pesquisarAutomovel(placa);
            dao.removerAutomovel(a);
            rd = request.getRequestDispatcher("exibirAutomoveis.jsp");
        }
        else if(opcao == 4) //formulario de alteraracao
        {
            String placa = request.getParameter("placa");
            Automovel a = dao.pesquisarAutomovel(placa);
            session.setAttribute("veiculoEditar", a);
            rd = request.getRequestDispatcher("formCadastrarAutomovel.jsp");
        }
        else if(opcao == 5)//executa alteracao
        {
            Automovel a = new Automovel();
            a.setPlaca(request.getParameter("automovel-placa"));
            a.setChassi(request.getParameter("automovel-chassi"));
            a.setFabricante( request.getParameter("automovel-fabricante"));
            a.setAnofabricacao(Integer.parseInt(request.getParameter("automovel-anofabricacao")));
            a.setMotorizacao(Float.parseFloat(request.getParameter("motorizacao")));
            a.setNumportas(Integer.parseInt(request.getParameter("automovel-qntporta")));
            a.setOpcionais(request.getParameter("opcionais"));
            a.setQntestoque(Integer.parseInt(request.getParameter("automovel-qntestoque")));
            dao.alteraAutomovel(a);
            
            session.setAttribute("veiculos", dao.exibirTodos());
            session.removeAttribute("veiculoEditar");
            
            rd = request.getRequestDispatcher("index.jsp");
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
