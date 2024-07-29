//
//  LaunchScreen.swift
//  Navigation-Stack-Example
//
//  Created by Yousuf Raza on 28/7/24.
//

import SwiftUI

struct LaunchScreen: View {
    @ObservedObject private var navController = NavigationController.shared
    @State private var needSignUP = true
    @State private var needLogIn = false

    var body: some View {
        VStack {
            Text("Launch screen")
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                if needSignUP {
                    navController.pushNewScreen(name: .signUpScreen)
                } else if needLogIn {
                    navController.pushNewScreen(name: .loginScreen)
                }
            }
        }
    }
}

#Preview {
    LaunchScreen()
}
