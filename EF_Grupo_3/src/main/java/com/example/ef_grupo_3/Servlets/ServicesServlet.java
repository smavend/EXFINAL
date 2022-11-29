package com.example.ef_grupo_3.Servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ServicesServlet", value = "/ServicesServlet")
public class ServicesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action") == null ? "lista" : request.getParameter("action");
        RequestDispatcher view;
        ArrayList<String> paises = new ArrayList<>();
        paises.add("Peru");
        paises.add("Chile");
        paises.add("Argentina");
        paises.add("Paraguay");
        paises.add("Uruguay");
        paises.add("Colombia");
        ArrayList<String> opciones = new ArrayList<>();
        opciones.add("Nombre");
        opciones.add("Pais");
        DaoServicios daoServicios = new DaoServicios();

        switch (action) {
            case "listar":
                request.setAttribute("listaImpresion3D", daoArbitros.listarImpresion3D());
                request.setAttribute("listaCorteLaser", daoArbitros.listarCorteLaser());
                request.setAttribute("listaEscaneo3D", daoArbitros.listarEscaneo3D());

                view = request.getRequestDispatcher("listarServicios.jsp");
                view.forward(request, response);
                break;
            case "crear":
                request.setAttribute("listapaises", paises);
                view = request.getRequestDispatcher("listarServicios.jsp");
                view.forward(request, response);

                break;
            case "borrar":
                String arbitroID = request.getParameter("id");

                daoArbitros.borrarArbitro(arbitroID);

                response.sendRedirect(request.getContextPath() + "/ArbitroServlet");
                break;
        }






    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
