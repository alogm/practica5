<?php

namespace App\Http\Controllers;

use App\Models\Usuarios;
use Illuminate\Http\Request;

class UsuariosController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $usuarios = Usuarios::all();
        return view('listausuarios', compact('usuarios'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $usuario = new Usuarios();

        $usuario->nombre = $request->nombre;
        $usuario->apellido = $request->apellido;
        $usuario->email = $request->email;
        $usuario->contrasena = $request->contrasena;

        $usuario->save();

        return redirect('/')->with('success', 'Usuario agregado correctamente');
    }

    /**
     * Display the specified resource.
     */
    public function show(Request $request)
    {
        $id = $request->input('id');
        $usuario = Usuarios::find($id);
    
        if ($usuario) {

            return view('usuarioencontrado', ['usuario' => $usuario]);
        } else {
        
            return 'usuario no encontrado';
            
        }
    }
    

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $usuario = Usuarios::find($id);
        return view('usuarioeditar', compact('usuario'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $usuario = Usuarios::find($id);
    
        $usuario->nombre = $request->nombre;
        $usuario->apellido = $request->apellido;
        $usuario->email = $request->email;
        $usuario->contrasena = $request->contrasena;
    
        $usuario->save();
    
        return redirect('/')->with('success', 'Usuario actualizado correctamente');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $usuario = Usuarios::find($id);

        $usuario->delete();

        return redirect('/')->with('success', 'Usuario eliminado correctamente');
    }
}
