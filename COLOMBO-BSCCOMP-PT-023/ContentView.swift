//
//  ContentView.swift
//  COLOMBO-BSCCOMP-PT-023
//
//  Created by Udara Sachinthana on 2022-04-01.
//

import SwiftUI
import FirebaseAuth

class AppViewModel: ObservableObject {
    
    let auth = Auth.auth()
    
    var isSignedIn: Bool {
        return auth.currentUser !== nil
    }
    
    func signIn(nic: String, password: String) {
        
    }
    
    func signUp(nic: String, password: String) {
        
    }
    
    
}

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            Text("ContentView").foregroundColor(.white).font(Font.custom("Rockwell", size: 30))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
