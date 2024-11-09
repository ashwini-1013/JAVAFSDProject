package com.blog.entities;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class PostData {

    Connection con;

    public PostData(Connection con) {
        this.con = con;
    }

    public boolean savePost(Post p) {
        boolean f = false;
        String q = "insert into newpost(pTitle, pContent, pTags, pImage, uId) values(?, ?, ?, ?, ?)";

        try (PreparedStatement pst = con.prepareStatement(q)) {
            // Setting parameters
            pst.setString(1, p.getpTitle());
            pst.setString(2, p.getpContent());
            pst.setString(3, p.getpTags());
            pst.setString(4, p.getpImage());
            pst.setInt(5, p.getUid());

            // Executing the query
            pst.executeUpdate();
            f = true;
        } catch (Exception e) {
            System.err.println("Error inserting post into database: " + e.getMessage());
            e.printStackTrace();
        }

        return f;
    }

    //get all blog posts:-
    public List<Post> getAllPosts() {
        List<Post> list = new ArrayList<>();
        try {
            PreparedStatement pst = con.prepareStatement("select * from newpost order by pId desc");
            ResultSet set = pst.executeQuery();

            while (set.next()) {
                int pid = set.getInt("pId");
                String pTitle = set.getString("pTitle");
                String pContent = set.getString("pContent");
                String pTag = set.getString("pTags");
                String pPic = set.getString("pImage");
                Timestamp date = set.getTimestamp("pDate");
                
                int userid = set.getInt("uId");

                Post p = new Post(pid, pTitle, pContent,pTag, pPic, date, userid);

                list.add(p);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
