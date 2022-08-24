//
//  BankyApp.swift
//  Banky
//
//  Created by Benjamin on 24/08/2022.
//

import SwiftUI

@main
struct BankyApp: App {
    @StateObject var controller = Controller()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                OnBoardView()
            }


        }
    }
}
