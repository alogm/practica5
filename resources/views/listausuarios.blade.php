<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <title>Lista de Usuarios</title>
</head>
<body>

    <div class="container mt-4">
        <form action="/usuarioencontrado" method="GET" class="mb-4">
            @csrf
            <div class="mb-3">
                <label for="id" class="form-label">Buscar por ID del Usuario</label>
                <input type="text" class="form-control" id="id" name="id">
            </div>
            <button type="submit" class="btn btn-primary">Buscar</button>
        </form>
    
        <div class="mb-4">
            <a href="/usuarios" class="btn btn-success">Agregar nuevo Usuario</a>
        </div>
    </div>
    

    <div class="container mt-4">
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">No.</th>
                    <th scope="col">ID Usuario</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Apellido</th>
                    <th scope="col">Correo</th>
                </tr>
            </thead>
            <tbody>
@foreach ($usuarios as $index => $usuario)
    <tr>
        <td>{{$index + 1}}</td>
        <td>{{$usuario->id}}</td>
        <td>{{$usuario->nombre}}</td>
        <td>{{$usuario->apellido}}</td>
        <td>{{$usuario->email}}</td>
        <td><a href="/editusuario/{{$usuario->id}}"><span class="material-symbols-outlined">edit</span></a></td>
        <td>
            <form action="/api/usuarios/{{$usuario->id}}" method="POST">
                @csrf
                @method('DELETE')
                <input type="hidden" name="id">
                <button type="submit">
                    <span class="material-symbols-outlined">delete</span>
                </button>
            </form>
        </td>
    </tr>
@endforeach


            </tbody>
        </table>
    </div>
    <div>
        
    </div>
</body>
</html>

