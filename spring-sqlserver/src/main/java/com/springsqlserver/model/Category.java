package com.springsqlserver.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Category")
public class Category {
    @Id
    private String CategoryID;
    private String CategoryName;

    public void setCategoryID(String categoryID) {
        CategoryID = categoryID;
    }

    public void setCategoryName(String categoryName) {
        CategoryName = categoryName;
    }

    @Override
    public String toString() {
        return "Category{" +
                "CategoryID='" + CategoryID + '\'' +
                ", CategoryName='" + CategoryName + '\'' +
                '}';
    }
}
