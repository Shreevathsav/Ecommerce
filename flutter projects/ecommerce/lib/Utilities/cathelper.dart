import 'package:ecommerce/Models/Categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Category> getCategory(){
  List<Category> category = [];
  Category categories = new Category();

  categories.cat="Electronics";
  categories.icons=Icons.computer;
  category.add(categories);

  categories = new Category();
  categories.cat="Groceries";
  categories.icons=Icons.shopping_cart;
  category.add(categories);

  categories = new Category();
  categories.cat="Fashion";
  categories.icons=Icons.shopping_bag;
  category.add(categories);

  categories = new Category();
  categories.cat="Furnitures";
  categories.icons=Icons.chair;
  category.add(categories);

  categories = new Category();
  categories.cat="Jewelries";
  categories.icons=Icons.watch;
  category.add(categories);
    
  categories = new Category();
  categories.cat="Gift Items";
  categories.icons=Icons.card_giftcard;
  category.add(categories);

  categories = new Category();
  categories.cat="Baby Products";
  categories.icons=Icons.baby_changing_station;
  category.add(categories);
  return category;
}