//
//  BottomTabBarView.swift
//  TravelApp
//
//  Created by kalyan . on 5/31/24.
//

import SwiftUI

struct BottomTabBarView: View {
    var body: some View {
        TabView {
            Text("Travel View")
                .tabItem {
                    Image(systemName: "suitcase.fill")
                    Text("Travel")
                }
            
            Text("Flights View")
                .tabItem {
                    Image(systemName: "airplane")
                    Text("Flights")
                }
            
            Text("Hotels")
                .tabItem {
                    Image(systemName: "bed.double.fill")
                    Text("Hotels")
                }
            
            Text("Profile")
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    BottomTabBarView()
}
