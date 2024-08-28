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
            CategoryModel(title: "New Arrivals", desc: "205 Products", image: <#T##String#>)
            CategoryModel(title: "Clothes", desc: "205 Products", image: <#T##String#>)
            CategoryModel(title: "Bags", desc: "205 Products", image: <#T##String#>)
            CategoryModel(title: "Shoese", desc: "205 Products", image: <#T##String#>)
            CategoryModel(title: "Electronics", desc: "205 Products", image: <#T##String#>)
        ]
    }
    
    func loadProductItem(){
       productItem = [
         ProductItemModel(title: <#T##String#>, desc: <#T##String#>, price: <#T##Double#>, image: <#T##String#>, isFavorite: <#T##Bool#>)
       ]
    }
    
    func loadOrderItem(){
       OrderProduct = [
       OrderProductModel(title: <#T##String#>, Color: <#T##Color#>, Qty: <#T##Int#>, image: <#T##String#>, price: <#T##Double#>, Status: <#T##Bool#>)
       ]
    }
    
}
