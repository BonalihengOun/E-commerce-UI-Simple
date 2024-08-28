//
//  OnboardingModel.swift
//  E-commerce-UI
//
//  Created by Ounbonaliheng on 28/8/24.
//

import SwiftUI

struct OnboardingModel: Identifiable{
    let id = UUID()
    let title:String
    let desc:String
    let image:String
    
}

let onboardscreen = [
    OnboardingModel(title: "Various Collections of The Latest Product", desc: "Lorem ipsum is placeholder text commonly used in the graphic, print, ",image: "watchTissot"),
    OnboardingModel(title: "Complete Collection Of Colors And Sizes", desc: "Lorem ipsum is placeholder text commonly used in the graphic, print", image: "bagboy1"),
    OnboardingModel(title: "Find The Most Suitable Outfit For You", desc: "Lorem ipsum is placeholder text commonly used in the graphic, print", image: "watchWoman"),
]
