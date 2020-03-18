//
//  InstitutionDetails.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 18/03/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import SwiftUI

struct InstitutionDetails: View {
    @State private var showContactDetails = false
    var institution: Institution
    
    var body: some View {
        VStack {
            institution.logo?
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.width * 0.6)
                .padding()
            
            VStack(alignment: .leading) {
                Text(institution.form + " " + institution.name)
                    .font(.title)
                Text(institution.description)
            }.padding(.horizontal)
            
            VStack {
                Button(action: {
                    withAnimation {
                        self.showContactDetails.toggle()
                    }
                }) {
                    Text("SHOW CONTACT DETAILS")
                    .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.05)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: 2, x: 1, y: 0)
                }
                
                if(self.showContactDetails) {
                    VStack {
                        Text(institution.form + " " + institution.name)
                        Text(institution.address.streetName + " " + institution.address.streetNumber)
                        Text(institution.address.postalCode + " " + institution.address.city)
                        ForEach(institution.contact.phoneNumbers, id: \.self) { number in
                            Text(number)
                        }
                        Text(institution.contact.emailAddress)
                    }
                    .frame(width: UIScreen.main.bounds.width * 0.8)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue, lineWidth: 2)
                    )
                    .padding(.vertical)
                }
            }.padding()
            
            
            Spacer()
        }.navigationBarTitle("Institution Details", displayMode: .inline)
    }
}

struct InstitutionDetails_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            InstitutionDetails(institution: exampleInstitution1)
        }
        
    }
}
