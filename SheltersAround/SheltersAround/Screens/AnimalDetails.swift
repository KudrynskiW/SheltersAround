//
//  AnimalDetails.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 19/03/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import SwiftUI

struct AnimalDetails: View {
    var animal: Animal
    
    var body: some View {
        VStack {
            
            VStack(alignment: .center) {
                animal.pictures?.first?
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.width * 0.5)
                .clipShape(Circle())
                
                Text(animal.name)
                .font(.title)
                .fontWeight(.bold)
            }
            
            VStack(alignment: .leading) {
                Text("Type: \(animal.type)")
                Text("Age: \(animal.age)")
                Text("Size: \(animal.size)")
                
                Text(animal.description)
                    .padding(.vertical)
            }
            
            Button(action: {
                //
            }) {
                HStack {
                    VStack {
                        Text("Support Me")
                    }
                }.font(.title)
                .frame(width: UIScreen.main.bounds.width * 0.7)
                .padding(5)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.blue, lineWidth: 2)
                )
            }
            
            

            Spacer()
        }
        .padding()
        .navigationBarTitle("Animal Details", displayMode: .inline)
    }
}

struct AnimalDetails_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AnimalDetails(animal: exampleAnimal1)
        }
    }
}
