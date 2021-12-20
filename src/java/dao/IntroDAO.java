/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Gallery;
import entity.Intro;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hieu Mau
 */
public class IntroDAO extends DBContext {

    /**
     * Call the PreparedStatement
     */
    private PreparedStatement ps;
    /**
     * Call the ResultSet
     */
    private ResultSet rs;

    /**
     * Get the content for the home page
     *
     * Exception:
     *  -If in/output failed, it will throw Exception.
     *
     * @return Intro
     * @throws Exception
     */
    public Intro getIntro() throws Exception {
        String sql = "select * from Intro";
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                Intro i = new Intro(rs.getInt("id"),
                        rs.getString("title"),
                        rs.getString("about"),
                        rs.getString("imgLink"));
                return i;
            }
        } catch (SQLException e) {
            throw e;
        }
        return null;
    }

    /**
     * Get a list of picture
     * 
     * Exception:
     * -If in/output failed, it will throw Exception.
     * 
     * @return list
     * @throws Exception
     */
    public List<Gallery> getAllGallery() throws Exception {
        String sql = "Select * from Gallery";
        try {
            List<Gallery> list = new ArrayList<>();
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Gallery p = new Gallery(rs.getInt("id"),
                        rs.getString("description"),
                        rs.getString("imgLink"));
                list.add(p);
            }
            return list;
        } catch (SQLException e) {
            throw e;
        }
    }
}
