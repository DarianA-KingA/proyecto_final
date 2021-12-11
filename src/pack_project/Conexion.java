
package pack_project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conexion 
{
    public static Connection getConexion()
    {
      String url="jdbc:sqlserver://localhost:1433;" 
              +"database=almacenitlafinal;"
              +"user=sa;"
              +"password=1234;";  
      try 
      {
          Connection con = DriverManager.getConnection(url);
          return con;
      }
      catch(SQLException e)
      {
          System.out.print(e.toString());
          return null;
      }
    }
}
