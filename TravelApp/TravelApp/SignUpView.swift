//
//  ContentView.swift
//  TravelApp
//
//  Created by kalyan . on 5/17/24.
//

import SwiftUI

struct SignUpView: View {
    var body: some View {
        VStack {
            Text("Travelisto")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Image("Logoimg")
                .resizable()
                .scaledToFit()
                .frame(width: 300,height: 300)
                .padding(.top, 50)
            
            Text("Plan your travel anytime, anywhere")
                .font(.subheadline)
                .foregroundStyle(.gray)
                .padding(.top, 10)
            
            Spacer()
                .frame(height: 140)
            
            NavigationLink(destination: NewAccountView()) {
                Text("Create an account")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.orange)
                    .cornerRadius(40)
                    .padding(.horizontal, 20)
            }
            
            NavigationLink(destination: LogInView()) {
                Text("Already on Travel? Log In")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    .padding(.top, 10)
            }
        }
        .padding()
    }
}

#Preview {
    SignUpView()
}
