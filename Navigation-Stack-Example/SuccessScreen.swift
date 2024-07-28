//
//  SuccessScreen.swift
//  NavigationStackExample
//
//  Created by Yousuf Raza on 25/7/24.
//

import SwiftUI

struct SuccessScreen: View {
    @ObservedObject private var navController = NavigationController.shared
    var body: some View {
        Text("Success View")
        
        Button {
            navController.backToSpecificScreen(name: .secondScreen(navigationTitle: ""))
        } label: {
            Text("Back to second screen")
        }
    }
}

#Preview {
    SuccessScreen()
}
