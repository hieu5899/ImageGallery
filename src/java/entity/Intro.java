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
public class Intro {
    /**
     * Store id
     */
    private int id;
    /**
     * Store title
     */
    private String title;
    /**
     * Store about
     */
    private String about;
    /**
     * Store imgLink;
     */
    private String imgLink;

    /**
     * Constructor
     */
    public Intro() {
    }

    /**
     * Constructor
     * @param id
     * @param title
     * @param about
     * @param imgLink 
     */
    public Intro(int id, String title, String about, String imgLink) {
        this.id = id;
        this.title = title;
        this.about = about;
        this.imgLink = imgLink;
    }
    
    /**
     * Get id
     * @return id
     */
    public int getId() {
        return id;
    }
    /**
     * Get title
     * @return title
     */
    public String getTitle() {
        return title;
    }
    /**
     * Get about
     * @return about
     */
    public String getAbout() {
        return about;
    }
    /**
     * Get imgLink
     * @return imgLink
     */
    public String getImgLink() {
        return imgLink;
    }
}
