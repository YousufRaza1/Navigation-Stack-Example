//
//  SecondScreen.swift
//  NavigationStackExample
//
//  Created by Yousuf Raza on 25/7/24.
//

import SwiftUI

struct SecondScreen: View {
    var navigationTitle: String = ""
    @ObservedObject private var navController = NavigationController.shared
    var body: some View {
       VStack {
            Text("Second Screen")
           Button(action: {
               navController.pushNewScreen(name: .thirdScreen)
           }, label: {
               Text("Go to third screen")
           })
           
           Button(action: {
               navController.backToRootView()
           }, label: {
               Text("Back to root view")
           })
        }
       .navigationTitle(navigationTitle)
        
    }
}

#Preview {
    SecondScreen()
}
