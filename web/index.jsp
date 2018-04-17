<%@ page import="at.htlklu.balkendiagram.DatabaseManager" %>
<%@ page import="at.htlklu.balkendiagram.Project" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Balkendiagram</title>
    <script src="jquery.js"></script>
    <link rel="stylesheet" href="bootstrap.css">
  </head>
  <body>

  <%
    DatabaseManager manager = new DatabaseManager();
    manager.connect("projekte");
  %>

  <div class="container-fluid mt-2">
    <form class="mb-4" action="" method="get">
      <div class="input-group mb-3">
        <div class="input-group-prepend">
          <span class="input-group-text" id="project-label">Projekt</span>
        </div>
        <select name="project" id="project" class="custom-select" aria-describedby="project-label">
          <%
            for(Project p : manager.getProjects()){
          %>
          <option value="<%=p.getId()%>"><%=p.getTitle()%></option>
          <%
            }
          %>
        </select>
      </div>
      <input class="btn btn-info w-100" type="submit" value="Go">
    </form>
    <img class="w-100" src="">
  </div>

  <script>
    $(document).ready(function () {
        console.log("ready");
        $("form").on('submit', function(e){
            e.preventDefault();
            console.log("submit")
            $("img").attr("src", "DiagramServlet?project=" + $("select").val());
        });
    });
  </script>
  </body>
</html>
