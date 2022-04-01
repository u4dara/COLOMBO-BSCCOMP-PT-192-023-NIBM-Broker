//
//  SignUPView.swift
//  COLOMBO-BSCCOMP-PT-023
//
//  Created by Udara Sachinthana on 2022-04-01.
//

import SwiftUI

struct SignUPView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var re_password = ""
    @State private var dob = ""
    @State private var gender = ""
    @State private var name = ""
    @State private var mobile = ""
    @State private var email = ""
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.ignoresSafeArea()
                Circle().scale(1.7).foregroundColor(.white.opacity(0.15))
                Circle().scale(1.35).foregroundColor(.white)
                
                VStack {
                    Text("SignUp").font(Font.custom("Futura-Bold", size: 40))
                        .padding()
                    TextField("Name", text: $name).padding()
                        .frame(width: 350, height: 50).background(Color.black.opacity(0.09))
                        .cornerRadius(10)
                    TextField("Username", text: $username).padding()
                        .frame(width: 350, height: 50).background(Color.black.opacity(0.09))
                        .cornerRadius(10)
                    TextField("Date of Birth", text: $dob).padding()
                        .frame(width: 350, height: 50).background(Color.black.opacity(0.09))
                        .cornerRadius(10)
                    TextField("Gender", text: $gender).padding()
                        .frame(width: 350, height: 50).background(Color.black.opacity(0.09))
                        .cornerRadius(10)
                    TextField("Mobile Number", text: $username).padding()
                        .frame(width: 350, height: 50).background(Color.black.opacity(0.09))
                        .cornerRadius(10)
                    TextField("Email", text: $username).padding()
                        .frame(width: 350, height: 50).background(Color.black.opacity(0.09))
                        .cornerRadius(10)
                    TextField("Password", text: $password).padding()
                        .frame(width: 350, height: 50).background(Color.black.opacity(0.09))
                        .cornerRadius(10)
                    TextField("Re-Password", text: $username).padding()
                        .frame(width: 350, height: 50).background(Color.black.opacity(0.09))
                        .cornerRadius(10)
                    Button("Create New Account") {
                        
                    }
                    .foregroundColor(.white).frame(width: 350, height: 50)
                    .background(Color.green).cornerRadius(10).font(Font.custom("Futura", size: 25))
                }
            }
        }
    }
}

struct SignUPView_Previews: PreviewProvider {
    static var previews: some View {
        SignUPView()
    }
}
