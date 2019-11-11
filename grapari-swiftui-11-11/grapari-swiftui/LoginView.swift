//
//  LoginView.swift
//  grapari-swiftui
//
//  Created by IT Jatim on 05/11/19.
//  Copyright © 2019 IT Jatim. All rights reserved.
//

import SwiftUI

enum LoginAlert {
    case empty, error
}

struct LoginView: View {
    @EnvironmentObject var auth: Auth
    @ObservedObject var user = User()
    @State private var showingAlert = false
    @State private var loginAlert: LoginAlert = .empty
    var body: some View {
        Group {
            if self.auth.isLoggedIn == false {
                VStack(spacing: 15) {
                    Image("logo")
                        .resizable()
                        .frame(width: 300, height: 150)
                        .padding(.bottom, 50)
                    Text("Please Login to Start Checklist")
                        .font(.caption)
                    TextField("Username", text: $user.username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .frame(width: 200)
                    SecureField("Password", text: $user.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .disableAutocorrection(true)
                        .autocapitalization(.none)
                        .frame(width: 200)
                    Button(action: {
                        if self.user.isValid == false {
                            self.loginAlert = .empty
                            self.showingAlert = true
                        }
                        else if self.user.isLogin == false {
                            self.loginAlert = .error
                            self.showingAlert = true
                        }
                        else {
                            //do login here
                            self.auth.isLoggedIn = true
                            self.user.resetAll()
                        }
                    }) {
                        Text("Login")
                            .padding(7.5)
                            .frame(width: 200)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(25)
                    }
                    .alert(isPresented: $showingAlert) {
                        switch loginAlert {
                            case .empty :
                                return Alert(title: Text("Warning!"), message: Text("Please Complete Login!"), dismissButton: .default(Text("Dismiss!")))
                            case .error :
                                return Alert(title: Text("Warning!"), message: Text("Wrong Username or Password!\nPlease Try Again!"), dismissButton: .default(Text("Dismiss!")))
                        }
                    }
                }
                .padding(.bottom, 200)
            }
            else {
                BaseView()
            }
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
