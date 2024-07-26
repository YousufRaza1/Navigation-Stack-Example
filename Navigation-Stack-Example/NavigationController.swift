//
//  NavigationController.swift
//  NavigationStackExample
//
//  Created by Yousuf Raza on 25/7/24.
//

import Foundation
import SwiftUI

class NavigationController: ObservableObject {
    public static let shared = NavigationController()
    private init() {}
    @Published var navPath = NavigationPath()
    
    func backTo(screen: ScreenName) {
        var currentScreen = navPath
    }

    @ViewBuilder func getScreenViewFromScreenName(screenName: ScreenName) -> some View {
        switch screenName {
        case .firstScreen:
            FirstScreen()
        case .secondScreen:
            SecondScreen()
        case .thirdScreen:
            ThirdScreen()
        case .successScreen:
            SuccessScreen()
        default:
            FirstScreen()
        }
    }
}

// Declare all screen name here. Using this name push, pop screens in the navigationStack
enum ScreenName: String {
    case firstScreen
    case secondScreen
    case thirdScreen
    case successScreen
}
