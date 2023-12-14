<?php

use App\Http\Controllers\UsuariosController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [UsuariosController::class,'index']);

Route::get('/usuarios', function () {
    return view('usuarios',['usuario'=>'Alonso']);
});

Route::get('/editusuario/{id}', [UsuariosController::class, 'edit']);



Route::get('/usuarioencontrado', [UsuariosController::class, 'show']);

