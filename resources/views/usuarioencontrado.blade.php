<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <title>Document</title>
</head>
<body>
    <div>
        <a href="/" class="btn btn-secondary">
          <span class="material-symbols-outlined">
          list
          </span>Volver al listado</a>
      </div>
    <div class="container mt-4 mx-auto">
        @if(isset($usuario))
            <div class="row">
                <div class="col">
                    <div class="card bg-light mb-3">
                        <div class="card-body">
                            <h4 class="card-title">Resultado Id: {{$usuario->id}} </h4>
                            <p class="card-text">Nombre: {{$usuario->nombre}}</p>
                            <p class="card-text">Apellido: {{$usuario->apellido}}</p>
                            <p class="card-text">Correo: {{$usuario->email}}</p>
                        </div>
                    </div>
                </div>
            </div>
        @endif
    </div>
</body>
</html>
