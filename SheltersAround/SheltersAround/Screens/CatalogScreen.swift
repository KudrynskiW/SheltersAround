//
//  CatalogScreen.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 18/03/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import SwiftUI

struct CatalogScreen: View {
    @State var searchTerm = ""
    @State var isEditing = false
    @State var arrayForList = exampleInstitutionArray
    
    var body: some View {
        VStack {
            Text("You can browse already registered Institutions or use search bar below.")
                .font(.body)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(30)
            
            HStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color(.gray))
                    
                    TextField("Search", text: $searchTerm, onEditingChanged: { _ in
                        withAnimation {
                            self.isEditing = true
                        }
                    }) {
                        
                    }
                    
                    if(self.isEditing) {
                        Button(action: {
                            self.searchTerm = ""
                        }) {
                            Image(systemName: "xmark.circle.fill")
                            .foregroundColor(Color(.gray))
                                .padding(.trailing, 8)
                        }
                    }
                    
                }
                .padding([.vertical, .leading], 10)
                .background(Color(.secondarySystemBackground))
                .cornerRadius(10)
                .padding(.leading, 10)
                
                if(self.isEditing) {
                    Button(action: {
                        withAnimation {
                            UIApplication.shared.endEditing(true)
                            self.isEditing = false
                            self.searchTerm = ""
                        }
                    }) {
                        Text("Cancel")
                    }
                    .padding(.trailing, 10)
                }
                Spacer()
            }
            
            List(self.arrayForList.filter { $0.form.contains(searchTerm) || $0.name.contains(searchTerm) || searchTerm == "" }) { institution in
                
                NavigationLink(destination: InstitutionDetails(institution: institution)) {
                    CatalogListCell(institutionPicked: institution)
                }
                
            }
            
            Spacer()
        }.navigationBarTitle("Institutions Catalog", displayMode: .inline)
            
    }
}

struct CatalogScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CatalogListCell(institutionPicked: exampleInstitution1).previewLayout(.sizeThatFits)
            NavigationView {
                CatalogScreen()
            }
            NavigationView {
                CatalogScreen(isEditing: true)
            }.previewDisplayName("isEditing: true")
        }
        
    }
}

struct CatalogListCell: View {
    var institutionPicked: Institution
    
    var body: some View {
        HStack {
            institutionPicked.logo?
                .resizable()
                .frame(width: 100, height: 100)
            
            VStack(alignment: .leading) {
                Text("\(institutionPicked.form) \(institutionPicked.name)")
                    .font(.body)
                    .fontWeight(.bold)
                Text(institutionPicked.description)
                    .font(.body)
                    .frame(height: UIScreen.main.bounds.height * 0.09)
                
            }
        }
    }
}
