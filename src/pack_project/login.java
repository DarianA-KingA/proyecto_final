package pack_project;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
//clase para crear el metodo de log in, dependiendo de lo que retorne deja entrar al usuario o no
public class login {
public static login instance = new login();
    //el status va a determinar si deja acceder al usuario o no 
    boolean status;
    public login()
    {
        status= false;
    }
    public boolean logIn(String usuario, String password) 
    {
        String cadena="";
        if (usuario.isEmpty() == true || password.isEmpty()==true) 
        {
            JOptionPane.showMessageDialog(null, "usuario o contraseña vacia");
        } 
        else 
        {
            try 
            {
            Connection con = Conexion.getConexion();
            PreparedStatement ps = con.prepareStatement("Select Password from usuarios where UserName=?");
            ps.setString(1, usuario);
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
               cadena= rs.getString("Password");
            }
           // JOptionPane.showMessageDialog(null, cadena + password);
            if(cadena.equals(password))
            {
                status=true;
            }
            } 
            catch(SQLException e) 
            {
                JOptionPane.showMessageDialog(null, e.toString());
            }

        }
        return status;
    }


}
