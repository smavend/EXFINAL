
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="cliente" scope="session" type="com.example.lab10.bean.Cliente" class="com.example.lab10.bean.Cliente"/>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'/>
  <title>Mis Datos</title>
</head>
<body>
<jsp:include page="includes/navbar.jsp">
  <jsp:param name="currentPage" value="datos"/>
</jsp:include>
<div class='container'>
  <div class="row mb-5 mt-4">
    <div class="col-lg-6">
      <h1 class=''>Servicios</h1>
    </div>
    <div class="row mb-5 mt-4">
      <a class="btn btn-danger" href="<%=request.getContextPath()%>/HeroeServlet?accion=crear"
         role="button">Registrar Servicio </a>
    </div>
  </div>
  <table class="table table-striped table-hover">
    <thead>
    <tr >
      <th>Tipo de Servicio</th>
      <th>Fecha de Registro</th>
      <th>Tiempo de realizacion</th>
      <th>Costo</th>
      <th></th>
    </tr>
    </thead>

    <tbody>
    <%
      for (Arbitro arbitro : listaArbitro) { %>
    <tr>

      <td><%=arbitro.getIdArbitro()%>
      </td>
      <td><%=arbitro.getNombre()%>
      </td>
      <td><%=arbitro.getPais()%>
      </td>
      <td>
        <a
                onclick="return confirm('¿Estas seguro(a) que deseas borrar?')"
                class="btn btn-danger" href="<%=request.getContextPath()%>/ArbitroServlet?action=borrar&id=<%=arbitro.getIdArbitro()%>"
                role="button">Borrar
        </a>

      </td>

    </tr>

    <%
      }
    %>
    </tbody>
  </table>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>
</html>
