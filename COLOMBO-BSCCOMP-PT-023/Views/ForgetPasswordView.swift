//
//  ForgetPasswordView.swift
//  COLOMBO-BSCCOMP-PT-023
//
//  Created by Udara Sachinthana on 2022-04-06.
//

import SwiftUI

struct ForgetPasswordView: View {
    
    @State private var email = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.blue.ignoresSafeArea()
                Circle().scale(1.7).foregroundColor(.white.opacity(0.15))
                Circle().scale(1.35).foregroundColor(.white)
                
                VStack(spacing: 20) {
                    Text("Password Reset").font(Font.custom("Futura-Bold", size: 40))
                        .padding()
                    TextField("Email", text: $email).padding()
                        .background(Color.black.opacity(0.09))
                        .cornerRadius(10)
                        .padding(.bottom, 10)
                    Button("Send link") {
                        
                    }
                    .foregroundColor(.white).frame(width: 300, height: 50)
                    .background(Color.blue).cornerRadius(10).font(Font.custom("Futura", size: 25))
                }
                .padding()
            }
        }
    }
}

struct ForgetPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgetPasswordView()
    }
}
