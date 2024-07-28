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
    @Published var navPath = [ScreenName]()
    
    func pushNewScreen(name screen: ScreenName) {
        self.navPath.append(screen)
    }
    
    func backToPreviousScreen() {
        self.navPath.removeLast()
    }
    
    func backToSpecificScreen(name screen: ScreenName) {
        while(!navPath.isEmpty) {
            if screen.screenIdentifier != navPath.last!.screenIdentifier {
                navPath.removeLast()
            } else {
                break
            }
        }
    }
    
    func backToRootView()  {
        navPath.removeAll()
    }
    
    func popNumberOfScreen(number: Int) {
        print("\(number),\n \(navPath.count) ")
        if number <= navPath.count {
            self.navPath.removeLast(number)
        } else {
            print("Error because of number of removing screen is greater then number of screen of navStack")
        }
    }
}

