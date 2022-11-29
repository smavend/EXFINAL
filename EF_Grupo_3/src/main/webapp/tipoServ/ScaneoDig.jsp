<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="listaResoluciones" scope="request" type="java.util.ArrayList<java.lang.String>"/>



<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'/>
    <title>LAB 9</title>
</head>
<body>

<jsp:include page="../includes/navbar.jsp">
    <jsp:param name="currentPage" value="par"/>
</jsp:include>

<div class='container'>

    <div class="row mb-4">
        <div class="col"></div>
        <div class="col-md-6">
            <h1 class='mb-3'>Servicio Escaneo Digital 3D</h1>
            <form method="POST" action="<%=request.getContextPath()%>/ArbitroServlet?action=guardar">

                <div class="form-group">
                    <label>Largo (cm)</label>
                    <input type="text" class="form-control" name="largo">
                </div>

                <div class="form-group">
                    <label>Ancho (cm)</label>
                    <input type="text" class="form-control" name="ancho">
                </div>

                <div class="form-group">
                    <label>Altura (cm)</label>
                    <input type="text" class="form-control" name="altura">
                </div>

                <div class="form-group">
                    <label for="Resolucion">Resolucion</label>
                    <select name="resolucion" id="Resolucion" class="form-control">

                        <% int i =1 ; for ( String resolucion : listaResoluciones) {%>
                        <option value="<%=i%>">
                            <%=resolucion%>
                        </option>
                        <% i++;}%>
                    </select>
                </div>



                <button type="submit" class="btn btn-primary">Guardar</button>
                <a href="<%= request.getContextPath()%>/ArbitroServlet" class="btn btn-danger">Cancelar</a>
            </form>
        </div>
        <div class="col"></div>
    </div>
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
