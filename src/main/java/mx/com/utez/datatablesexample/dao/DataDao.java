package mx.com.utez.datatablesexample.dao;

import mx.com.utez.datatablesexample.model.Data;
import mx.com.utez.datatablesexample.utils.DatabaseConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DataDao {

    public ArrayList<Data> get(int start, int length, String searchTerm, String orderColumn, String orderDir){
        ArrayList<Data> lista = new ArrayList<>();
        String query = "SELECT * FROM data WHERE name LIKE ? OR position LIKE ? OR office LIKE ? " +
                "OR startDate LIKE ? OR age LIKE ? OR salary LIKE ? "+
                "ORDER BY " + orderColumn + " " + orderDir + " LIMIT ? OFFSET ?";
        try{
            Connection con = DatabaseConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(query);
            String searchPattern = "%" + searchTerm + "%";
            ps.setString(1, searchPattern);
            ps.setString(2, searchPattern);
            ps.setString(3, searchPattern);
            ps.setString(4, searchPattern);
            ps.setString(5, searchPattern);
            ps.setString(6, searchPattern);
            ps.setInt(7, length);
            ps.setInt(8, start);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Data d = new Data();
                d.setId(rs.getInt("id"));
                d.setName(rs.getString("name"));
                d.setPosition(rs.getString("position"));
                d.setOffice(rs.getString("office"));
                d.setAge(rs.getInt("age"));
                d.setStartDate(rs.getDate("startDate"));
                d.setSalary(rs.getString("salary"));
                //Definir las acciones dinamicamente:
                d.setModificar("<a class=\"btn btn-primary\" href=\"modificarServlet?id="+d.getId()+"\">Modificar</a>");
                d.setEliminar("<a class=\"btn btn-danger\" href=\"eliminarServlet?id="+d.getId()+"\">Eliminar</a>");
                lista.add(d);
            }
            con.close();
        }catch (SQLException e){
            e.printStackTrace();
        }

        return lista;
    }

    public int countAll(String searchTerm){
        int res = 0;
        String query = "SELECT COUNT(*) AS res FROM data WHERE name LIKE ? OR position LIKE ? OR office LIKE ? " +
                "OR startDate LIKE ? OR age LIKE ? OR salary LIKE ?";
        try{
            Connection con = DatabaseConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(query);
            String searchPattern = "%" + searchTerm + "%";
            ps.setString(1, searchPattern);
            ps.setString(2, searchPattern);
            ps.setString(3, searchPattern);
            ps.setString(4, searchPattern);
            ps.setString(5, searchPattern);
            ps.setString(6, searchPattern);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                res = rs.getInt("res");
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return res;
    }

}
