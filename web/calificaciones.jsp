<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Calificaciones | Registro Académico</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <div class="container mt-5">
        <h1 class="mb-4">Gestión de Calificaciones</h1>

        <select class="form-select mb-3">
            <option>Seleccionar curso</option>
            <option>Curso 1</option>
            <option>Curso 2</option>
        </select>

        <select class="form-select mb-3">
            <option>Todos los cortes</option>
            <option>Primer Corte (30%)</option>
            <option>Segundo Corte (30%)</option>
            <option>Tercer Corte (40%)</option>
        </select>

        <button class="btn btn-outline-primary mb-3">Exportar Calificaciones</button>

        <div class="alert alert-secondary text-center">Selecciona un curso para ver las calificaciones.</div>
    </div>

</body>
</html>
