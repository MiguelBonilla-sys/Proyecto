<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Validar Login | Registro Académico</title>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const params = new URLSearchParams(window.location.search);
            const email = params.get("email");
            const password = params.get("password");

            let users = JSON.parse(localStorage.getItem("users") || "[]");

            // Buscar usuario si ingresó credenciales
            const user = users.find(u => u.email === email && u.password === password);

            if (user) {
                // Guardar usuario en sesión
                localStorage.setItem("user", JSON.stringify({
                    id: user.id,
                    name: user.name,
                    email: user.email,
                    role: user.role
                }));

                alert("Inicio de sesión exitoso.");
            } else {
                // Si no ingresó datos, usar una sesión genérica
                localStorage.setItem("user", JSON.stringify({
                    id: "admin-1",
                    name: "Admin Ejemplo",
                    email: "admin@ejemplo.com",
                    role: "administrador"
                }));
                alert("Accediendo como Administrador por defecto.");
            }

            window.location.href = "dashboard.jsp"; // Redirigir al Dashboard
        });
    </script>
</head>
<body>
</body>
</html>
