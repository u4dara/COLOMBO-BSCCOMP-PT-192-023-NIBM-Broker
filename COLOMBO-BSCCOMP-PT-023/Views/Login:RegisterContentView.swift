//
//  Login:RegisterContentView.swift
//  COLOMBO-BSCCOMP-PT-023
//
//  Created by Udara Sachinthana on 2022-04-16.
//

import SwiftUI
import Firebase

struct Login_RegisterContentView: View {
    
    @State var isLoginMode = false
    @State private var password = ""
    @State private var re_password = ""
    @State private var dob = Date()
    @State private var gender = ""
    @State private var name = ""
    @State private var mobile = ""
    @State private var email = ""
    @State private var imageUrl = ""
    @State private var statusMessage = ""
    @State private var showImagePicker = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.ignoresSafeArea()
                Circle().scale(1.7).foregroundColor(.white.opacity(0.15))
                Circle().scale(1.35).foregroundColor(.white)
                ScrollView{
                    Picker(selection: $isLoginMode, label: Text("Picker here")) {
                        Text("Login").tag(true)
                        Text("Create Account").tag(false)
                    }.pickerStyle(SegmentedPickerStyle()).padding()
                    VStack {
                        if isLoginMode == false {
                            Button {
                                showImagePicker.toggle()
                            } label: {
                                
                                VStack {
                                    if let image = self.image {
                                        Image(uiImage: image)
                                            .resizable()
                                            .frame(width: 64, height: 64)
                                            .scaledToFill()
                                    }
                                    else {
                                        Image(systemName: "person.crop.circle.badge.plus")
                                            .font(.system(size: 75))
                                            .padding()
                                    }
                                }
                            }
                            TextField("Name", text: $name).padding()
                                .background(Color.black.opacity(0.09))
                                .cornerRadius(12)
                            DatePicker(selection: $dob,in: ...Date(), displayedComponents: .date, label: { Text("Date of Birth") }).padding().background(Color.black.opacity(0.09)).cornerRadius(12)
                            TextField("Gender", text: $gender).padding()
                                .background(Color.black.opacity(0.09))
                                .cornerRadius(12)
                            TextField("Mobile Number", text: $mobile).padding()
                                .background(Color.black.opacity(0.09))
                                .cornerRadius(12)
                        }
                        TextField("Email", text: $email).padding()
                            .keyboardType(.emailAddress)
                            .background(Color.black.opacity(0.09))
                            .cornerRadius(12).autocapitalization(.none)
                        SecureField("Password", text: $password).padding()
                            .background(Color.black.opacity(0.09))
                            .cornerRadius(12)
                        if isLoginMode == false {
                            SecureField("Re-Password", text: $re_password).padding()
                                .background(Color.black.opacity(0.09))
                                .cornerRadius(12)
                        }
                        Text(self.statusMessage)
                            .foregroundColor(.red)
                        if isLoginMode == false {
                            Button("Create New Account") {
                                handleAction()
                            }
                            .foregroundColor(.white).frame(width: 300, height: 50)
                            .background(Color.green).cornerRadius(12).font(Font.custom("Futura", size: 25)).padding(.bottom, 10)
                        }
                        else {
                            Button("Login") {
                                handleAction()
                            }
                            .foregroundColor(.white).frame(width: 300, height: 50)
                            .background(Color.blue).cornerRadius(12).font(Font.custom("Futura", size: 25))
                        }
                    }
                    .padding()
                }
            }
            
            .navigationTitle(isLoginMode ? "Login" : "Create Account")
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .fullScreenCover(isPresented: $showImagePicker) {
            ImagePicker(image:$image)
        }
    }
    
    @State private var image : UIImage?
    
    private func handleAction() {
        if isLoginMode == true {
            loginUser()
        }
        else {
            createNewAccount()
        }
    }
    private func createNewAccount() {
        Auth.auth().createUser(withEmail: email, password: password) { result, err in
            if let err = err {
                print("Failed to create user...", err)
                self.statusMessage = "Failed to Login User : \(err)"
                return
            }
            print("Successfully Created User : \(result?.user.uid ?? "")")
            self.statusMessage = "Successfully Created User : \(result?.user.uid ?? "")"
            self.storeUserInformation()
        }
    }
    
    private func loginUser() {
        Auth.auth().signIn(withEmail: email, password: password) { result, err in
            if let err = err {
                print("Failed to login user...", err)
                self.statusMessage = "Failed to Login User : \(err)"
                return
            }
            print("Successfully Logged user : \(result?.user.uid ?? "")")
            self.statusMessage = "Successfully Logged user : \(result?.user.uid ?? "")"
        }
    }
    
    private func storeUserInformation() {
        guard let uid = Auth.auth().currentUser?.uid else {return}
        let userData = ["name" : self.name, "dob" : self.dob, "gender" : self.gender, "mobile" : self.mobile, "email" : self.email, "imageUrl" : self.imageUrl, "uid" : uid] as [String : Any]
        Firestore.firestore().collection("users")
            .document(uid).setData(userData) { err in
                if let err = err {
                    print(err)
                    self.statusMessage = "\(err)"
                    return
                }
                print("Successfull")
            }
    }
}

struct Login_RegisterContentView_Previews: PreviewProvider {
    static var previews: some View {
        Login_RegisterContentView()
    }
}
