package model;

public class Product {
    private int id;
    private String fullname;
    private Double price;
    private String quantity;
    private String color;
    private String description;
    private int cat_id;

    public Product() {
    }

    public Product(int id, String fullname, Double price, String quantity, String color, String description, int cat_id) {
        this.id = id;
        this.fullname = fullname;
        this.price = price;
        this.quantity = quantity;
        this.color = color;
        this.description = description;
        this.cat_id = cat_id;
    }

    public Product(String fullname, Double price, String quantity, String color, String description, int cat_id) {
        this.fullname = fullname;
        this.price = price;
        this.quantity = quantity;
        this.color = color;
        this.description = description;
        this.cat_id = cat_id;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getCat_id() {
        return cat_id;
    }

    public void setCat_id(int cat_id) {
        this.cat_id = cat_id;
    }
}
