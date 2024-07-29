//
//  FirstScreen.swift
//  NavigationStackExample
//
//  Created by Yousuf Raza on 25/7/24.
//

import SwiftUI

struct FirstScreen: View {
    @ObservedObject private var navController = NavigationController.shared
    var body: some View {
        VStack{
            Text("First Screen")
            Button {
                navController.pushNewScreen(name: .secondScreen(navigationTitle: "Second screen details"))
            } label: {
                Text("Go to second screen")
            }
            
            Button {
                navController.backToPreviousScreen()
            } label: {
                Text("Back to previous screen")
            }

        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitleDisplayMode(.inline)
        .navigationSplitViewStyle(.prominentDetail)
    }
}

#Preview {
    FirstScreen()
}
