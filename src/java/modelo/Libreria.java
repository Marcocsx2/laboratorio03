package modelo;

import java.sql.*;
import javax.swing.JOptionPane;

public class Libreria {
    
    public Connection con;
    public Statement sen;
    public ResultSet res;
    public String driver="com.mysql.jdbc.Driver";
    public String cadena="jdbc:mysql://localhost/Tienda";
    public String usuario="administrador";
    public String clave="mysql123";
    public ResultSetMetaData meta;
    public int numeroCampos;
    public PreparedStatement presta;
    
    public void conectar() {
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(cadena, usuario, clave);
            sen = con.createStatement();
        } catch (ClassNotFoundException e1) {
            JOptionPane.showMessageDialog(null, "Error en el driver");
        } catch (SQLException e2) {
            JOptionPane.showMessageDialog(null, "Error en la conexion");
        }
    }
    
    public ResultSet consulta(String sql) {
        try {
            res = sen.executeQuery(sql);
            meta = res.getMetaData();
            numeroCampos = meta.getColumnCount();
        } catch (SQLException e3) {
            JOptionPane.showMessageDialog(null, "Error en la consulta");
        }
        
        return res;
        
    }
    
    public ResultSet ValidarLogin(String usuario, String clave) {
        try {
            presta=con.prepareStatement("select * from usuarios where usuario=? and password=? ");
            presta.setString(1, usuario);
            presta.setString(2, clave);
            res = presta.executeQuery();
            meta = res.getMetaData();
            numeroCampos = meta.getColumnCount();
        } catch (SQLException e4) {
            JOptionPane.showConfirmDialog(null, "error en validar login" + e4);
        }
        return res;
    }
    
    
}
