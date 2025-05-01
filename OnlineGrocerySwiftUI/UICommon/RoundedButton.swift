//
//  RoundedButton.swift
//  OnlineGrocerySwiftUI
//
//  Created by Peyman Osatian on 2025-04-14.
//

import SwiftUI

struct RoundedButton: View {
    @State var title: String = "Title"
    var didTap : (()->())?
    var body: some View {
        Button{
            didTap?()
        } label: {
            Text(title)
                .font(.customfont(.regular, fontSize: 18))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
        .frame(minWidth: 0, maxWidth:.infinity , minHeight: 60, maxHeight: 60)
        .background(Color.primary)
        .cornerRadius(12)
    }
}

#Preview {
    RoundedButton()
        .padding(20)
}
