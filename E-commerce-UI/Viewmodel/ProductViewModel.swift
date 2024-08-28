//
//  SwiftUIView.swift
//  E-commerce-UI
//
//  Created by Ounbonaliheng on 27/8/24.
//

import Foundation

class ProductViewModel: ObservableObject {
    @Published var productItem: [ProductItemModel] = []
    @Published var OrderProduct: [OrderProductModel] = []
    @Published var Category: [CategoryModel] = []
    
    init(){
        loadCategory()
        loadProductItem()
        loadOrderItem()
    }
    func loadCategory(){
        Category = [
            CategoryModel(title: "New Arrivals", desc: "205 Products", image: "jean",position: true),
            CategoryModel(title: "Clothes", desc: "205 Products", image: "tshirt2",position: false),
            CategoryModel(title: "Bags", desc: "205 Products", image: "zara",position: true),
            CategoryModel(title: "Shoese", desc: "205 Products", image: "zara1",position: false),
            CategoryModel(title: "Electronics", desc: "205 Products", image: "zarabag",position: true),
        ]
    }
    
    func loadProductItem(){
        productItem = [
            ProductItemModel(title: "The Mirac Jiz", desc: "Lisa Robber", price: 20.40, image: "bag", isFavorite: false),
            ProductItemModel(title: "The Mirac Jiz", desc: "Lisa Robber", price: 350, image: "bag3", isFavorite: false),
            ProductItemModel(title: "The Mirac Jiz", desc: "Lisa Robber", price: 400, image: "watchTissot", isFavorite: false),
            ProductItemModel(title: "The Mirac Jiz", desc: "Lisa Robber", price: 200, image: "bag4", isFavorite: false),
            ProductItemModel(title: "The Mirac Jiz", desc: "Lisa Robber", price: 700, image: "watchWoman", isFavorite: false),
            ProductItemModel(title: "The Mirac Jiz", desc: "Lisa Robber", price: 459, image: "bagboy1", isFavorite: false),
            ProductItemModel(title: "The Mirac Jiz", desc: "Lisa Robber", price: 550, image: "nike2", isFavorite: false),
            ProductItemModel(title: "The Mirac Jiz", desc: "Lisa Robber", price: 1000, image: "nike3", isFavorite: false),
            ProductItemModel(title: "The Mirac Jiz", desc: "Lisa Robber", price: 1000, image: "shootnike", isFavorite: false),
            ProductItemModel(title: "The Mirac Jiz", desc: "Lisa Robber", price: 1500, image: "Dior", isFavorite: false),
        ]
    }
    
    func loadOrderItem(){
        OrderProduct = [
            OrderProductModel(title: "Bix Bag Limited Edition 229", Color: .white, Qty: 20, image: "bagboy1", price: 100.00, Status: false),
            OrderProductModel(title: "Watch Limited Edition 2024", Color: .red, Qty: 5, image: "watchTissot", price: 120.00, Status: false),
            OrderProductModel(title: "Bag girl Limited Edition 2024", Color: .yellow, Qty: 30, image:"bag3" , price: 349.99, Status: false),
            OrderProductModel(title: "Bix Shoes Dior Limited Editoion 229", Color: .green, Qty: 30, image: "Dior", price: 599.90, Status: false),
            OrderProductModel(title: "Bix Nike Limited Edition 229", Color: .blue, Qty: 45, image:"nike2", price: 330.30, Status: false),
            OrderProductModel(title: "Bix Bag Limited Edtion 229", Color: .blue, Qty: 30, image: "shootnike", price: 299.99, Status: false),
            OrderProductModel(title: "Bix Bag Limited Edtion 229", Color: .pink, Qty: 20, image: "watchWoman", price: 199.99, Status: false),
        ]
    }
    
}
