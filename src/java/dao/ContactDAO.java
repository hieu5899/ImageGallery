/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Contact;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Hieu Mau
 */
public class ContactDAO extends DBContext {

    /**
     * Call the PreparedStatement
     */
    private PreparedStatement ps;
    /**
     * Call the ResultSet
     */
    private ResultSet rs;

    /**
     * Get contact.
     *
     * @return contact
     * @throws Exception
     */
    public Contact getContact() throws Exception {
        String sql = "select * from Contact";
        try {
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                Contact c = new Contact(rs.getInt("id"),
                        rs.getString("address"),
                        rs.getString("city"),
                        rs.getString("country"),
                        rs.getInt("phone"),
                        rs.getString("email"),
                        rs.getString("imgLink"));
                return c;
            }
        } catch (SQLException e) {
            throw e;
        }
        return null;
    }
}
