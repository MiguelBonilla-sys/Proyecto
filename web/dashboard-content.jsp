<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Tarjetas de Resumen -->
<div class="row">
    <div class="col-md-3"><div class="card p-3 text-center"><h6 class="text-muted">Cursos Activos</h6><h3 id="numCursos">3</h3></div></div>
    <div class="col-md-3"><div class="card p-3 text-center"><h6 class="text-muted">Actividades Pendientes</h6><h3 id="numActividades">0</h3></div></div>
    <div class="col-md-3"><div class="card p-3 text-center"><h6 class="text-muted">Promedio General</h6><h3 id="promedioGeneral">N/A</h3></div></div>
    <div class="col-md-3"><div class="card p-3 text-center"><h6 class="text-muted">Corte Actual</h6><h3>2</h3></div></div>
</div>

<!-- Tabs de Sección -->
<ul class="nav nav-tabs mt-4">
    <li class="nav-item"><button class="nav-link active" onclick="showTab('resumen')">Resumen</button></li>
    <li class="nav-item"><button class="nav-link" onclick="showTab('misCursos')">Mis Cursos</button></li>
    <li class="nav-item"><button class="nav-link" onclick="showTab('actividades')">Actividades</button></li>
    <li class="nav-item"><button class="nav-link" onclick="showTab('calificaciones')">Calificaciones</button></li>
</ul>

<!-- Contenido de las pestañas -->
<div id="resumen" class="tab-content mt-3">
    <div class="row">
        <div class="col-md-6">
            <h5>Actividades Recientes</h5>
            <p class="text-muted">Últimas actividades registradas en tus cursos</p>
            <ul class="list-group">
                <li class="list-group-item"><strong>P</strong> <b>Proyecto Final</b><br>Programación Orientada a Objetos - 19/5/2023</li>
                <li class="list-group-item"><strong>T</strong> <b>Taller de Ecuaciones</b><br>Matemáticas Avanzadas - 9/4/2023</li>
                <li class="list-group-item"><strong>E</strong> <b>Examen Parcial 1</b><br>Matemáticas Avanzadas - 14/3/2023</li>
            </ul>
        </div>
        <div class="col-md-6">
            <h5>Próximas Entregas</h5>
            <p class="text-muted">Actividades con fecha de entrega próxima</p>
            <div class="alert alert-secondary">No hay actividades próximas</div>
        </div>
    </div>
</div>

<div id="misCursos" class="tab-content mt-3" style="display:none;">
    <h5>Mis Cursos</h5>
    <p>Aquí puedes ver tus cursos inscritos.</p>
</div>

<div id="actividades" class="tab-content mt-3" style="display:none;">
    <h5>Actividades</h5>
    <p>Lista de actividades recientes.</p>
</div>

<div id="calificaciones" class="tab-content mt-3" style="display:none;">
    <h5>Calificaciones</h5>
    <p>Detalle de calificaciones por curso y actividad.</p>
</div>

<!-- Script para alternar las pestañas -->
<script>
    function showTab(tabId) {
        document.querySelectorAll(".tab-content").forEach(el => el.style.display = "none");
        document.getElementById(tabId).style.display = "block";

        document.querySelectorAll(".nav-link").forEach(el => el.classList.remove("active"));
        event.target.classList.add("active");
    }
</script>
