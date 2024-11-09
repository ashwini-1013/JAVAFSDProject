/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.blog.entities;

import java.sql.Timestamp;

/**
 *
 * @author kavit
 */
public class Post {
    private int pId;
    private String pTitle;
    private String pContent;
    private String pTags;
    private String pImage;
    private Timestamp date;
    private int uId;

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public String getpTitle() {
        return pTitle;
    }

    public void setpTitle(String pTitle) {
        this.pTitle = pTitle;
    }

    public String getpContent() {
        return pContent;
    }

    public void setpContent(String pContent) {
        this.pContent = pContent;
    }

    public String getpTags() {
        return pTags;
    }

    public void setpTags(String pTags) {
        this.pTags = pTags;
    }

    public String getpImage() {
        return pImage;
    }

    public void setpImage(String pImage) {
        this.pImage = pImage;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    public int getUid() {
        return uId;
    }

    public void setUid(int uId) {
        this.uId = uId;
    }
    
    

    public Post(int pId, String pTitle, String pContent, String pTags, String pImage, Timestamp date, int uId) {
        this.pId = pId;
        this.pTitle = pTitle;
        this.pContent = pContent;
        this.pTags = pTags;
        this.pImage = pImage;
        this.date = date;
        this.uId = uId;
    }
    
    public Post(String pTitle, String pContent, String pTags, String pImage, Timestamp date, int uId) {
        this.pTitle = pTitle;
        this.pContent = pContent;
        this.pTags = pTags;
        this.pImage = pImage;
        this.date = date;
        this.uId = uId;
    }
    
    
}
