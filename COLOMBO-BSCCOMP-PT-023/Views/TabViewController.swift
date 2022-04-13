//
//  TabViewController.swift
//  COLOMBO-BSCCOMP-PT-023
//
//  Created by Udara Sachinthana on 2022-04-13.
//

import SwiftUI

struct TabViewController: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            Text("Advertisements").tabItem {
                Image(systemName: "doc.fill")
                Text("Ads") }
            SettingsView().tabItem {
                Image(systemName: "person")
                Text("Profile")
            }
        }
    }
}

struct TabViewController_Previews: PreviewProvider {
    static var previews: some View {
        TabViewController()
    }
}
