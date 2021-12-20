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
public class Contact {
    /**
     * Store id
     */
    private int id;
    /**
     * Store address
     */
    private String address;
    /**
     * Store city
     */
    private String city;
    /**
     * Store country
     */
    private String country;
    /**
     * Store phone
     */
    private int phone;
    /**
     * Store email
     */
    private String email;
    /**
     * Store imgLink
     */
    private String imgLink;

    /**
     * Constructor
     */
    public Contact() {
    }
    /**
     * Constructor
     * @param id
     * @param address
     * @param city
     * @param country
     * @param phone
     * @param email
     * @param imgLink 
     */
    public Contact(int id, String address, String city, String country, int phone, String email, String imgLink) {
        this.id = id;
        this.address = address;
        this.city = city;
        this.country = country;
        this.phone = phone;
        this.email = email;
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
     * Get address
     * @return address
     */
    public String getAddress() {
        return address;
    }
    /**
     * Get city
     * @return city
     */
    public String getCity() {
        return city;
    }
    /**
     * Get country
     * @return country
     */
    public String getCountry() {
        return country;
    }
    /**
     * Get phone
     * @return phone
     */
    public int getPhone() {
        return phone;
    }
    /**
     * Get email
     * @return email
     */
    public String getEmail() {
        return email;
    }
    /**
     * Get imgLink
     * @return imgLink
     */
    public String getImgLink() {
        return imgLink;
    }
}
