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
            
            Text("You are in SheltersAround application!\n\nPlease, use Catalog option for browse Institution registered in our database. You can go to Settings to change your Language, password or appearance of application.\n\nHave fun during helping pets!\nWojciech >wojciech@kudrynski.pl<")
                .padding()
                .multilineTextAlignment(.leading)
            
            Spacer()
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
