package Modelo.Administrador.Evento;

import Controlador.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class Evento {

    conexion con=new conexion();
    Connection cnn=con.conexionpa();
    PreparedStatement ps=null;
    ResultSet res=null;
    
    public void Ingresar_evento(GSEventoAdmin ing){
        try{
            ps=cnn.prepareStatement("insert into jornada (fecha,lugar,duracion,descripcion) values(?,?,?,?)");
            ps.setString(1,ing.getFec());
            ps.setString(2,ing.getLug());
            ps.setString(3,ing.getDura());
            ps.setString(4,ing.getDesc());
            ps.executeUpdate();
            JOptionPane.showMessageDialog(null,"Evento Ingresado Correctamente");
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,"No se ha podido Ingresar el Evento");
        }
    }

    public ArrayList<GSEventoAdmin> Consultar(){
    ArrayList<GSEventoAdmin> R = new ArrayList<>();
        try {
            ps=cnn.prepareStatement("Select * from jornada");
            res=ps.executeQuery();
            while (res.next()) {
                
                GSEventoAdmin CF = new GSEventoAdmin(res.getInt(1),res.getString(2),res.getString(3),res.getString(4),res.getString(5));
                R.add(CF);
                
                
            }
        } catch (Exception e) {
        }
        return R;
    }
}
