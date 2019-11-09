//
//  BaseView.swift
//  grapari-swiftui
//
//  Created by IT Jatim on 31/10/19.
//  Copyright © 2019 IT Jatim. All rights reserved.
//

import SwiftUI

struct BaseView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                        .font(.title)
                    Text("Home")
                        .font(.headline)
            }.tag(0)
            ChecklistView()
                .tabItem {
                    Image(systemName: "checkmark")
                        .font(.title)
                    Text("Checklist")
                        .font(.headline)
            }.tag(1)
            ReportView()
                .tabItem {
                    Image(systemName: "doc.plaintext")
                        .font(.title)
                    Text("Report")
                    .font(.headline)
            }.tag(2)
            LogoutView()
                .tabItem {
                    Image(systemName: "power")
                        .font(.title)
                    Text("Logout")
                    .font(.headline)
            }.tag(3)
        }.accentColor(Color.red)
    }
}

struct BaseView_Previews: PreviewProvider {
    static var previews: some View {
        BaseView()
    }
}
