//
//  SettingsView.swift
//  COLOMBO-BSCCOMP-PT-023
//
//  Created by Udara Sachinthana on 2022-04-13.
//

import SwiftUI

struct SettingsView: View {
    
    var body: some View {
        
        ZStack {
            Color.blue
            Circle().scale(1.7).foregroundColor(.white.opacity(0.15))
            Circle().scale(1.35).foregroundColor(.white)
            VStack {
                Image("ProfileImage")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                Text("Udara Sachinthana")
                    .bold()
                    .font(Font.custom("Futura", size: 25))
                
                Spacer().frame(height: 30)
                
                VStack(alignment: .leading, spacing: 12) {
                    HStack {
                        Image(systemName: "number")
                        Text("960280628")
                    }
                    HStack {
                        Image(systemName: "envelope.fill")
                        Text("u4dara@gmail.com")
                    }
                    HStack {
                        Image(systemName: "calendar")
                        Text("1996-01-28")
                    }
                    HStack {
                        Image(systemName: "person.2.fill")
                        Text("Male")
                    }
                    HStack {
                        Image(systemName: "phone.fill")
                        Text("076-2348509")
                    }
                    HStack {
                        Image(systemName: "location.north.fill")
                        Text("Selected Locarion")
                    }
                }
                Spacer().frame(height: 30)
                
                Button {
                    
                } label: {
                    Text("Update Profile")
                        .frame(width: 300, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        .font(Font.custom("Futura", size: 25))
                }
                
                Button {
                    
                } label: {
                    Text("Logout")
                        .frame(width: 300, height: 50)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                        .font(Font.custom("Futura", size: 25))
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
