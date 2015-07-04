using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Xml;
using System.Collections.Generic;

public partial class matricula : System.Web.UI.Page
{
    string connectionString = "Data Source=SQL5005.myASP.NET;Initial Catalog=DB_9CC4DD_matriculas;User Id=DB_9CC4DD_matriculas_admin;Password=matriculas123;";
    protected void Page_Load(object sender, EventArgs e)
    {
        InitDistrict();
         Cursos1.Visible = false;
        Cursos.Visible = false;
        Cursos0.Visible = false;
    }
    protected void btnEntrar_Click(object sender, EventArgs e)
    {
        if (tbCodigo.Text == tbPassword.Text && tbCodigo.Text != "" && tbCodigo.Text.Length > 7)
        {
            RadioButtonList1.Visible = true;
            lblCodigo.Visible = false;
            lblPassword.Visible = false;
            tbCodigo.Visible = false;
            tbPassword.Visible = false;
            btnEntrar.Visible = false;
        }
        else
            Label59.Text = "INGRESE UNA CONTRASEÑA MAYOR A 8 DIGITOS ";
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label59.Text = "";
        Label58.Text = "";
        MultiView1.ActiveViewIndex = Int32.Parse(RadioButtonList1.SelectedValue);
    }
    protected void Region_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Region.Items[0].Selected == true)
            InitDistrict();
        if (Region.Items[1].Selected == true)
        {
            Distrito.Items.Clear();
            Distrito.Enabled = true;
            Distrito.Items.Add("Camana");
            Distrito.Items.Add("Quilca");
            Distrito.Items.Add("Ocoña");
        }
        if (Region.Items[2].Selected == true)
        {
            Distrito.Items.Clear();
            Distrito.Enabled = true;
            Distrito.Items.Add("Atico");
            Distrito.Items.Add("Caraveli");
            Distrito.Items.Add("Chala");
            Distrito.Items.Add("Lomas");
        }
        if (Region.Items[3].Selected == true)
        {
            Distrito.Items.Clear();
            Distrito.Enabled = true;
            Distrito.Items.Add("Aplao");
            Distrito.Items.Add("Orcopampa");
            Distrito.Items.Add("Pampacolca");
            Distrito.Items.Add("Viraco");
        }
        if (Region.Items[4].Selected == true)
        {
            Distrito.Items.Clear();
            Distrito.Enabled = true;
            Distrito.Items.Add("Caylloma");
            Distrito.Items.Add("Chivay");
            Distrito.Items.Add("Majes");
            Distrito.Items.Add("Tapay");
        }
        if (Region.Items[5].Selected == true)
        {
            Distrito.Items.Clear();
            Distrito.Enabled = true;
            Distrito.Items.Add("Andaray");
            Distrito.Items.Add("Chichas");
            Distrito.Items.Add("Chuquibamba");
            Distrito.Items.Add("Salamanca");
        }
        if (Region.Items[6].Selected == true)
        {
            Distrito.Items.Clear();
            Distrito.Enabled = true;
            Distrito.Items.Add("Cocachacra");
            Distrito.Items.Add("Islay");
            Distrito.Items.Add("Mejia");
            Distrito.Items.Add("Mollendo");
        }
        if (Region.Items[7].Selected == true)
        {
            Distrito.Items.Clear();
            Distrito.Enabled = true;
            Distrito.Items.Add("Alca");
            Distrito.Items.Add("Cotahuasi");
            Distrito.Items.Add("Tomepampa");
            Distrito.Items.Add("Toro");
        }
    }
    protected void InitDistrict()
    {
        Distrito.Items.Clear();
        Distrito.Enabled = true;
        Distrito.Items.Add("Arequipa");
        Distrito.Items.Add("Alto Selva Alegre");
        Distrito.Items.Add("Cayma");
        Distrito.Items.Add("Cerro Colorado");
        Distrito.Items.Add("Characato");
        Distrito.Items.Add("Chiguata");
        Distrito.Items.Add("Jacobo Hunter");
        Distrito.Items.Add("Jose Luis Bustamante y Rivero");
        Distrito.Items.Add("La Joya");
        Distrito.Items.Add("Mariano Melgar");
        Distrito.Items.Add("Miraflores");
        Distrito.Items.Add("Mollebaya");
        Distrito.Items.Add("Paucarpata");
        Distrito.Items.Add("Polobaya");
        Distrito.Items.Add("Quequeña");
        Distrito.Items.Add("Sabandia");
        Distrito.Items.Add("Sachaca");
        Distrito.Items.Add("Socabaya");
        Distrito.Items.Add("Tiabaya");
        Distrito.Items.Add("Uchumayo");
        Distrito.Items.Add("Victor");
        Distrito.Items.Add("Yanahuara");
        Distrito.Items.Add("Yarabamba");
        Distrito.Items.Add("Yura");

        Distrito0.Items.Clear();
        Distrito0.Enabled = true;
        Distrito0.Items.Add("Arequipa");
        Distrito0.Items.Add("Alto Selva Alegre");
        Distrito0.Items.Add("Cayma");
        Distrito0.Items.Add("Cerro Colorado");
        Distrito0.Items.Add("Characato");
        Distrito0.Items.Add("Chiguata");
        Distrito0.Items.Add("Jacobo Hunter");
        Distrito0.Items.Add("Jose Luis Bustamante y Rivero");
        Distrito0.Items.Add("La Joya");
        Distrito0.Items.Add("Mariano Melgar");
        Distrito0.Items.Add("Miraflores");
        Distrito0.Items.Add("Mollebaya");
        Distrito0.Items.Add("Paucarpata");
        Distrito0.Items.Add("Polobaya");
        Distrito0.Items.Add("Quequeña");
        Distrito0.Items.Add("Sabandia");
        Distrito0.Items.Add("Sachaca");
        Distrito0.Items.Add("Socabaya");
        Distrito0.Items.Add("Tiabaya");
        Distrito0.Items.Add("Uchumayo");
        Distrito0.Items.Add("Victor");
        Distrito0.Items.Add("Yanahuara");
        Distrito0.Items.Add("Yarabamba");
        Distrito0.Items.Add("Yura");

        Distrito1.Items.Clear();
        Distrito1.Enabled = true;
        Distrito1.Items.Add("Arequipa");
        Distrito1.Items.Add("Alto Selva Alegre");
        Distrito1.Items.Add("Cayma");
        Distrito1.Items.Add("Cerro Colorado");
        Distrito1.Items.Add("Characato");
        Distrito1.Items.Add("Chiguata");
        Distrito1.Items.Add("Jacobo Hunter");
        Distrito1.Items.Add("Jose Luis Bustamante y Rivero");
        Distrito1.Items.Add("La Joya");
        Distrito1.Items.Add("Mariano Melgar");
        Distrito1.Items.Add("Miraflores");
        Distrito1.Items.Add("Mollebaya");
        Distrito1.Items.Add("Paucarpata");
        Distrito1.Items.Add("Polobaya");
        Distrito1.Items.Add("Quequeña");
        Distrito1.Items.Add("Sabandia");
        Distrito1.Items.Add("Sachaca");
        Distrito1.Items.Add("Socabaya");
        Distrito1.Items.Add("Tiabaya");
        Distrito1.Items.Add("Uchumayo");
        Distrito1.Items.Add("Victor");
        Distrito1.Items.Add("Yanahuara");
        Distrito1.Items.Add("Yarabamba");
        Distrito1.Items.Add("Yura");


        Distrito2.Items.Clear();
        Distrito2.Enabled = true;
        Distrito2.Items.Add("Arequipa");
        Distrito2.Items.Add("Alto Selva Alegre");
        Distrito2.Items.Add("Cayma");
        Distrito2.Items.Add("Cerro Colorado");
        Distrito2.Items.Add("Characato");
        Distrito2.Items.Add("Chiguata");
        Distrito2.Items.Add("Jacobo Hunter");
        Distrito2.Items.Add("Jose Luis Bustamante y Rivero");
        Distrito2.Items.Add("La Joya");
        Distrito2.Items.Add("Mariano Melgar");
        Distrito2.Items.Add("Miraflores");
        Distrito2.Items.Add("Mollebaya");
        Distrito2.Items.Add("Paucarpata");
        Distrito2.Items.Add("Polobaya");
        Distrito2.Items.Add("Quequeña");
        Distrito2.Items.Add("Sabandia");
        Distrito2.Items.Add("Sachaca");
        Distrito2.Items.Add("Socabaya");
        Distrito2.Items.Add("Tiabaya");
        Distrito2.Items.Add("Uchumayo");
        Distrito2.Items.Add("Victor");
        Distrito2.Items.Add("Yanahuara");
        Distrito2.Items.Add("Yarabamba");
        Distrito2.Items.Add("Yura");
        
    }
    protected void agregar_Click(object sender, EventArgs e)
    {

    }
    protected void Matricularse_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(connectionString);

        int codigo = 0;
        if (Nombre.Text == "" || Apellido.Text == "" || DNI.Text == "" || Direccion.Text == "" || Telefono.Text == "" || Celular.Text == "" || Correo_electronico.Text == "")
        {
            registro.Style["color"] = "Red";
            registro.Text = "MATRICULA NO REGISTRADA, llene todos los campos...";
        }
        else
        {
            codigo = codigo + 1;
            //byte[] photo=GetPhoto(Foto_alumno.ImageUrl);


            SqlCommand cmd = new SqlCommand();

            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO Salud VALUES (@codigo, @nombre, @apellidos, @DNI, @fechanac,@genero,@nivel,@seccion,@escuela,@region,@distrito,@direccion,@telefono,@celular,@email)";
            cmd.Parameters.Add("@codigo", System.Data.SqlDbType.Int);
            cmd.Parameters.Add("@nombre", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@apellidos", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@DNI", System.Data.SqlDbType.Int);
            cmd.Parameters.Add("@fechanac", System.Data.SqlDbType.Date);
            cmd.Parameters.Add("@genero", System.Data.SqlDbType.NChar);
            cmd.Parameters.Add("@nivel", System.Data.SqlDbType.NChar);
            cmd.Parameters.Add("@seccion", System.Data.SqlDbType.NChar);
            cmd.Parameters.Add("@escuela", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@region", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@distrito", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@direccion", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@telefono", System.Data.SqlDbType.Int);
            cmd.Parameters.Add("@celular", System.Data.SqlDbType.Int);
            cmd.Parameters.Add("@email", System.Data.SqlDbType.NVarChar);
            //cmd.Parameters.Add("@foto", System.Data.SqlDbType.Image).Value=photo;


            cmd.Parameters["@codigo"].Value = codigo;
            cmd.Parameters["@nombre"].Value = Nombre.Text;
            cmd.Parameters["@apellidos"].Value = Apellido.Text;
            cmd.Parameters["@DNI"].Value = Int32.Parse(DNI.Text); ;
            cmd.Parameters["@fechanac"].Value = Dias.Text + "-" + Meses.Text + "-" + Años.Text;
            cmd.Parameters["@genero"].Value = genero.SelectedItem.Text;
            cmd.Parameters["@nivel"].Value = Grado1.SelectedItem.Text;
            cmd.Parameters["@seccion"].Value = Seccion1.SelectedItem.Text;
            cmd.Parameters["@escuela"].Value = Escuela1.SelectedItem.Text;
            cmd.Parameters["@region"].Value = Region.SelectedItem.Text;
            cmd.Parameters["@distrito"].Value = Distrito.SelectedItem.Text;
            cmd.Parameters["@direccion"].Value = Direccion.Text;
            cmd.Parameters["@telefono"].Value = Int32.Parse(Telefono.Text);
            cmd.Parameters["@celular"].Value = Int32.Parse(Celular.Text);
            cmd.Parameters["@email"].Value = Correo_electronico.Text;



            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                registro.Style["color"] = "green";
                registro.Text = "MATRICULA REGISTRADA";
                con.Close();

            }
            catch (Exception err)
            {
                registro.Text = "Error al registrar alumno";
                registro.Text += err.Message;
            }

              Cursos1.Visible = true;
              FileStream fs = new FileStream(@"F:\SuperProProductList.xml",
                           FileMode.Create);
              XmlTextWriter w = new XmlTextWriter(fs, null);

              w.WriteStartDocument();
              w.WriteStartElement("SuperProProductList");
              w.WriteComment("This file generated by the XmlTextWriter class.");

              w.WriteStartElement("Lista_Utiles");
              w.WriteAttributeString("Codigo", "", "1");
              w.WriteAttributeString("Curso", "", "BIOQUIMICA MEDICA");

              w.WriteStartElement("Creditos");
              w.WriteString("5");
              w.WriteEndElement();

              w.WriteEndElement();

              w.WriteStartElement("Lista_Utiles");
              w.WriteAttributeString("Codigo", "", "2");
              w.WriteAttributeString("Curso", "", "INGLES MEDICO");

              w.WriteStartElement("Creditos");
              w.WriteString("2");
              w.WriteEndElement();

              w.WriteEndElement();

              w.WriteStartElement("Lista_Utiles");
              w.WriteAttributeString("Codigo", "", "3");
              w.WriteAttributeString("Curso", "", "DOCTRINA SOCIAL DE LA IGLESIA");

              w.WriteStartElement("Creditos");
              w.WriteString("2");
              w.WriteEndElement();

              w.WriteEndElement();

              w.WriteStartElement("Lista_Utiles");
              w.WriteAttributeString("Codigo", "", "4");
              w.WriteAttributeString("Curso", "", "BIOLOGIA CELULAR");

              w.WriteStartElement("Creditos");
              w.WriteString("4");
              w.WriteEndElement();

              w.WriteEndElement();
              w.WriteStartElement("Lista_Utiles");
              w.WriteAttributeString("Codigo", "", "5");
              w.WriteAttributeString("Curso", "", "LOGICO MATEMATICA");

              w.WriteStartElement("Creditos");
              w.WriteString("3");
              w.WriteEndElement();

              w.WriteEndElement();

              w.WriteStartElement("Lista_Utiles");
              w.WriteAttributeString("Codigo", "", "6");
              w.WriteAttributeString("Curso", "", "COMUNICACION, REDACCION Y ORATORIA");

              w.WriteStartElement("Creditos");
              w.WriteString("3");
              w.WriteEndElement();

              w.WriteEndElement();

              w.WriteStartElement("Lista_Utiles");
              w.WriteAttributeString("Codigo", "", "7");
              w.WriteAttributeString("Curso", "", "HISTOLOGIA");

              w.WriteStartElement("Creditos");
              w.WriteString("5");
              w.WriteEndElement();

              w.WriteEndElement();

              w.WriteStartElement("Lista_Utiles");
              w.WriteAttributeString("Codigo", "", "8");
              w.WriteAttributeString("Curso", "", "BIOQUIMICA MEDICA II");

              w.WriteStartElement("Creditos");
              w.WriteString("5");
              w.WriteEndElement();



              w.WriteEndElement();

              w.WriteEndElement();
              w.WriteEndDocument();
              w.Close();

              Limpiar.Visible = false;
        }
    }
    protected void Limpiar_Click(object sender, EventArgs e)
    {
        Nombre.Text = "";
        Apellido.Text = "";
        DNI.Text = "";
        Dias.SelectedIndex = 0;
        Meses.SelectedIndex = 0;
        Años.SelectedIndex = 0;
        genero.SelectedIndex = 0;
        Grado1.SelectedIndex = 0;
        Region.SelectedIndex = 0;
        Distrito.SelectedIndex = 0;
        Direccion.Text = "";
        Telefono.Text = "";
        Celular.Text = "";
        registro.Text = "";
      
        Correo_electronico.Text = "";
        Cursos1.Visible = false;
    }
    protected void Region0_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Region0.Items[0].Selected == true)
            InitDistrict();
        if (Region0.Items[1].Selected == true)
        {
            Distrito0.Items.Clear();
            Distrito0.Enabled = true;
            Distrito0.Items.Add("Camana");
            Distrito0.Items.Add("Quilca");
            Distrito0.Items.Add("Ocoña");
        }
        if (Region0.Items[2].Selected == true)
        {
            Distrito0.Items.Clear();
            Distrito0.Enabled = true;
            Distrito0.Items.Add("Atico");
            Distrito0.Items.Add("Caraveli");
            Distrito0.Items.Add("Chala");
            Distrito0.Items.Add("Lomas");
        }
        if (Region0.Items[3].Selected == true)
        {
            Distrito0.Items.Clear();
            Distrito0.Enabled = true;
            Distrito0.Items.Add("Aplao");
            Distrito0.Items.Add("Orcopampa");
            Distrito0.Items.Add("Pampacolca");
            Distrito0.Items.Add("Viraco");
        }
        if (Region0.Items[4].Selected == true)
        {
            Distrito0.Items.Clear();
            Distrito0.Enabled = true;
            Distrito0.Items.Add("Caylloma");
            Distrito0.Items.Add("Chivay");
            Distrito0.Items.Add("Majes");
            Distrito0.Items.Add("Tapay");
        }
        if (Region0.Items[5].Selected == true)
        {
            Distrito0.Items.Clear();
            Distrito0.Enabled = true;
            Distrito0.Items.Add("Andaray");
            Distrito0.Items.Add("Chichas");
            Distrito0.Items.Add("Chuquibamba");
            Distrito0.Items.Add("Salamanca");
        }
        if (Region0.Items[6].Selected == true)
        {
            Distrito0.Items.Clear();
            Distrito0.Enabled = true;
            Distrito0.Items.Add("Cocachacra");
            Distrito0.Items.Add("Islay");
            Distrito0.Items.Add("Mejia");
            Distrito0.Items.Add("Mollendo");
        }
        if (Region0.Items[7].Selected == true)
        {
            Distrito0.Items.Clear();
            Distrito0.Enabled = true;
            Distrito0.Items.Add("Alca");
            Distrito0.Items.Add("Cotahuasi");
            Distrito0.Items.Add("Tomepampa");
            Distrito0.Items.Add("Toro");
        }
    }
    protected void agregar0_Click(object sender, EventArgs e)
    {
       
    }
    protected void Matricularse0_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(connectionString);

        if (Nombre0.Text == "" || Apellido0.Text == "" || DNI0.Text == "" || Direccion0.Text == "" || Telefono0.Text == "" || Celular0.Text == "" || Correo_electronico0.Text == "")
        {
            registro0.Style["color"] = "Red";
            registro0.Text = "MATRICULA NO REGISTRADA, llene todos los campos...";
        }
        else
        {
            SqlCommand cmd = new SqlCommand();

            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO Ingenierias VALUES (@nombre, @apellidos, @DNI, @fechanac,@genero,@grado,@seccion,@escuela,@region,@distrito,@direccion,@telefono,@celular,@email)";
            cmd.Parameters.Add("@nombre", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@apellidos", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@DNI", System.Data.SqlDbType.Int);
            cmd.Parameters.Add("@fechanac", System.Data.SqlDbType.Date);
            cmd.Parameters.Add("@genero", System.Data.SqlDbType.NChar);
            cmd.Parameters.Add("@grado", System.Data.SqlDbType.NChar);
            cmd.Parameters.Add("@seccion", System.Data.SqlDbType.NChar);
            cmd.Parameters.Add("@escuela", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@region", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@distrito", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@direccion", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@telefono", System.Data.SqlDbType.Int);
            cmd.Parameters.Add("@celular", System.Data.SqlDbType.Int);
            cmd.Parameters.Add("@email", System.Data.SqlDbType.NVarChar);
            //cmd.Parameters.Add("@foto", System.Data.SqlDbType.Image).Value=photo;


            cmd.Parameters["@nombre"].Value = Nombre0.Text;
            cmd.Parameters["@apellidos"].Value = Apellido0.Text;
            cmd.Parameters["@DNI"].Value = Int32.Parse(DNI0.Text); ;
            cmd.Parameters["@fechanac"].Value = Dias0.Text + "-" + Meses0.Text + "-" + Años0.Text;
            cmd.Parameters["@genero"].Value = genero0.SelectedItem.Text;
            cmd.Parameters["@grado"].Value = Grado.SelectedItem.Text;
            cmd.Parameters["@seccion"].Value = Seccion.SelectedItem.Text;
            cmd.Parameters["@escuela"].Value = Escuela.SelectedItem.Text;
            cmd.Parameters["@region"].Value = Region0.SelectedItem.Text;
            cmd.Parameters["@distrito"].Value = Distrito0.SelectedItem.Text;
            cmd.Parameters["@direccion"].Value = Direccion0.Text;
            cmd.Parameters["@telefono"].Value = Int32.Parse(Telefono0.Text);
            cmd.Parameters["@celular"].Value = Int32.Parse(Celular0.Text);
            cmd.Parameters["@email"].Value = Correo_electronico0.Text;



            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                registro0.Style["color"] = "Blue";
                registro0.Text = "MATRICULA REGISTRADA";
                con.Close();

            }
            catch (Exception err)
            {
                registro0.Text = "Error al registrar alumno";
                registro0.Text += err.Message;
            }


            Cursos.Visible = true;
            FileStream fs = new FileStream(@"F:\SuperProProductList.xml",
                         FileMode.Create);
            XmlTextWriter w = new XmlTextWriter(fs, null);

            w.WriteStartDocument();
            w.WriteStartElement("SuperProProductList");
            w.WriteComment("This file generated by the XmlTextWriter class.");

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "1");
            w.WriteAttributeString("Curso", "", "ALGEBRA Y GEOMETRIA");

            w.WriteStartElement("Creditos");
            w.WriteString("4");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "2");
            w.WriteAttributeString("Curso", "", "INGENIERIA DE SISTEMAS");

            w.WriteStartElement("Creditos");
            w.WriteString("4");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "3");
            w.WriteAttributeString("Curso", "", "PROPEDEUTICA");

            w.WriteStartElement("Creditos");
            w.WriteString("2");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "4");
            w.WriteAttributeString("Curso", "", "SOCIOLOGIA");

            w.WriteStartElement("Creditos");
            w.WriteString("2");
            w.WriteEndElement();

            w.WriteEndElement();
            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "5");
            w.WriteAttributeString("Curso", "", "M. DE LA PROGRAMACION");

            w.WriteStartElement("Creditos");
            w.WriteString("5");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "6");
            w.WriteAttributeString("Curso", "", "D.SOCIAL DE LA IGLESIA");

            w.WriteStartElement("Creditos");
            w.WriteString("2");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "7");
            w.WriteAttributeString("Curso", "", "CALCULO DIFERENCIAL");

            w.WriteStartElement("Creditos");
            w.WriteString("4");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "8");
            w.WriteAttributeString("Curso", "", "DESARROLLO HUMANO");

            w.WriteStartElement("Creditos");
            w.WriteString("2");
            w.WriteEndElement();

            w.WriteEndElement();
            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "9");
            w.WriteAttributeString("Curso", "", "COMU. ORAL Y ESCRITA");

            w.WriteStartElement("Creditos");
            w.WriteString("2");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "10");
            w.WriteAttributeString("Curso", "", "F.DE PROGRAMACION");

            w.WriteStartElement("Creditos");
            w.WriteString("4");
            w.WriteEndElement();

            w.WriteEndElement();
            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "11");
            w.WriteAttributeString("Curso", "", "PROGRAMACION I");

            w.WriteStartElement("Creditos");
            w.WriteString("5");
            w.WriteEndElement();

            w.WriteEndElement();
            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "12");
            w.WriteAttributeString("Curso", "", "ESTRUCTURAS DISCRETAS I");

            w.WriteStartElement("Creditos");
            w.WriteString("4");
            w.WriteEndElement();

            w.WriteEndElement();
            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "13");
            w.WriteAttributeString("Curso", "", "FISICA I");

            w.WriteStartElement("Creditos");
            w.WriteString("4");
            w.WriteEndElement();

            w.WriteEndElement();
            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "14");
            w.WriteAttributeString("Curso", "", "CALCULO INTEGRAL");

            w.WriteStartElement("Creditos");
            w.WriteString("4");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "15");
            w.WriteAttributeString("Curso", "", "T. GENERAL DE SISTEMAS");

            w.WriteStartElement("Creditos");
            w.WriteString("2");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteEndElement();
            w.WriteEndDocument();
            w.Close();

            Limpiar0.Visible = false;
        }
    }
    protected void Limpiar0_Click(object sender, EventArgs e)
    {
        Nombre0.Text = "";
        Apellido0.Text = "";
        DNI0.Text = "";
        Dias0.SelectedIndex = 0;
        Meses0.SelectedIndex = 0;
        Años0.SelectedIndex = 0;
        genero0.SelectedIndex = 0;
        Grado.SelectedIndex = 0;
        Seccion.SelectedIndex = 0;
        Region0.SelectedIndex = 0;
        Distrito0.SelectedIndex = 0;
        Direccion0.Text = "";
        Telefono0.Text = "";
        Celular0.Text = "";
        registro0.Text = "";
        
        Correo_electronico0.Text = "";
        Cursos.Visible = false;
    }
    protected void Region1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Region1.Items[0].Selected == true)
            InitDistrict();
        if (Region1.Items[1].Selected == true)
        {
            Distrito1.Items.Clear();
            Distrito1.Enabled = true;
            Distrito1.Items.Add("Camana");
            Distrito1.Items.Add("Quilca");
            Distrito1.Items.Add("Ocoña");
        }
        if (Region1.Items[2].Selected == true)
        {
            Distrito1.Items.Clear();
            Distrito1.Enabled = true;
            Distrito1.Items.Add("Atico");
            Distrito1.Items.Add("Caraveli");
            Distrito1.Items.Add("Chala");
            Distrito1.Items.Add("Lomas");
        }
        if (Region1.Items[3].Selected == true)
        {
            Distrito1.Items.Clear();
            Distrito1.Enabled = true;
            Distrito1.Items.Add("Aplao");
            Distrito1.Items.Add("Orcopampa");
            Distrito1.Items.Add("Pampacolca");
            Distrito1.Items.Add("Viraco");
        }
        if (Region1.Items[4].Selected == true)
        {
            Distrito1.Items.Clear();
            Distrito1.Enabled = true;
            Distrito1.Items.Add("Caylloma");
            Distrito1.Items.Add("Chivay");
            Distrito1.Items.Add("Majes");
            Distrito1.Items.Add("Tapay");
        }
        if (Region1.Items[5].Selected == true)
        {
            Distrito1.Items.Clear();
            Distrito1.Enabled = true;
            Distrito1.Items.Add("Andaray");
            Distrito1.Items.Add("Chichas");
            Distrito1.Items.Add("Chuquibamba");
            Distrito1.Items.Add("Salamanca");
        }
        if (Region1.Items[6].Selected == true)
        {
            Distrito1.Items.Clear();
            Distrito1.Enabled = true;
            Distrito1.Items.Add("Cocachacra");
            Distrito1.Items.Add("Islay");
            Distrito1.Items.Add("Mejia");
            Distrito1.Items.Add("Mollendo");
        }
        if (Region1.Items[7].Selected == true)
        {
            Distrito1.Items.Clear();
            Distrito1.Enabled = true;
            Distrito1.Items.Add("Alca");
            Distrito1.Items.Add("Cotahuasi");
            Distrito1.Items.Add("Tomepampa");
            Distrito1.Items.Add("Toro");
        }
    }
    protected void agregar1_Click(object sender, EventArgs e)
    {
       
    }
    protected void Matricularse1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(connectionString);

        if (Nombre1.Text == "" || Apellido1.Text == "" || DNI1.Text == "" || Direccion1.Text == "" || Telefono1.Text == "" || Celular1.Text == "" || Correo_electronico1.Text == "")
        {
            registro1.Style["color"] = "Red";
            registro1.Text = "MATRICULA NO REGISTRADA, llene todos los campos...";
        }
        else
        {

            SqlCommand cmd = new SqlCommand();

            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO Juridicas VALUES (@nombre, @apellidos, @DNI, @fechanac,@genero,@grado,@seccion,@escuela,@region,@distrito,@direccion,@telefono,@celular,@email)";
            cmd.Parameters.Add("@nombre", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@apellidos", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@DNI", System.Data.SqlDbType.Int);
            cmd.Parameters.Add("@fechanac", System.Data.SqlDbType.Date);
            cmd.Parameters.Add("@genero", System.Data.SqlDbType.NChar);
            cmd.Parameters.Add("@grado", System.Data.SqlDbType.NChar);
            cmd.Parameters.Add("@seccion", System.Data.SqlDbType.NChar);
            cmd.Parameters.Add("@escuela", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@region", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@distrito", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@direccion", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@telefono", System.Data.SqlDbType.Int);
            cmd.Parameters.Add("@celular", System.Data.SqlDbType.Int);
            cmd.Parameters.Add("@email", System.Data.SqlDbType.NVarChar);
            //cmd.Parameters.Add("@foto", System.Data.SqlDbType.Image).Value=photo;


            cmd.Parameters["@nombre"].Value = Nombre1.Text;
            cmd.Parameters["@apellidos"].Value = Apellido1.Text;
            cmd.Parameters["@DNI"].Value = Int32.Parse(DNI1.Text); ;
            cmd.Parameters["@fechanac"].Value = Dias1.Text + "-" + Meses1.Text + "-" + Años1.Text;
            cmd.Parameters["@genero"].Value = genero1.Text;
            cmd.Parameters["@grado"].Value = Grado0.SelectedItem.Text;
            cmd.Parameters["@seccion"].Value = Seccion0.SelectedItem.Text;
            cmd.Parameters["@escuela"].Value = Escuela0.SelectedItem.Text;
            cmd.Parameters["@region"].Value = Region1.SelectedItem.Text;
            cmd.Parameters["@distrito"].Value = Distrito1.SelectedItem.Text;
            cmd.Parameters["@direccion"].Value = Direccion1.Text;
            cmd.Parameters["@telefono"].Value = Int32.Parse(Telefono1.Text);
            cmd.Parameters["@celular"].Value = Int32.Parse(Celular1.Text);
            cmd.Parameters["@email"].Value = Correo_electronico1.Text;



            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                registro1.Style["color"] = "Blue";
                registro1.Text = "MATRICULA REGISTRADA";
                con.Close();

            }
            catch (Exception err)
            {
                registro1.Text = "Error al registrar alumno";
                registro1.Text += err.Message;
            }
            Cursos0.Visible = true;
            FileStream fs = new FileStream(@"F:\SuperProProductList.xml",
                        FileMode.Create);
            XmlTextWriter w = new XmlTextWriter(fs, null);

            w.WriteStartDocument();
            w.WriteStartElement("SuperProProductList");
            w.WriteComment("This file generated by the XmlTextWriter class.");

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("Codigo", "", "1");
            w.WriteAttributeString("Nombre_Utiles", "", "Psicología");

            w.WriteStartElement("Creditos");
            w.WriteString("3");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("Codigo", "", "2");
            w.WriteAttributeString("Nombre_Utiles", "", "Propedeútica del Trabajo");

            w.WriteStartElement("Creditos");
            w.WriteString("3");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("Codigo", "", "3");
            w.WriteAttributeString("Nombre_Utiles", "", "Comu. Oral y Escrit");

            w.WriteStartElement("Creditos");
            w.WriteString("3");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("Codigo", "", "4");
            w.WriteAttributeString("Nombre_Utiles", "", "Matemática y Estadística");

            w.WriteStartElement("Creditos");
            w.WriteString("3");
            w.WriteEndElement();

            w.WriteEndElement();
            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "5");
            w.WriteAttributeString("Nombre_Utiles", "", "Realidad Nacional");

            w.WriteStartElement("Creditos");
            w.WriteString("3");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "6");
            w.WriteAttributeString("Nombre_Utiles", "", "D. Social de la Iglesia");

            w.WriteStartElement("Creditos");
            w.WriteString("4");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "7");
            w.WriteAttributeString("Nombre_Utiles", "", "Desarrollo Humano");

            w.WriteStartElement("Creditos");
            w.WriteString("3");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "8");
            w.WriteAttributeString("Nombre_Utiles", "", "M. de la Investigación");

            w.WriteStartElement("Creditos");
            w.WriteString("3");
            w.WriteEndElement();

            w.WriteEndElement();
            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "9");
            w.WriteAttributeString("Nombre_Utiles", "", "Principios de Economía");

            w.WriteStartElement("Creditos");
            w.WriteString("3");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "10");
            w.WriteAttributeString("Nombre_Utiles", "", "Fund. de Contabilidad");

            w.WriteStartElement("Creditos");
            w.WriteString("3");
            w.WriteEndElement();

            w.WriteEndElement();
            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "11");
            w.WriteAttributeString("Nombre_Utiles", "", "Lógica Jurídica");

            w.WriteStartElement("Creditos");
            w.WriteString("3");
            w.WriteEndElement();

            w.WriteEndElement();
            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "12");
            w.WriteAttributeString("Nombre_Utiles", "", "Derecho Romano");

            w.WriteStartElement("Creditos");
            w.WriteString("4");
            w.WriteEndElement();           

            w.WriteEndElement();
            w.WriteEndDocument();
            w.Close();

            Limpiar1.Visible = false;
        }
    }
    protected void Limpiar1_Click(object sender, EventArgs e)
    {
        Nombre1.Text = "";
        Apellido1.Text = "";
        DNI1.Text = "";
        Dias1.SelectedIndex = 0;
        Meses1.SelectedIndex = 0;
        Años1.SelectedIndex = 0;
        genero1.SelectedIndex = 0;
        Grado1.SelectedIndex = 0;
        Seccion1.SelectedIndex = 0;
        Region1.SelectedIndex = 0;
        Distrito1.SelectedIndex = 0;
        Direccion1.Text = "";
        Telefono1.Text = "";
        Celular1.Text = "";
        registro.Text = "";
        Correo_electronico1.Text = "";
        Cursos1.Visible = false;
    }

    protected void Region2_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (Region1.Items[0].Selected == true)
            InitDistrict();
        if (Region1.Items[1].Selected == true)
        {
            Distrito1.Items.Clear();
            Distrito1.Enabled = true;
            Distrito1.Items.Add("Camana");
            Distrito1.Items.Add("Quilca");
            Distrito1.Items.Add("Ocoña");
        }
        if (Region1.Items[2].Selected == true)
        {
            Distrito1.Items.Clear();
            Distrito1.Enabled = true;
            Distrito1.Items.Add("Atico");
            Distrito1.Items.Add("Caraveli");
            Distrito1.Items.Add("Chala");
            Distrito1.Items.Add("Lomas");
        }
        if (Region1.Items[3].Selected == true)
        {
            Distrito1.Items.Clear();
            Distrito1.Enabled = true;
            Distrito1.Items.Add("Aplao");
            Distrito1.Items.Add("Orcopampa");
            Distrito1.Items.Add("Pampacolca");
            Distrito1.Items.Add("Viraco");
        }
        if (Region1.Items[4].Selected == true)
        {
            Distrito1.Items.Clear();
            Distrito1.Enabled = true;
            Distrito1.Items.Add("Caylloma");
            Distrito1.Items.Add("Chivay");
            Distrito1.Items.Add("Majes");
            Distrito1.Items.Add("Tapay");
        }
        if (Region1.Items[5].Selected == true)
        {
            Distrito1.Items.Clear();
            Distrito1.Enabled = true;
            Distrito1.Items.Add("Andaray");
            Distrito1.Items.Add("Chichas");
            Distrito1.Items.Add("Chuquibamba");
            Distrito1.Items.Add("Salamanca");
        }
        if (Region1.Items[6].Selected == true)
        {
            Distrito1.Items.Clear();
            Distrito1.Enabled = true;
            Distrito1.Items.Add("Cocachacra");
            Distrito1.Items.Add("Islay");
            Distrito1.Items.Add("Mejia");
            Distrito1.Items.Add("Mollendo");
        }
        if (Region1.Items[7].Selected == true)
        {
            Distrito1.Items.Clear();
            Distrito1.Enabled = true;
            Distrito1.Items.Add("Alca");
            Distrito1.Items.Add("Cotahuasi");
            Distrito1.Items.Add("Tomepampa");
            Distrito1.Items.Add("Toro");
        }
    }
    protected void agregar2_Click(object sender, EventArgs e)
    {

    }
    protected void Matricularse2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(connectionString);

        if (Nombre2.Text == "" || Apellido2.Text == "" || DNI2.Text == "" || Direccion2.Text == "" || Telefono2.Text == "" || Celular2.Text == "" || Correo_electronico2.Text == "")
        {
            registro2.Style["color"] = "Red";
            registro2.Text = "MATRICULA NO REGISTRADA, llene todos los campos...";
        }
        else
        {

            SqlCommand cmd = new SqlCommand();

            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO Sociales VALUES (@nombre, @apellidos, @DNI, @fechanac,@genero,@grado,@seccion,@escuela,@region,@distrito,@direccion,@telefono,@celular,@email)";
            cmd.Parameters.Add("@nombre", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@apellidos", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@DNI", System.Data.SqlDbType.Int);
            cmd.Parameters.Add("@fechanac", System.Data.SqlDbType.Date);
            cmd.Parameters.Add("@genero", System.Data.SqlDbType.NChar);
            cmd.Parameters.Add("@grado", System.Data.SqlDbType.NChar);
            cmd.Parameters.Add("@seccion", System.Data.SqlDbType.NChar);
            cmd.Parameters.Add("@escuela", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@region", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@distrito", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@direccion", System.Data.SqlDbType.NVarChar);
            cmd.Parameters.Add("@telefono", System.Data.SqlDbType.Int);
            cmd.Parameters.Add("@celular", System.Data.SqlDbType.Int);
            cmd.Parameters.Add("@email", System.Data.SqlDbType.NVarChar);
            //cmd.Parameters.Add("@foto", System.Data.SqlDbType.Image).Value=photo;


            cmd.Parameters["@nombre"].Value = Nombre2.Text;
            cmd.Parameters["@apellidos"].Value = Apellido2.Text;
            cmd.Parameters["@DNI"].Value = Int32.Parse(DNI2.Text); ;
            cmd.Parameters["@fechanac"].Value = Dias2.Text + "-" + Meses2.Text + "-" + Años2.Text;
            cmd.Parameters["@genero"].Value = genero.Text;
            cmd.Parameters["@grado"].Value = Grado2.SelectedItem.Text;
            cmd.Parameters["@seccion"].Value = Seccion2.SelectedItem.Text;
            cmd.Parameters["@escuela"].Value = Escuela2.SelectedItem.Text;
            cmd.Parameters["@region"].Value = Region2.SelectedItem.Text;
            cmd.Parameters["@distrito"].Value = Distrito2.SelectedItem.Text;
            cmd.Parameters["@direccion"].Value = Direccion2.Text;
            cmd.Parameters["@telefono"].Value = Int32.Parse(Telefono2.Text);
            cmd.Parameters["@celular"].Value = Int32.Parse(Celular2.Text);
            cmd.Parameters["@email"].Value = Correo_electronico2.Text;



            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                registro2.Style["color"] = "Blue";
                registro2.Text = "MATRICULA REGISTRADA";
                con.Close();

            }
            catch (Exception err)
            {
                registro2.Text = "Error al registrar alumno";
                registro2.Text += err.Message;
            }
            Cursos0.Visible = true;
            FileStream fs = new FileStream(@"F:\SuperProProductList.xml",
                        FileMode.Create);
            XmlTextWriter w = new XmlTextWriter(fs, null);

            w.WriteStartDocument();
            w.WriteStartElement("SuperProProductList");
            w.WriteComment("This file generated by the XmlTextWriter class.");

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("Codigo", "", "1");
            w.WriteAttributeString("Nombre_Utiles", "", "Psicología");

            w.WriteStartElement("Creditos");
            w.WriteString("3");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("Codigo", "", "2");
            w.WriteAttributeString("Nombre_Utiles", "", "Propedeútica del Trabajo");

            w.WriteStartElement("Creditos");
            w.WriteString("3");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("Codigo", "", "3");
            w.WriteAttributeString("Nombre_Utiles", "", "Comu. Oral y Escrit");

            w.WriteStartElement("Creditos");
            w.WriteString("3");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("Codigo", "", "4");
            w.WriteAttributeString("Nombre_Utiles", "", "Matemática y Estadística");

            w.WriteStartElement("Creditos");
            w.WriteString("3");
            w.WriteEndElement();

            w.WriteEndElement();
            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "5");
            w.WriteAttributeString("Nombre_Utiles", "", "Realidad Nacional");

            w.WriteStartElement("Creditos");
            w.WriteString("3");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "6");
            w.WriteAttributeString("Nombre_Utiles", "", "D. Social de la Iglesia");

            w.WriteStartElement("Creditos");
            w.WriteString("4");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "7");
            w.WriteAttributeString("Nombre_Utiles", "", "Desarrollo Humano");

            w.WriteStartElement("Creditos");
            w.WriteString("3");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "8");
            w.WriteAttributeString("Nombre_Utiles", "", "M. de la Investigación");

            w.WriteStartElement("Creditos");
            w.WriteString("3");
            w.WriteEndElement();

            w.WriteEndElement();
            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "9");
            w.WriteAttributeString("Nombre_Utiles", "", "Principios de Economía");

            w.WriteStartElement("Creditos");
            w.WriteString("3");
            w.WriteEndElement();

            w.WriteEndElement();

            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "10");
            w.WriteAttributeString("Nombre_Utiles", "", "Fund. de Contabilidad");

            w.WriteStartElement("Creditos");
            w.WriteString("3");
            w.WriteEndElement();

            w.WriteEndElement();
            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "11");
            w.WriteAttributeString("Nombre_Utiles", "", "Lógica Jurídica");

            w.WriteStartElement("Creditos");
            w.WriteString("3");
            w.WriteEndElement();

            w.WriteEndElement();
            w.WriteStartElement("Lista_Utiles");
            w.WriteAttributeString("id", "", "12");
            w.WriteAttributeString("Nombre_Utiles", "", "Derecho Romano");

            w.WriteStartElement("Creditos");
            w.WriteString("4");
            w.WriteEndElement();

            w.WriteEndElement();
            w.WriteEndDocument();
            w.Close();

            Limpiar1.Visible = false;
        }
    }
    protected void Limpiar2_Click(object sender, EventArgs e)
    {
        Nombre2.Text = "";
        Apellido2.Text = "";
        DNI2.Text = "";
        Dias2.SelectedIndex = 0;
        Meses2.SelectedIndex = 0;
        Años2.SelectedIndex = 0;
        genero2.SelectedIndex = 0;
        Grado2.SelectedIndex = 0;
        Seccion2.SelectedIndex = 0;
        Region2.SelectedIndex = 0;
        Distrito2.SelectedIndex = 0;
        Direccion2.Text = "";
        Telefono2.Text = "";
        Celular2.Text = "";
        registro2.Text = "";
        Correo_electronico2.Text = "";
        Cursos2.Visible = false;
    }
    protected void Lista_de_utiles_Click(object sender, EventArgs e)
    {
        FileStream fs = new FileStream(@"F:\SuperProProductList.xml",
                           FileMode.Open);
        XmlTextReader r = new XmlTextReader(fs);
        List<Lista_Utiles> listUtiles = new List<Lista_Utiles>();

        while(r.Read())
        {
            if(r.NodeType == XmlNodeType.Element && r.Name =="Lista_Utiles")
            {
                Lista_Utiles newUtiles=new Lista_Utiles();
                newUtiles.ID=Int32.Parse(r.GetAttribute(0));
                newUtiles.curso=r.GetAttribute(1);

                while (r.NodeType != XmlNodeType.EndElement)
                {
                    r.Read();
                    if (r.Name == "Creditos")
                    {
                        while (r.NodeType != XmlNodeType.EndElement)
                        {
                            r.Read();
                            if (r.NodeType == XmlNodeType.Text)
                            {
                                newUtiles.creditos = Int32.Parse(r.Value);
                            }
                        }
                    }
                }
                listUtiles.Add(newUtiles);
            }
        }
        r.Close();
        Utiles.DataSource = listUtiles;
        Utiles.DataBind();
    }

    protected void Lista_de_utiles0_Click(object sender, EventArgs e)
    {
        FileStream fs = new FileStream(@"F:\SuperProProductList.xml",
                           FileMode.Open);
        XmlTextReader r = new XmlTextReader(fs);
        List<Lista_Utiles> listUtiles = new List<Lista_Utiles>();

        while (r.Read())
        {
            if (r.NodeType == XmlNodeType.Element && r.Name == "Lista_Utiles")
            {
                Lista_Utiles newUtiles = new Lista_Utiles();
                newUtiles.ID = Int32.Parse(r.GetAttribute(0));
                newUtiles.curso = r.GetAttribute(1);

                while (r.NodeType != XmlNodeType.EndElement)
                {
                    r.Read();
                    if (r.Name == "Creditos")
                    {
                        while (r.NodeType != XmlNodeType.EndElement)
                        {
                            r.Read();
                            if (r.NodeType == XmlNodeType.Text)
                            {
                                newUtiles.creditos = Int32.Parse(r.Value);
                            }
                        }
                    }
                }
                listUtiles.Add(newUtiles);
            }
        }
        r.Close();
        Utiles0.DataSource = listUtiles;
        Utiles0.DataBind();
    }
    protected void Lista_de_utiles1_Click(object sender, EventArgs e)
    {
        FileStream fs = new FileStream(@"F:\SuperProProductList.xml",
                           FileMode.Open);
        XmlTextReader r = new XmlTextReader(fs);
        List<Lista_Utiles> listUtiles = new List<Lista_Utiles>();

        while (r.Read())
        {
            if (r.NodeType == XmlNodeType.Element && r.Name == "Lista_Utiles")
            {
                Lista_Utiles newUtiles = new Lista_Utiles();
                newUtiles.ID = Int32.Parse(r.GetAttribute(0));
                newUtiles.curso = r.GetAttribute(1);

                while (r.NodeType != XmlNodeType.EndElement)
                {
                    r.Read();
                    if (r.Name == "Creditos")
                    {
                        while (r.NodeType != XmlNodeType.EndElement)
                        {
                            r.Read();
                            if (r.NodeType == XmlNodeType.Text)
                            {
                                newUtiles.creditos = Int32.Parse(r.Value);
                            }
                        }
                    }
                }
                listUtiles.Add(newUtiles);
            }
        }
        r.Close();
        Utiles1.DataSource = listUtiles;
        Utiles1.DataBind();
    }
    protected void Grado_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Años1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void tbCodigo_TextChanged(object sender, EventArgs e)
    {

    }
    protected void tbPassword_TextChanged(object sender, EventArgs e)
    {

    }
}