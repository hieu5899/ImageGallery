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
public class Picture {

    /**
     * Store id
     */
    private int id;
    /**
     * Store imgLink
     */
    private String imgLink;
    /**
     * Store imgID;
     */
    private int galleryID;

    /**
     * Constructor
     */
    public Picture() {
    }

    /**
     * Constructor
     *
     * @param id
     * @param imgLink
     * @param galleryID
     */
    public Picture(int id, String imgLink, int galleryID) {
        this.id = id;
        this.imgLink = imgLink;
        this.galleryID = galleryID;
    }

    /**
     * Get id.
     *
     * @return imgID
     */
    public int getId() {
        return id;
    }

    /**
     * Get imgLink.
     *
     * @return imgID
     */
    public String getImgLink() {
        return imgLink;
    }

    /**
     * Get galleryID.
     *
     * @return galleryID
     */
    public int getGalleryID() {
        return galleryID;
    }
}
