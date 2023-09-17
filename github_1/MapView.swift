//
//  MapView.swift
//  github_1
//
//  Created by victor on 17/09/23.
//

import MapKit
import SwiftUI

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        
            MKMapView(frame: .zero)
    }
    
    
    
    func updateUIView(_ uIView: MKMapView, context: Context){
        
        let coordinate = CLLocationCoordinate2D(latitude: 4.65805556, longitude: -74.09388889)
        
        let span = MKCoordinateSpan(latitudeDelta: 2, longitudeDelta: 1)
        
        let region = MKCoordinateRegion(center: coordinate, span: span)
    
        uIView.setRegion(region, animated: true)
    }
}



struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
