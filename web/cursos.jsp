<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Cursos | Registro Académico</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <div class="container mt-5">
        <h1 class="mb-4">Gestión de Cursos</h1>

        <input type="text" class="form-control mb-3" placeholder="Buscar cursos...">

        <select class="form-select mb-3">
            <option>Todos los cursos</option>
            <option>Activos</option>
            <option>Inactivos</option>
        </select>

        <button class="btn btn-primary mb-3">Crear Curso</button>

        <div class="alert alert-secondary text-center">No se encontraron cursos.</div>
    </div>

</body>
</html>
