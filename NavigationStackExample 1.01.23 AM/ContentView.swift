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
            VStack {
                Text("Root View")
                Button(action: {
                    navController.navPath.append(ScreenName.successScreen)
                }) {
                    Text("Goto first screen")
                }
            }
            .navigationDestination(for: ScreenName.self) { name in
                navController.getScreenViewFromScreenName(screenName: name)
            }
        }
    }
}

#Preview {
    ContentView()
}




