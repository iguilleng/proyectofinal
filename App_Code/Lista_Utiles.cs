using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Lista_Utiles
/// </summary>
public class Lista_Utiles
{
    private int id;
    private string Curso;
    private int Cantidad;

    public int ID
    {
        get { return id; }
        set { id = value; }
    }
    public string curso
    {
        get { return Curso; }
        set { Curso = value; }
    }
    public int creditos
    {
        get { return Cantidad; }
        set { Cantidad = value; }
    }
	public Lista_Utiles()
	{
        
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
}