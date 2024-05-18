//
//  NewAccountView.swift
//  TravelApp
//
//  Created by kalyan . on 5/18/24.
//

import SwiftUI
import FirebaseAuth

struct NewAccountView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var errorMessage: String?
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
            VStack {
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "arrow.left")
                            .foregroundColor(.orange)
                            .padding()
                    })
                    Spacer()
                }
                
                Spacer().frame(height: 20)
                
                Text("Create new account")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 40)
                
                TextField("Name", text: $name)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .padding(.horizontal, 20)
                
                TextField("Email Address", text: $email)
                    .keyboardType(.emailAddress)
                    .autocapitalization(.none)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .padding(.horizontal, 20)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
                    .padding(.horizontal, 20)
                
                if let errorMessage = errorMessage {
                    Text(errorMessage)
                        .foregroundColor(.red)
                        .padding()
                }
                
                Button(action: signUp) {
                    Text("Sign Up")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                        .cornerRadius(30)
                        .padding(.horizontal, 20)
                }
                .padding(.top, 20)
                
                Spacer()
            }
            .navigationBarHidden(true)
    }
    
    func signUp() {
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                errorMessage = error.localizedDescription
            } else {
                errorMessage = nil
            }
        }
    }
}

#Preview {
    NewAccountView()
}
