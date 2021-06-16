package com.example.HW3.model;

public class User {
    private int id;
    private String name;
    private String psd;
    private String URL;
    private String sign;


    public User(){

    }

    public User(int id,String user,String pwd,String URL,String signature){
        this.id=id;
        this.name=user;
        this.psd=pwd;
        this.URL=URL;
        this.sign=signature;
    }

//    public User(List<Integer> shopping){
//        this.cart=shopping;
//    }

    public int getId(){return id;}
    public String getName(){return name;}
    public String getPsd(){return psd;}
    public String getURL(){return URL;}
    public String getSign(){return sign;}

//    public List<Integer> getcart(){return cart;}

    public void changeuname(String newname){
        this.name=newname;
    }
    public void changepwd(String newpwd){
        this.psd=newpwd;
    }
    public void changesign(String newsign){this.sign=newsign;}

//    public void changecart(List<Integer> newlist){
//        this.cart=newlist;
//    }
}
