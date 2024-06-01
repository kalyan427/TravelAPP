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
            TravelView()
                .tabItem {
                    Image(systemName: "suitcase.fill")
                    Text("Travel")
                }
            
            FlightsView()
                .tabItem {
                    Image(systemName: "airplane")
                    Text("Flights")
                }
            
            HotelsView()
                .tabItem {
                    Image(systemName: "bed.double.fill")
                    Text("Hotels")
                }
            
            ProfileView()
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
