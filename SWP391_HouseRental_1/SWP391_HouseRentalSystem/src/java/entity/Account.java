/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author win
 */
public class Account {

    private int Id;
    private String Fullname, Address, Email, Password, Phone_Number;
    private boolean Gender;
    private int Role_ID, Status, Secure_Question_ID, Secure_Answer_ID;
    private String Profile_Picture;

    public Account() {
    }

    public Account(int Id, String Fullname, boolean Gender, String Address, String Email, String Password, String Phone_Number, int Role_ID, int Status, int Secure_Question_ID, int Secure_Answer_ID, String Profile_Picture) {
        this.Id = Id;
        this.Fullname = Fullname;
        this.Address = Address;
        this.Email = Email;
        this.Password = Password;
        this.Phone_Number = Phone_Number;
        this.Gender = Gender;
        this.Role_ID = Role_ID;
        this.Status = Status;
        this.Secure_Question_ID = Secure_Question_ID;
        this.Secure_Answer_ID = Secure_Answer_ID;
        this.Profile_Picture = Profile_Picture;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getFullname() {
        return Fullname;
    }

    public void setFullname(String Fullname) {
        this.Fullname = Fullname;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getPhone_Number() {
        return Phone_Number;
    }

    public void setPhone_Number(String Phone_Number) {
        this.Phone_Number = Phone_Number;
    }

    public int getGender() {
        return Gender ? 1 : 0;
    }

    public void setGender(boolean Gender) {
        this.Gender = Gender;
    }

    public int getRole_ID() {
        return Role_ID;
    }

    public void setRole_ID(int Role_ID) {
        this.Role_ID = Role_ID;
    }

    public int getStatus() {
        return Status;
    }

    public void setStatus(int Status) {
        this.Status = Status;
    }

    public int getSecure_Question_ID() {
        return Secure_Question_ID;
    }

    public void setSecure_Question_ID(int Secure_Question_ID) {
        this.Secure_Question_ID = Secure_Question_ID;
    }

    public int getSecure_Answer_ID() {
        return Secure_Answer_ID;
    }

    public void setSecure_Answer_ID(int Secure_Answer_ID) {
        this.Secure_Answer_ID = Secure_Answer_ID;
    }

    public String getProfile_Picture() {
        return Profile_Picture;
    }

    public void setProfile_Picture(String Profile_Picture) {
        this.Profile_Picture = Profile_Picture;
    }

    @Override
    public String toString() {
        return "Account{" + "Id=" + Id + ", Fullname=" + Fullname + ", Address=" + Address + ", Email=" + Email + ", Password=" + Password + ", Phone_Number=" + Phone_Number + ", Gender=" + Gender + ", Role_ID=" + Role_ID + ", Status=" + Status + ", Secure_Question_ID=" + Secure_Question_ID + ", Secure_Answer_ID=" + Secure_Answer_ID + ", Profile_Picture=" + Profile_Picture + '}';
    }

}
