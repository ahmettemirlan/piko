<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<sql:query var="phones" dataSource="jdbc/phonebook">
    SELECT * FROM list
</sql:query>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
                <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
                <title>Телефонная книга</title>
            </head>
        <body>
            <div class="container">
            <h1 style="text-align: center; font-family: arial, sans-serif;
                color: #ccccff; background-color: #666666">Телефонная книга</h1>
            <table class="table table-hover">
                <thead>
                  <tr>
                  <th>№</th>
                  <th>ФИО</th>
                  <th>Телефон</th>
                  <th>Город</th>
                  <th>Адрес</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="row" items="${phones.rows}">
                    <tr class="active">
                        <td>
                            ${row.id}
                        </td>
                        <td>
                            ${row.name}
                        </td>
                        <td>
                            ${row.phone}
                        </td>
                        <td>
                            ${row.city}
                        </td>
                        <td>
                            ${row.address}
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            </div>
        </body>
    </html>
    