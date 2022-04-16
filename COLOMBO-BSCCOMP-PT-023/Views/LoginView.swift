//
//  LoginView.swift
//  COLOMBO-BSCCOMP-PT-023
//
//  Created by Udara Sachinthana on 2022-04-01.
//

import SwiftUI
import FirebaseAuth

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.ignoresSafeArea()
                Circle().scale(1.7).foregroundColor(.white.opacity(0.15))
                Circle().scale(1.35).foregroundColor(.white)
                
                VStack(spacing: 20) {
                    Text("Login").font(Font.custom("Futura-Bold", size: 40))
                        .padding()
                    TextField("Username", text: $username).padding()
                        .background(Color.black.opacity(0.09))
                        .cornerRadius(12)
                    SecureField("Password", text: $password).padding()
                        .background(Color.black.opacity(0.09))
                        .cornerRadius(12)
                    Button("Terms and Policy") {
                        
                    }
                    .foregroundColor(.black).font(Font.custom("Futura", size: 15))
                    Button("Login") {
                        
                    }
                    .foregroundColor(.white).frame(width: 300, height: 50)
                    .background(Color.blue).cornerRadius(12).font(Font.custom("Futura", size: 25))
                    Button("Forgotten Password?") {
                        
                    }
                    .foregroundColor(.blue).font(Font.custom("Futura", size: 15))
                    Button("Create New Account") {
                        
                    }
                    .foregroundColor(.white).frame(width: 300, height: 50)
                    .background(Color.blue).cornerRadius(12).font(Font.custom("Futura", size: 25))
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
