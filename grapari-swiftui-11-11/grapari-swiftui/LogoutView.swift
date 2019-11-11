//
//  LogoutView.swift
//  grapari-swiftui
//
//  Created by IT Jatim on 31/10/19.
//  Copyright © 2019 IT Jatim. All rights reserved.
//

import SwiftUI

struct LogoutView: View {
    @EnvironmentObject var auth: Auth
    @State private var isAlert = false
    var body: some View {
        Group {
            if self.auth.isLoggedIn == true {
                VStack {
                    Image(systemName: "power")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .padding(.bottom, 25)
                        .padding()
                    Button(action: {
                        self.isAlert = true
                    }) {
                        Text("Exit")
                            .font(.headline)
                            .padding()
                            .frame(width: 200)
                    }
                    .background(Color.red)
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
                    .alert(isPresented: $isAlert, content: {
                        Alert(title: Text("Exit"), message: Text("Are You Sure?"), primaryButton: .default(Text("Confirm"), action: {self.auth.isLoggedIn = false}), secondaryButton: .cancel())
                    })
                }
            }
            else {
                LoginView()
            }
        }
    }
}

struct LogoutView_Previews: PreviewProvider {
    static var previews: some View {
        LogoutView()
    }
}
