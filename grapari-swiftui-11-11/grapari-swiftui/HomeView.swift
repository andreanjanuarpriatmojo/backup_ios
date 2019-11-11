//
//  HomeView.swift
//  grapari-swiftui
//
//  Created by IT Jatim on 31/10/19.
//  Copyright © 2019 IT Jatim. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Thuesday 31 October 2019")
                .font(.headline)
                .foregroundColor(.red)
                .padding()
            Spacer()
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 250, height: 250)
            Text("Welcome, Admin!")
                .font(.headline)
                .padding()
            Spacer()
            Text("Silahkan pilih menu dibawah")
                .font(.headline)
                .padding()
                .padding(.bottom, 25)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
