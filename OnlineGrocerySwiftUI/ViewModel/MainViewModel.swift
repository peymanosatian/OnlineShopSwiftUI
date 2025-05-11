//
//  MainViewModel.swift
//  OnlineGrocerySwiftUI
//
//  Created by Peyman Osatian on 2025-05-03.
//

import SwiftUI

class MainViewModel: ObservableObject {
    static var shared: MainViewModel = MainViewModel()
    @Published var txtEmail : String = ""
    @Published var textPassword : String = ""
    @Published var isShowPassword : Bool = false
}


