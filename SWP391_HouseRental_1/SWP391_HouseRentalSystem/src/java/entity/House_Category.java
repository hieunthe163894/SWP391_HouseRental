/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Thang
 */
public class House_Category {
    private int ID;
    private String Category;

    public House_Category(int ID, String Category) {
        this.ID = ID;
        this.Category = Category;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getCategory() {
        return Category;
    }

    public void setCategory(String Category) {
        this.Category = Category;
    }

    @Override
    public String toString() {
        return "House_Category{" + "ID=" + ID + ", Category=" + Category + '}';
    }
    
}
