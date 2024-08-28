//
//  RegisterScreenView.swift
//  E-commerce-UI
//
//  Created by Ounbonaliheng on 27/8/24.
//

import SwiftUI

struct RegisterScreenView: View {
    @State private var username = ""
    @State private var emailOrPhone = ""
    @State private var password = ""
    @State private var isPasswordVisible = false
    
    var body: some View {
        NavigationView {
            VStack(alignment:.center,spacing: 15){
                VStack(alignment:.leading,spacing: 10){
                    Text("Create Account")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 26))
                        .foregroundStyle(.black)
                    Text("Start Learning with Create your account")
                        .fontWeight(.regular)
                        .multilineTextAlignment(.center)
                        .font(.system(size: 16))
                        .foregroundStyle(.black)
                    Spacer().frame(height: 10)
                    Section(header: Text("Username")
                        .fontWeight(.bold)
                        .font(.system(size: 22))
                        .foregroundStyle(.black)) {
                            HStack {
                                Image(systemName: "person")
                                    .foregroundColor(.gray)
                                TextField("Create your username", text: $username)
                                    .autocapitalization(.none)
                                    .disableAutocorrection(true)
                            }
                            .padding()
                            .background(Color(hue: 0.667, saturation: 0.022, brightness: 0.99))
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.black, lineWidth: 0)
                            )
                        }
                    Section(header: Text("Email or Phone Number")
                        .fontWeight(.bold)
                        .font(.system(size: 22))
                        .foregroundStyle(.black)) {
                            HStack {
                                Image(systemName: "envelope")
                                    .foregroundColor(.gray)
                                TextField("Enter your email or phone number", text: $emailOrPhone)
                                    .autocapitalization(.none)
                                    .keyboardType(.emailAddress)
                            } .padding()
                                .background(Color(hue: 0.667, saturation: 0.022, brightness: 0.99))
                                .cornerRadius(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.black, lineWidth: 0)
                                )
                        }
                    
                    Section(header: Text("Password")
                        .fontWeight(.bold)
                        .font(.system(size: 22))
                        .foregroundStyle(.black)) {
                            HStack {
                                Image(systemName: "lock")
                                    .foregroundColor(.gray)
                                if isPasswordVisible {
                                    TextField("Create your password", text: $password)
                                } else {
                                    SecureField("Create your password", text: $password)
                                }
                                Button(action: {
                                    isPasswordVisible.toggle()
                                }) {
                                    Image(systemName: isPasswordVisible ? "eyeglasses" : "eyeglasses.slash")
                                        .foregroundColor(.gray)
                                }
                            }   .padding()
                                .background(Color(hue: 0.667, saturation: 0.022, brightness: 0.99))
                                .cornerRadius(15)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.black, lineWidth: 0)
                                )
                        }
                 
                    
                }.padding()
                NavigationLink(destination: MainScreenView()) {
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
                Text("Or Using other method") 
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 18))
                    .foregroundStyle(.gray)
                    .padding(10)
                
                NavigationLink(destination: MainScreenView()) {
                    HStack {
                        Image("google")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40,height: 40)
                        Text("Sign Up with Google")
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .lineLimit(1)
                            .font(.system(size: 16))
                        
                    }  .frame(width: .screenWidth * 0.9,height: .screenHeight * 0.07)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.black.opacity(0.1), lineWidth: 1)
                        )
                }
                NavigationLink(destination: MainScreenView()) {
                    HStack {
                        Image("facebook")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40,height: 40)
                        Text("Sign Up with Facebook")
                            .foregroundColor(.black)
                            .fontWeight(.semibold)
                            .lineLimit(1)
                            .font(.system(size: 16))
                        
                    }   .frame(width: .screenWidth * 0.9,height: .screenHeight * 0.07)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.black.opacity(0.1), lineWidth: 1)
                        )
                } 
              
            }
           
        }
    }
}

#Preview {
    RegisterScreenView()
}
