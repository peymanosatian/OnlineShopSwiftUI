//
//  WelcomeView.swift
//  OnlineGrocerySwiftUI
//
//  Created by Peyman Osatian on 2025-03-09.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack{
            // Background full screen Image
            Image("welcom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            VStack{
                // Logo and content section
                Spacer()
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .padding(.bottom , 8)
                Text("welcome \nto our store.")
                    .font(.customfont(.semibold, fontSize: 48))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                Text("Get your groceries  in as  one hour")
                    .font(.customfont(.regular, fontSize: 16))
                    .foregroundColor(.white.opacity(0.7))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 30)
                NavigationLink {
                    SigninView()
                } label:{
                    // Button
                    RoundedButton(title: "Get Started"){
                    }
                }
                Spacer()
                    .frame(height: 80)
                
            }
            .padding(.horizontal,20)
        }
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    NavigationView{
        WelcomeView()
    }
}
