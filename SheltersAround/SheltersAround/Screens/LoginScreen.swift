//
//  LoginScreen.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 17/03/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import SwiftUI

struct LoginScreen: View {
    @State private var userEmail = ""
    @State private var userPassword = ""
    @State var userEditing = false
    @State var startOpacity = 0.0
    
    var body: some View {
        NavigationView {
            VStack {
                Image("Logo250x250")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.width * 0.6)
                    .padding(.top, self.userEditing ? 0 : UIScreen.main.bounds.height * 0.05)
                    .padding(.bottom, self.userEditing ? 0 : UIScreen.main.bounds.height * 0.1)
                    .foregroundColor(.blue)
                    
                VStack {
                    HStack {
                        
                        TextField("Enter your email here..", text: $userEmail, onEditingChanged: { _ in
                            withAnimation { self.userEditing = true } })
                            .keyboardType(.emailAddress)
                    }
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1)
                    )
                    
                    HStack {
                        SecureField("Enter your password here..", text: $userPassword, onCommit: {
                            withAnimation { self.userEditing = false }
                        })
                            .keyboardType(.default)
                        
                    }
                    .onTapGesture {
                        withAnimation { self.userEditing = true }
                    }
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1)
                    )
                    
                    
                    HStack {
                        Spacer()
                        Button(action: {
                            //open forgot password screen
                        }) {
                            Text("Forgot password?")
                        }
                    }
                }.frame(width: UIScreen.main.bounds.width * 0.8)
                
                if(!self.userEditing) { Spacer() }
                
                VStack {
                    Button(action: {
                        //Register action
                    }) { LoginScreenButtonStyle(title: "REGISTER", colorScheme: .red) }
                    
                    Button(action: {
                        //
                    }) { LoginScreenButtonStyle(title: "LOGIN", colorScheme: .blue) }
                    
                    
                    Button(action: {
                        //
                    }) {
                        NavigationLink(destination: HomeScreen(loggedUser: User(self.userEmail))) {
                                LoginScreenButtonStyle(title: "ENTER AS GUEST", colorScheme: .blue)
                        }
                    }
                }
                .animation(.default)
                
                if(self.userEditing) { Spacer() }
            }
            .opacity(self.startOpacity)
            .onAppear {
                withAnimation(.easeIn(duration: 2)) {
                    self.startOpacity = 1
                }
            }
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LoginScreen()
            LoginScreen(userEditing: true)
        }
    }
}

struct LoginScreenButtonStyle: View {
    var title: String
    var colorScheme: Color
    
    var body: some View {
        Text(self.title)
            .font(.subheadline)
            .fontWeight(.bold)
            .foregroundColor(self.colorScheme)
            .frame(width: UIScreen.main.bounds.width * 0.8)
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(self.colorScheme, lineWidth: 2)
            
        ).padding(5)
    }
}
