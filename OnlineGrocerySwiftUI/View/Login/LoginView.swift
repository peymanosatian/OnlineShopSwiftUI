//
//  LoginView.swift
//  OnlineGrocerySwiftUI
//
//  Created by Peyman Osatian on 2025-05-01.
//

import SwiftUI

struct LoginView: View {
    @Environment(\.presentationMode) var mode:Binding<PresentationMode>
    @StateObject var loginVM = MainViewModel.shared;
    
    
    var body: some View {
        ZStack{
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
         
            VStack{
            
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40 , height: 40)
                    .padding(.bottom, .screenWidth * 0.1)
                Spacer()
                    .frame(height:.screenWidth * 0.15)
                Text("Login")
                    .font(.customfont(.semibold, fontSize: 26))
                    .foregroundColor(.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 8)
                Text("Enter your Email and Password")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.secondaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, .screenWidth * 0.12)
                
                LineTextField( title: "Email", placholder: "Enter your email address", txt: $loginVM.txtEmail, keyboardType: .emailAddress)
                    .padding(.bottom, .screenWidth * 0.07)
                            
                LineSecureField( title: "Password", placholder: "Enter your password", txt: $loginVM.textPassword,isShowPassword: $loginVM.isShowPassword)
                                .padding(.bottom, .screenWidth * 0.02)
                    
                Button {
                    
                } label : {
                    Text("Forget Password?")
                        .font(.customfont(.regular, fontSize: 14))
                        .foregroundColor(.primaryText)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                .padding(.bottom,.screenWidth * 0.05 )
                RoundedButton(title: "Login"){
                }
                .padding(.bottom,.screenWidth * 0.05 )
                NavigationLink{
                    SignUpView()
                } label: {
                    HStack {
                        Text("Dont have an account?")
                            .font(.customfont(.semibold, fontSize: 14))
                            .foregroundColor(.primaryText)
                        Text("SignUp")
                            .font(.customfont(.semibold, fontSize: 14))
                            .foregroundColor(.green)
                    }
                }
                
               
                Spacer()
                
            }
            .padding(.top, .topInsets + 46)
            .padding(.horizontal, 20)
            .padding(.bottom, .bottomInsets)
            
            
            VStack{
                HStack{
                    Button{
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding(.top, .topInsets)
            .padding(.horizontal, 20)
        }
        .background(Color.white)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    NavigationView{
        LoginView()
    }
    
}
