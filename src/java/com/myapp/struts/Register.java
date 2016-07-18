package com.myapp.struts;
// Generated 10 Jul, 2016 7:49:39 AM by Hibernate Tools 3.2.1.GA



/**
 * Register generated by hbm2java
 */
public class Register extends org.apache.struts.action.ActionForm  implements java.io.Serializable {


     private int username;
     private String name;
     private String email;
     private Long telephone;
     private String password;
     private String confirm;

    public Register() {
    }

	
    public Register(int username) {
        this.username = username;
    }
    public Register(int username, String name, String email, Long telephone, String password, String confirm) {
       this.username = username;
       this.name = name;
       this.email = email;
       this.telephone = telephone;
       this.password = password;
       this.confirm = confirm;
    }
   
    public int getUsername() {
        return this.username;
    }
    
    public void setUsername(int username) {
        this.username = username;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
    public Long getTelephone() {
        return this.telephone;
    }
    
    public void setTelephone(Long telephone) {
        this.telephone = telephone;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public String getConfirm() {
        return this.confirm;
    }
    
    public void setConfirm(String confirm) {
        this.confirm = confirm;
    }




}

