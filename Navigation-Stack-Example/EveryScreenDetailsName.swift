//
//  EveryScreenDetailsName.swift
//  Navigation-Stack-Example
//
//  Created by Yousuf Raza on 28/7/24.
//

import Foundation
import SwiftUI

// Declare all screen name here. Using this name push, pop screens in the navigationStack
enum ScreenName: Hashable, Equatable {
    case firstScreen
    case secondScreen(navigationTitle: String = "")
    case thirdScreen
    case successScreen
    
    var screenIdentifier: String {
        switch self {
        case .firstScreen:
            "firstScreen"
        case .secondScreen:
            "secondScreen"
        case .thirdScreen:
            "thirdScreen"
        case .successScreen:
            "successScreen"
        }
    }
}

@ViewBuilder func getScreenViewFromScreenName(screenName: ScreenName) -> some View {
    switch screenName {
    case .firstScreen:
        FirstScreen()
    case .secondScreen(let navigationTitle):
        SecondScreen(navigationTitle: navigationTitle)
    case .thirdScreen:
        ThirdScreen()
    case .successScreen:
        SuccessScreen()
    }
}
