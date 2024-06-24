<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/CSS/datatables.css">
</head>
<body>
<table id="example" class="table table-striped table-hover" style="width:100%">
    <thead>
    <tr>
        <th>Name</th>
        <th>Position</th>
        <th>Office</th>
        <th>Age</th>
        <th>Start date</th>
        <th>Salary</th>
        <th>Modificar</th>
        <th>Eliminar</th>
    </tr>
    </thead>
</table>

<script src="${pageContext.request.contextPath}/JS/jquery-3.7.0.js"></script>
<script src="${pageContext.request.contextPath}/JS/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/JS/datatables.js"></script>
<script src="${pageContext.request.contextPath}/JS/dataTables.bootstrap5.js"></script>
<script src="${pageContext.request.contextPath}/JS/es-MX.json"></script>
<script>
    document.addEventListener('DOMContentLoaded', () => {
        const table = document.getElementById('example');
        new DataTable(table, {
            language: {
                url: '${pageContext.request.contextPath}/JS/es-MX.json'
            },
            ajax: '${pageContext.request.contextPath}/datos',
            processing: true,
            serverSide: true,
            columns: [
                { data: 'name' },
                { data: 'position' },
                { data: 'office' },
                { data: 'age' },
                { data: 'startDate' },
                { data: 'salary' },
                { data: 'modificar' },
                { data: 'eliminar' }
            ]
        });
    });
</script>
</body>
</html>
