/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Hieu Mau
 */
public class Gallery {

    /**
     * Store id
     */
    private int id;
    /**
     * Store description
     */
    private String description;
    /**
     * Store imgLink
     */
    private String imgLink;

    /**
     * Constructor
     */
    public Gallery() {
    }

    /**
     * Constructor
     *
     * @param id
     * @param description
     * @param imgLink
     */
    public Gallery(int id, String description, String imgLink) {
        this.id = id;
        this.description = description;
        this.imgLink = imgLink;
    }

    /**
     * Get id
     *
     * @return id
     */
    public int getId() {
        return id;
    }

    /**
     * Get description.
     *
     * @return description.
     */
    public String getDescription() {
        return description;
    }

    /**
     * Get imgLink
     *
     * @return imgLink
     */
    public String getImgLink() {
        return imgLink;
    }
}
