//
//  SettingsScreen.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 17/03/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import SwiftUI

struct SettingsScreen: View {
    @State var darkModeToggle = false
    @State var showLanguagePicker = false
    @State var languageChoice = 0
    var languages = ["English", "Polish", "German"]
    
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Language")
                Spacer()
                Button(action: {
                    self.showLanguagePicker.toggle()
                }) {
                    Text(self.languages[self.languageChoice] + " >")
                }
            }.padding([.horizontal, .top])
            
            if(self.showLanguagePicker) {
                Picker(selection: $languageChoice, label: Text("")) {
                    ForEach(0 ..< languages.count) { index in
                        Text(self.languages[index])
                            .tag(index)
                    }
                }
                .pickerStyle(WheelPickerStyle())
                .fixedSize()
                .padding(.horizontal)
            }
            
            
            Toggle(isOn: $darkModeToggle) {
                Text("Dark mode")
            }.padding()
            
            
            
            
            Spacer()
            
            HStack {
                //NavigationLink(destination: HomeScreen(loggedUser: User(self.userEmail))) {
                        HomeScreenMenuButtonStyle(title: "CHANGE\nPASSWORD", titleColor: .white, bgColor: .red, image: "lock")
                            
                //}
                
                Spacer()
                
                //NavigationLink(destination: HomeScreen(loggedUser: User(self.userEmail))) {
                        HomeScreenMenuButtonStyle(title: "LOGOUT", titleColor: .white, bgColor: .red, image: "lock.open")
                            
                //}
            }.padding()
            
        }
        .navigationBarTitle("Settings", displayMode: .inline)
    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
