//
//  onboardingScreenView.swift
//  E-commerce-UI
//
//  Created by Ounbonaliheng on 27/8/24.
//

import SwiftUI

struct onboardingScreenView: View {
    @State private var currentIndex = 0
    let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    var body: some View {
        NavigationView {
            VStack{
                TabView(selection: $currentIndex) {
                    ForEach(0..<onboardscreen.count, id: \.self) { index in
                        VStack{
                            Image(onboardscreen[index].image)
                                .resizable()
                                .scaledToFill()
                                .tag(index)
                                .frame(width: .screenWidth * 0.9 ,height: 350)
                                .cornerRadius(15)
                            Text(onboardscreen[index].title)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .font(.system(size: 24))
                                .foregroundStyle(.black)
                            Spacer().frame(height: 30)
                            Text(onboardscreen[index].desc)
                                .fontWeight(.regular)
                                .multilineTextAlignment(.center)
                                .font(.system(size: 16))
                                .foregroundStyle(.gray)
                            Spacer().frame(height: 60)
                            
                            
                        }
                    }
                }
                .frame(height: .screenHeight * 0.7)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
                .onReceive(timer) { _ in
                    withAnimation {
                        currentIndex = (currentIndex + 1) % onboardscreen.count
                    }
                }
                Spacer().frame(height: 20)
                
                NavigationLink(destination: RegisterScreenView()) {
                    Text("Create Account")
                        .padding(.horizontal, .screenWidth * 0.28)
                        .padding(.vertical, .screenWidth * 0.05)
                        .foregroundColor(.white)
                        .background(.blue)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 20))
                        .cornerRadius(30)
                }
                Text("Already have an Account?")
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 14))
                    .foregroundStyle(.gray)
                    .padding(10)
         
                Spacer().frame(height: .screenHeight * 0.05)
            }
        }
    }
}

#Preview {
    NavigationView {
        onboardingScreenView()
    }
}
