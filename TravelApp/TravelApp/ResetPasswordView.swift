//
//  ResetPasswordView.swift
//  TravelApp
//
//  Created by kalyan . on 5/20/24.
//

import SwiftUI
import FirebaseAuth

struct ResetPasswordView: View {
    @State private var email: String = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "arrow.backward")
                        .foregroundColor(.orange)
                        .padding()
                })
                Spacer()
            }
            
            HStack {
                Text("Reset password")
                    .fontWeight(.bold)
                    .font(.largeTitle)
                Spacer()
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 20)
            
            TextField("Email Address", text: $email)
                .keyboardType(.emailAddress)
                .autocapitalization(.none)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
                .padding(.horizontal, 20)
            
            Button(action: resetPassword) {
                Text("Reset your password")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
                    .cornerRadius(30)
                    .padding(.horizontal, 20)
            }
            .padding(.top, 20)
        }
        Spacer()
        .navigationBarHidden(true)
    }
    
    func resetPassword() {
        Auth.auth().sendPasswordReset(withEmail: email) { error in
            if let error = error {
                print("error sending password reset email: \(error.localizedDescription)")
            } else {
                print("password reset email was sent")
            }
        }
    }
}

#Preview {
    ResetPasswordView()
}
