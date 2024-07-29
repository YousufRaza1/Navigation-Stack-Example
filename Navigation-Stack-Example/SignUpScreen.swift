//
//  SignUpScreen.swift
//  Navigation-Stack-Example
//
//  Created by Yousuf Raza on 28/7/24.
//

import SwiftUI

struct SignUpScreen: View {
    @ObservedObject private var navController = NavigationController.shared
    var body: some View {
        VStack {
            Text("SignUP screen")
            Button {
                navController.pushNewScreen(name: .loginScreen)
            } label: {
                Text("Goto login screen")
            }

        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SignUpScreen()
}
