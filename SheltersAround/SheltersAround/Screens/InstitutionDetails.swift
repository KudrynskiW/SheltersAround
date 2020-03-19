//
//  InstitutionDetails.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 18/03/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import SwiftUI
import MapKit

struct InstitutionDetails: View {
    @State private var showContactDetails = false
    var institution: Institution
    
    var body: some View {
        VStack {
            InstitutionMapView(coordinate: institution.address.location)
                .frame(height: UIScreen.main.bounds.width * 0.5)
            
            VStack {
                institution.logo?
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.width * 0.5)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.blue, lineWidth: 1)
                    )
                    .shadow(radius: 4)
                    .padding(.bottom)
                    
                
                
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
            }.offset(y: UIScreen.main.bounds.width * -0.15)
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

struct InstitutionMapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<InstitutionMapView>) {
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        uiView.addAnnotation(annotation)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView(frame: .zero)
        mapView.isUserInteractionEnabled = false
        return mapView
    }
}
