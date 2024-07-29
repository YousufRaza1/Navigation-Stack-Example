//
//  LoginScreen.swift
//  Navigation-Stack-Example
//
//  Created by Yousuf Raza on 29/7/24.
//

import SwiftUI

struct LoginScreen: View {
    @ObservedObject private var navController = NavigationController.shared
    var body: some View {
        VStack {
            Text("Login Screen")
            Button {
                navController.pushNewScreen(name: .firstScreen)
            } label: {
                Text("Goto first screen")
            }

        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    LoginScreen()
}
