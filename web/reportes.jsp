<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Reportes | Registro Académico</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

    <div class="container mt-5">
        <h1 class="mb-4">Generación de Reportes</h1>

        <select class="form-select mb-3">
            <option>Reporte de Calificaciones</option>
            <option>Reporte de Asistencia</option>
            <option>Rendimiento Académico</option>
            <option>Actividades por Curso</option>
        </select>

        <button class="btn btn-outline-primary mb-3">Generar Reporte</button>

        <div class="alert alert-secondary text-center">Vista previa del reporte aparecerá aquí.</div>
    </div>

</body>
</html>
