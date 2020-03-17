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
            Text("Hello \(self.loggedUser.email)!")
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(loggedUser: User("example@user.com"))
    }
}
