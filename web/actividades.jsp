<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Actividades | Registro Académico</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <div class="container mt-5">
        <h1 class="mb-4">Gestión de Actividades</h1>

        <input type="text" class="form-control mb-3" placeholder="Buscar actividades...">

        <select class="form-select mb-3">
            <option>Todos los cursos</option>
            <option>Curso 1</option>
            <option>Curso 2</option>
        </select>

        <select class="form-select mb-3">
            <option>Todos los estados</option>
            <option>Pendientes</option>
            <option>Completadas</option>
            <option>Vencidas</option>
        </select>

        <button class="btn btn-primary mb-3">Crear Actividad</button>

        <div class="alert alert-secondary text-center">No se encontraron actividades.</div>
    </div>

</body>
</html>
