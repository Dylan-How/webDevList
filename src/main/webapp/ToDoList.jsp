<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8" import= "java.util.*"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

</head>
<!bonjour>
<body>

        <!-- Etape 1: Créer un form html -->

        <form  action="ToDoList.jsp" method="Post">

        <label for="Id1">Saisir un nouveau item: </label>

        <input type="text" name="monItem" id="Id1"/>

        <input type="submit" value="Soumettre">

        </form>

        <br>

        <!--<p>L'item saisi est: <%=request.getParameter("monItem") %></p>-->

        

        <!-- Etape 2: Ajouter un item a la liste ToDo -->

        <%

            List<String> items= (List<String>) session.getAttribute("monToDoList");

            if(items == null)

            {

                items = new ArrayList<String>();

                session.setAttribute("monToDoList", items);

            }

            String itemSaisi = request.getParameter("monItem");

            if(itemSaisi != null)

            {

                items.add(itemSaisi);

            }

        %>

        <!-- Etape 3: Afficher tout les items de la ToDoList a partir de l'objet session -->

        <hr>

        <h2>Item de ToDoList: </h2>

        <ol>

            <%

                for(String item : items)

                {

                    out.println("<li>" + item + "</li>");

                }

            %>

        </ol>

        

 

</body>

</html>
