//
//  HomeView.swift
//  COLOMBO-BSCCOMP-PT-023
//
//  Created by Udara Sachinthana on 2022-04-13.
//

import SwiftUI

struct HomeView: View {
    @State private var image = ""
    @State private var title = ""
    @State private var location = ""
    @State private var price = ""
    @State private var descrioption = ""
    
    var body: some View {
        VStack {
            Image("House_1")
                .resizable()
                .aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text("Tow Story Medium House")
                        .font(Font.custom("Futura", size: 25))
                    Text("Location Address")
                        .font(.headline)
                    Text("LKR 20 Million").bold().foregroundColor(.red)
                    Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.").foregroundColor(.secondary)
                        .lineLimit(3)
                }
                .padding()
                Spacer()
            }
        }
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
