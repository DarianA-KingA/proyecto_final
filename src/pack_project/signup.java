
package pack_project;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;

public class signup
{
    private String usuario;
    private String nombre;
    private String apellido;      
    private String telefono;    
    private String email;    
    private String password;      
    private String confirmacion_p;
            
    public static signup instance = new signup();
    private signup()
    {
    }
    //metodo por el cual los usuarios se registran
    public void signUp(String user, String name, String last_name,String telephone, String correo, String clave, String confirmation)
    {
        usuario=user;
        nombre=name;
        apellido=last_name;
        telefono=telephone;
        email=correo;
        password=clave;
        confirmacion_p=confirmation;
        if(set() !=true)
        {
            JOptionPane.showMessageDialog(null,"Todo OK");
            try
            {
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement("INSERT into usuarios (UserName, Nombre, Apellido, Telefono, Email, Password) values(?,?,?,?,?,?)");
            ps.setString(1,usuario);
            ps.setString(2,nombre);
            ps.setString(3,apellido);
            ps.setString(4,telefono);
            ps.setString(5,email);
            ps.setString(6,password);
            ps.executeUpdate();
            }
            catch(SQLException e)
            {
                JOptionPane.showMessageDialog(null,e.toString());
            }
        }
        
    }
    //polimorfismo en el metodo set  
    //determina si se cumple las condiciones para el signup
    private boolean set()
    {
        boolean a=false; //comprueba que ningun campo este vacio
        boolean b=false; //comprueba que la password y la confacion sean igual

        boolean resultado=false;
        if(usuario.isEmpty()==true || nombre.isEmpty()==true || apellido.isEmpty()== true || telefono.isEmpty()== true || email.isEmpty()==true || password.isEmpty()==true || confirmacion_p.isEmpty()==true)
        {
            JOptionPane.showMessageDialog(null,"no se aceptan campos vacios");
            a=true;
        }
        else if (password.equals(confirmacion_p)==false)
        {
            JOptionPane.showMessageDialog(null,"la contraseña y la confirmacion no coinciden");
            b=true;
        }
        if(a ==true || b==true)
        {
            resultado=true;
        }
        return resultado;
    }
    //polimorfismo en el metodo set y encapsimalimento

    //para el nombre o apellido, que no admita numeros
    public boolean set(String cadena) {
        boolean resultado;
        try {
            Integer.parseInt(cadena);
            resultado = true;
        } catch (NumberFormatException excepcion) {
            resultado = false;
        }

        return resultado;
    }
}
