/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author Thang
 */
public class House_Directions {
    private int Houses_ID,Number_Of_Bedrooms,Number_Of_Bathrooms,Area,Pool,House_Direction_ID;

    public House_Directions(int Houses_ID, int Number_Of_Bedrooms, int Number_Of_Bathrooms, int Area, int Pool, int House_Direction_ID) {
        this.Houses_ID = Houses_ID;
        this.Number_Of_Bedrooms = Number_Of_Bedrooms;
        this.Number_Of_Bathrooms = Number_Of_Bathrooms;
        this.Area = Area;
        this.Pool = Pool;
        this.House_Direction_ID = House_Direction_ID;
    }

    public int getHouses_ID() {
        return Houses_ID;
    }

    public void setHouses_ID(int Houses_ID) {
        this.Houses_ID = Houses_ID;
    }

    public int getNumber_Of_Bedrooms() {
        return Number_Of_Bedrooms;
    }

    public void setNumber_Of_Bedrooms(int Number_Of_Bedrooms) {
        this.Number_Of_Bedrooms = Number_Of_Bedrooms;
    }

    public int getNumber_Of_Bathrooms() {
        return Number_Of_Bathrooms;
    }

    public void setNumber_Of_Bathrooms(int Number_Of_Bathrooms) {
        this.Number_Of_Bathrooms = Number_Of_Bathrooms;
    }

    public int getArea() {
        return Area;
    }

    public void setArea(int Area) {
        this.Area = Area;
    }

    public int getPool() {
        return Pool;
    }

    public void setPool(int Pool) {
        this.Pool = Pool;
    }

    public int getHouse_Direction_ID() {
        return House_Direction_ID;
    }

    public void setHouse_Direction_ID(int House_Direction_ID) {
        this.House_Direction_ID = House_Direction_ID;
    }

    @Override
    public String toString() {
        return "House_Directions{" + "Houses_ID=" + Houses_ID + ", Number_Of_Bedrooms=" + Number_Of_Bedrooms + ", Number_Of_Bathrooms=" + Number_Of_Bathrooms + ", Area=" + Area + ", Pool=" + Pool + ", House_Direction_ID=" + House_Direction_ID + '}';
    }
    
}
