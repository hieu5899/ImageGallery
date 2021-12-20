/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Picture;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hieu Mau
 */
public class GalleryDAO extends DBContext{
    /**
     * Call the PreparedStatement
     */
    private PreparedStatement ps;
    /**
     * Call the ResultSet
     */
    private ResultSet rs;
    /**
     * Get a picture by their id
     * 
     * Exception:
     *  -If in/output failed, it will throw Exception.
     * 
     * @param id
     * @return picture
     * @throws Exception 
     */
    public List<Picture> getListPictureByID(int id) throws Exception{
        String sql = "select p.* \n" +
                     "from Gallery as g , Picture as p\n" +
                     "where g.id = p.galleryID and g.id = ?";
        try {
            List<Picture> list = new ArrayList<>();
            ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                Picture mp = new Picture(rs.getInt("id"),
                        rs.getString("imgLink"),
                        rs.getInt("galleryID"));
                list.add(mp);
            }
            return list;
        } catch (SQLException e) {
            throw e;
        }
    }
}
