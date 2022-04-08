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
                    
                    ScrollView {
                        VStack {
                            Text("SignUp").font(Font.custom("Futura-Bold", size: 40))
                                .padding()
                            VStack {
                                TextField("Name", text: $name).padding()
                                    .background(Color.black.opacity(0.09))
                                    .cornerRadius(10)
                                DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { Text("Date of Birth") }).padding().background(Color.black.opacity(0.09)).cornerRadius(10)
                                TextField("Gender", text: $gender).padding()
                                    .background(Color.black.opacity(0.09))
                                    .cornerRadius(10)
                                TextField("Mobile Number", text: $mobile).padding()
                                    .background(Color.black.opacity(0.09))
                                    .cornerRadius(10)
                                TextField("Email", text: $email).padding()
                                    .background(Color.black.opacity(0.09))
                                    .cornerRadius(10)
                                TextField("Username", text: $username).padding()
                                    .background(Color.black.opacity(0.09))
                                    .cornerRadius(10)
                                SecureField("Password", text: $password).padding()
                                    .background(Color.black.opacity(0.09))
                                    .cornerRadius(10)
                                SecureField("Password", text: $re_password).padding()
                                    .background(Color.black.opacity(0.09))
                                    .cornerRadius(10)
                                Button("Create New Account") {
                                    
                                }
                                .foregroundColor(.white).frame(width: 300, height: 50)
                                .background(Color.green).cornerRadius(10).font(Font.custom("Futura", size: 25)).padding(.bottom, 10)
                                Button("Login") {
                                    
                                }
                                .foregroundColor(.blue).frame(width: 300, height: 50)
                                .background(Color.white).border(.blue, width: 3).cornerRadius(10).font(Font.custom("Futura", size: 25))
                            }
                            .padding()
                        }
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
