//
//  SwiftUIView.swift
//  E-commerce-UI
//
//  Created by Ounbonaliheng on 27/8/24.
//

import SwiftUI

struct OrderProductModel: Identifiable{
    let id = UUID()
    let title:String
    let Color:Color
    let Qty:Int
    let image:String
    let price:Double
    let Status:Bool
}
