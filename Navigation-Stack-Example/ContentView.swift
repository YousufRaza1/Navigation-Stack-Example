//
//  ContentView.swift
//  NavigationStackExample
//
//  Created by Yousuf Raza on 25/7/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var navController = NavigationController.shared
    var body: some View {
        NavigationStack(path: $navController.navPath) {
            LaunchScreen()
            .navigationDestination(for: ScreenName.self) { name in
                getScreenViewFromScreenName(screenName: name)
            }
        }
    }
}

#Preview {
    ContentView()
}




