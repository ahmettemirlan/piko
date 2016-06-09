<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<sql:query var="phones" dataSource="jdbc/phonebook">
    SELECT * FROM list
</sql:query>
        <html>
            <head>
                <style>
                    table {}
                    td {padding-left: 14px; padding-right: 14px}
                </style>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <title>Телефонная книга</title>
            </head>
        <body>
            <h1>Телефонная книга</h1>
            <table border="1" cellspacing="0">
                <c:forEach var="row" items="${phones.rows}">
                    <tr>
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
            </table>
        </body>
    </html>
    