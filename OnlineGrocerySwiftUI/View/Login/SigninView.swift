//
//  SigninView.swift
//  OnlineGrocerySwiftUI
//
//  Created by Peyman Osatian on 2025-04-14.
//

import SwiftUI
import CountryPicker

struct SigninView: View {
    @State var txtMobile : String = ""
    @State var isShowPicker : Bool = false
    @State var countryObj : Country?
    var body: some View {
        ZStack{
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            VStack{
                Image("sign_in_top")
                    .resizable()
                    .scaledToFill()
                    .frame(width: .screenWidth, height: .screenWidth)
                Spacer()
            }
            ScrollView{
                VStack (alignment: .leading){
                    Text("Get your groceries\nwith nectar")
                        .font(.customfont(.semibold, fontSize: 26))
                        .foregroundColor(.primaryText)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom,25)
                    HStack{
                        Button{
                            isShowPicker = true
                        }label :{
                            if let countryObj = countryObj {
                                Text("\(countryObj.isoCode.getFlag())")
                                    .font(.customfont(.regular, fontSize: 24))
                                    .foregroundColor(.primaryText)
                                
                                Text("+\(countryObj.phoneCode)")
                                    .font(.customfont(.regular, fontSize: 18))
                                    .foregroundColor(.primaryText)
                               }
                            }
                        TextField("Enter You Number", text:$txtMobile )
                            .frame(minWidth: 0 , maxWidth: .infinity)
                        }
                    Divider()
                        .padding(.bottom , 24)
                    Text("Or connect with social media")
                        .font(.customfont(.semibold, fontSize: 14))
                        .foregroundColor(.textTitle)
                        .multilineTextAlignment(.center)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .padding(.bottom,25)
                    Button{
                        
                    } label: {
                        Image("google_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        Text("Continue with Google")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity , minHeight: 60, maxHeight: 60)
                    .background(Color(hex: "5383EC"))
                    .cornerRadius(22)
                    .padding(.bottom , 8)
                    
                    
                    Button{
                        
                    } label: {
                        Image("fb_logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                        Text("Continue with Facebook")
                            .font(.customfont(.semibold, fontSize: 18))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity , minHeight: 60, maxHeight: 60)
                    .background(Color(hex: "4A66AC"))
                    .cornerRadius(22)
                    
                    
                    }
                
                .padding(.horizontal, 20)
                .frame(width: .screenWidth, alignment: .leading)
                .padding(.top, .topInsets +  .screenWidth )
               
                
                
                
                
            }
        }
        .onAppear{
            self.countryObj = Country(phoneCode: "46", isoCode: "IN")
        }
        .sheet(isPresented: $isShowPicker, content:{
            CountryPickerUI(country: $countryObj)
        })
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    SigninView()
}
