<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Administración | Registro Académico</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script>
        function showTab(tab) {
            document.querySelectorAll(".tab-content").forEach(el => el.style.display = "none");
            document.getElementById(tab).style.display = "block";
        }
    </script>
</head>
<body>

    <div class="container mt-5">
        <h1 class="mb-4">Panel Administrativo</h1>

        <ul class="nav nav-tabs">
            <li class="nav-item"><a class="nav-link active" onclick="showTab('users')">Usuarios</a></li>
            <li class="nav-item"><a class="nav-link" onclick="showTab('settings')">Configuración</a></li>
            <li class="nav-item"><a class="nav-link" onclick="showTab('logs')">Registros</a></li>
        </ul>

        <div id="users" class="tab-content mt-3">
            <h3>Gestión de Usuarios</h3>
            <p>Administra los usuarios del sistema.</p>
        </div>

        <div id="settings" class="tab-content mt-3" style="display:none;">
            <h3>Configuración del Sistema</h3>
            <p>Configura los parámetros generales del sistema.</p>
        </div>

        <div id="logs" class="tab-content mt-3" style="display:none;">
            <h3>Registros de Actividad</h3>
            <p>Historial de cambios y actividades en el sistema.</p>
        </div>
    </div>

</body>
</html>
