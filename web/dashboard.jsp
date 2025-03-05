<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dashboard | Registro Académico</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <style>
        body { background-color: #f8f9fa; }
        .sidebar { width: 250px; height: 100vh; position: fixed; background: white; padding: 20px; box-shadow: 2px 0 10px rgba(0, 0, 0, 0.1); }
        .content { margin-left: 270px; padding: 20px; }
        .card { border-radius: 10px; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); border: none; }
        .nav-link { color: #333; font-weight: 500; cursor: pointer; }
        .nav-link:hover, .nav-link.active { background-color: #f8f9fa; }
        .top-right { position: absolute; top: 20px; right: 20px; display: flex; gap: 15px; }
    </style>
</head>
<body>

    <!-- Sidebar (NO SE DUPLICA) -->
    <div class="sidebar">
        <h4><i class="bi bi-mortarboard"></i> Registro Académico</h4>
        <ul class="nav flex-column mt-4">
            <li class="nav-item">
                <button class="nav-link active" onclick="loadSection('dashboard-content.jsp', 'Dashboard', this)">
                    <i class="bi bi-house-door"></i> Dashboard
                </button>
            </li>
            <li class="nav-item">
                <button class="nav-link" onclick="loadSection('cursos.jsp', 'Gestión de Cursos', this)">
                    <i class="bi bi-book"></i> Cursos
                </button>
            </li>
            <li class="nav-item">
                <button class="nav-link" onclick="loadSection('actividades.jsp', 'Gestión de Actividades', this)">
                    <i class="bi bi-clipboard-check"></i> Actividades
                </button>
            </li>
            <li class="nav-item">
                <button class="nav-link" onclick="loadSection('calificaciones.jsp', 'Gestión de Calificaciones', this)">
                    <i class="bi bi-bar-chart"></i> Calificaciones
                </button>
            </li>
            <li class="nav-item">
                <button class="nav-link" onclick="loadSection('reportes.jsp', 'Generación de Reportes', this)">
                    <i class="bi bi-clipboard-data"></i> Reportes
                </button>
            </li>
            <li class="nav-item">
                <button class="nav-link" onclick="loadSection('administracion.jsp', 'Administración del Sistema', this)">
                    <i class="bi bi-gear"></i> Administración
                </button>
            </li>
        </ul>
        <div class="mt-5">
            <p><strong id="userName">Admin Ejemplo</strong><br><span id="userRole">Administrador</span></p>
            <button class="btn btn-danger w-100" onclick="logout()">Cerrar Sesión</button>
        </div>
    </div>

    <!-- Main Content -->
    <div class="content">
        <!-- Botones Notificación y Usuario -->
        <div class="top-right">
            <button class="btn btn-outline-secondary"><i class="bi bi-bell"></i></button>
            <button class="btn btn-outline-secondary"><i class="bi bi-person"></i></button>
        </div>

        <h1 class="fw-bold" id="page-title">Dashboard</h1>

        <!-- Contenedor donde se cargará dinámicamente el contenido -->
        <div id="main-content">
            <p>Cargando contenido...</p>
        </div>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            loadSection("dashboard-content.jsp", "Dashboard", document.querySelector('.nav-link.active'));
        });

        function loadSection(page, title, element) {
            document.getElementById("page-title").innerText = title;

            fetch(page)
                .then(response => {
                    if (!response.ok) {
                        throw new Error("Error en la carga del contenido.");
                    }
                    return response.text();
                })
                .then(data => {
                    document.getElementById("main-content").innerHTML = data;
                })
                .catch(error => {
                    document.getElementById("main-content").innerHTML = `<p class="text-danger">Error al cargar la sección.</p>`;
                    console.error("Error al cargar la sección:", error);
                });

            // Remover la clase "active" de todos los enlaces y agregarla solo al actual
            document.querySelectorAll('.nav-link').forEach(el => el.classList.remove('active'));
            element.classList.add('active');
        }

        function logout() {
            localStorage.clear();
            window.location.href = "login.jsp";
        }
    </script>
</body>
</html>
