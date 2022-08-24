//
//  BottomNav.swift
//  Banky
//
//  Created by Benjamin on 24/08/2022.
//

import SwiftUI

struct BottomNav: View {
    @State private var index = 0
    var body: some View {
        TabView(selection: $index) {
          Home()
                .tabItem {
                    Image(systemName:"creditcard")
                }
            Home()
                  .tabItem {
                      Image(systemName:"bell")
                  }
            Home()
                .tabItem {
                    Image(systemName:"message")
                        
                }
        }
    }
}

struct BottomNav_Previews: PreviewProvider {
    static var previews: some View {
        BottomNav()
    }
}
