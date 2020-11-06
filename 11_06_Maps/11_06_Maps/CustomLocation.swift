//
//  MyLocal.swift
//  11_06_Maps
//
//  Created by Narlei A Moreira on 06/11/20.
//

import Foundation
import MapKit

class CustomLocation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    var subtitle: String?
    var category: String?

    init(coordinate: CLLocationCoordinate2D, title: String?, subtitle: String?, category: String?) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        self.category = category
        
        super.init()
    }
}
