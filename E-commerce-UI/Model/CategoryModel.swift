//
//  CategoryModel.swift
//  E-commerce-UI
//
//  Created by Ounbonaliheng on 27/8/24.
//

import SwiftUI

struct CategoryModel: Identifiable{
    let id = UUID()
    let title:String
    let desc:String
    let image:String
    let position:Bool
}

