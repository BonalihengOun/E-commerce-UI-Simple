//
//  ProductItemModel.swift
//  E-commerce-UI
//
//  Created by Ounbonaliheng on 27/8/24.
//

import SwiftUI

struct ProductItemModel: Identifiable{
    let id = UUID()
    let title:String
    let desc:String
    let price:Double
    let image:String
    let isFavorite:Bool
}
