//
//  ThirdScreen.swift
//  NavigationStackExample
//
//  Created by Yousuf Raza on 25/7/24.
//

import SwiftUI

struct ThirdScreen: View {
    @ObservedObject private var navController = NavigationController.shared
    var body: some View {
        VStack{
            Text("Third screen")
            Button {
                navController.pushNewScreen(name: .successScreen)
            } label: {
                Text("Go to success screen")
            }
            
            Button {
                navController.popNumberOfScreen(number: 2)
            } label: {
                Text("Remove 2 screen from navigation stack")
            }

        }
    }
}

#Preview {
    ThirdScreen()
}
