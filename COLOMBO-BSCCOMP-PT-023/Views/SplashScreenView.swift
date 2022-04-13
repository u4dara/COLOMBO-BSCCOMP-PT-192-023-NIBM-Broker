//
//  SplashScreenView.swift
//  COLOMBO-BSCCOMP-PT-023
//
//  Created by Udara Sachinthana on 2022-04-01.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isActive {
            TabViewController()
        }
        else {
            VStack {
                VStack {
                    VStack {
                        Image("HouseLogo").resizable().frame(width: 300, height: 300).padding(.top, 50)
                        Text("NIBM Broker")
                            .font(Font.custom("Noteworthy-bold", size: 40))
                            .foregroundColor(.blue.opacity(0.8))
                    }
                        .scaleEffect(size)
                        .opacity(opacity)
                        .onAppear {
                            withAnimation(.easeIn(duration: 1.2)) {
                                self.size = 0.9
                                self.opacity = 1.0
                            }
                        }
                }
                Spacer()
                Image("NIBMLogo").resizable().frame(width: 140.75, height: 70.5, alignment: .bottom)
            }
            
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
