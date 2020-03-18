//
//  HomeScreen.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 17/03/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import SwiftUI

struct HomeScreen: View {
    var loggedUser: User
    
    var body: some View {
        VStack {
            Image("Logo250x250")
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.width * 0.4)
                .foregroundColor(.blue)
                .padding(.top)
            Text("Welcome \(self.loggedUser.email)!")
                .padding()
            
            Text("I'm happy that you are using this application :-)\n\nYou can go to Catalog option for browse Institution registered in our database. Please, use Settings button to get chance to change your Language, password or appearance of application.\n\nHave fun during helping pets!\nWojciech >wojciech@kudrynski.pl<")
                .padding()
                .multilineTextAlignment(.leading)
            
            Spacer()
            
            HStack {
                Button(action: {
                    //
                }) {
                    NavigationLink(destination: CatalogScreen()) {
                            HomeScreenMenuButtonStyle(title: "CATALOG", titleColor: .white, bgColor: .blue, image: "folder")
                    }
                }
                
                Spacer()
                
                Button(action: {
                    //
                }) {
                    NavigationLink(destination: SettingsScreen()) {
                    HomeScreenMenuButtonStyle(title: "SETTINGS", titleColor: .white, bgColor: .blue, image: "gear")
                    }
                }
                
            }.padding()

            Spacer()
        }
        .navigationBarTitle("Home", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(loggedUser: User("example@user.com"))
    }
}

struct HomeScreenMenuButtonStyle: View {
    var title: String
    var titleColor: Color
    var bgColor: Color
    var image: String
    
    var body: some View {
        VStack {
            Image(systemName: self.image)
                .foregroundColor(self.titleColor)
                .font(.largeTitle)
            Text(self.title)
                .foregroundColor(self.titleColor)
                .font(.body)
                .fixedSize()
                .multilineTextAlignment(.center)
                
        }
        .frame(width: UIScreen.main.bounds.width * 0.4, height: UIScreen.main.bounds.width * 0.4)
        .background(self.bgColor)
        .cornerRadius(20)
        .shadow(color: .gray, radius: 5, x: 5, y: 5)
    }
}
