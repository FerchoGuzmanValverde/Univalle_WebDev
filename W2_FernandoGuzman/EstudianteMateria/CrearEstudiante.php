<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Crear Estudiante</title>
</head>
<body>
    <form method="post" action="registrodb.php">
        <label>Estudiante</label>
        <input type="text" name="estudiante" />
        <label>Materia a tomar</label>
        <select name="materia">
            <option value="algebra">Algebra</option>
            <option value="calculo">Calculo</option>
            <option value="fisica">Fisica</option>
        </select>
        <input type="submit" value="Registrar"/>
    </form>
</body>
</html>