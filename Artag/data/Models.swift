//
//  File.swift
//  Artag
//
//  Created by yasmine on 14/09/2021.
//

import Foundation
import MapKit
import UIKit
import CoreLocation
import Combine


/*favoris
struct favorite : Identifiable{
    let id : UUID
    let text : String
}
class FavSource : ObservableObject{
    @Published var favoris : [favorite] = []
    var counter : Int = 0
    
    init(){
        //addFav
    }
    
    func addFav(){
        counter += 1
        favoris.append(favorite(id: UUID(), text: "favoris :\(counter)"))
    }
}*/


struct Tag: Identifiable {
    let id = UUID()
    let image : String
    let name : String
    let date : Date
    let user : User
    let category : Category
    let city : String
    let adresse : CLLocationCoordinate2D
    let bio: String
    let isfavorite: Bool
}
struct User : Identifiable{
    let id = UUID()
    let name : String
    var pseudo : String
    var userCity : String
    var interests : String
    var picture : String
    var bio : String
    var NumberOfFollowers : Int
    var NumberOfSubscriber : Int
    let dateSignIn : Date
}
struct TagModel: Identifiable{
    let id = UUID().uuidString
    let cat :String
    let name :String
    let city : String
}

class TagViewModel: ObservableObject {
    @Published var filterArray: [TagModel] = []
    init(){
        getCategory()
    }
    func getCategory(){
        let cat0 = TagModel(cat: tags[0].category.rawValue, name: tags[0].name, city: tags[0].city)
        let cat1 = TagModel(cat: tags[1].category.rawValue, name: tags[1].name, city: tags[1].city)
        let cat2 = TagModel(cat: tags[2].category.rawValue, name: tags[2].name, city: tags[2].city)
        let cat3 = TagModel(cat: tags[3].category.rawValue, name: tags[3].name, city: tags[3].city)
        self.filterArray.append(contentsOf:[
            cat1,
            cat0,
            cat2,
            cat3,
        ])
    }
}

func dateFromString(txt: String) -> Date {
    let dateFormatter = DateFormatter()
    dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
    dateFormatter.dateFormat = "dd/MM/yy"
    return dateFormatter.date(from: txt) ?? Date()
}

func stringFromDate(d: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yy"
    return formatter.string(from: d)
}

enum Category : String, CaseIterable {
    case architecture = "Architecture"
    case musée = "Musée"
    case streetArt = "StreetArt"
    case evenement = "Évenement"
    case peintureDessin = "PeintureDessin"
    case musique = "Musique"
    case performance = "Performance"
    case littérature = "Littérature"
    case sculpture = "Sculpture"
}
struct TVShow: Identifiable {
    var id: String { name }
    let name: String
}

//propre a la mapview

enum MapDetails {
    static let startingLocation = CLLocationCoordinate2D(latitude: 50.62925, longitude: 3.057256)
    static let startingSpan = MKCoordinateSpan (latitudeDelta: 0.05, longitudeDelta: 0.05)
}

final class MyMapViewModel : NSObject, ObservableObject, CLLocationManagerDelegate{
    
    @Published var region = MKCoordinateRegion(center: MapDetails.startingLocation,span: MapDetails.startingSpan)
 
    var locationManager : CLLocationManager?
    
  func checkIfLocationServicesIsEnabled() {
        if CLLocationManager.locationServicesEnabled(){
            locationManager = CLLocationManager()
            locationManager!.delegate = self
            locationManager?.desiredAccuracy = kCLLocationAccuracyBest
        }else {
            print("alert qui dit de mettre la localisation")
        }
    }
private func checkLocationAuthorization() {
    guard let locationManager = locationManager else {return}
    
    switch locationManager.authorizationStatus{
    
    case .notDetermined:
        locationManager.requestWhenInUseAuthorization()
    case .restricted:
        print("Votre localisation est peut-etre empeche par un controle parental, Veuillez vous rendre dans les réglages.")
    case .denied:
        print("Vous avez refusé l'accès a la localisation qui est nécessaire. Veuillez vous rendre dans les réglages pour utiliser l'application.")
    case .authorizedAlways, .authorizedWhenInUse:
        region = MKCoordinateRegion(center: locationManager.location!.coordinate,
                                    span: MapDetails.startingSpan)
        
    @unknown default:
        break
    }
    
}
func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
    checkLocationAuthorization()
}
}
struct AnnotionTag: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
