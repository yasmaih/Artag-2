//
//  Database.swift
//  Artag
//
//  Created by yasmine on 14/09/2021.
//

import Foundation
import MapKit
import SwiftUI
import UIKit


var laCathe : Tag = Tag(image: "la cathe",
                        name: "Cathédrale",
                        date: dateFromString(txt: "12/09/21"),
                        user: Julien,
                        category: .architecture,
                        city: "Lille",
                        adresse: CLLocationCoordinate2D(latitude: 50.6397222,
                        longitude: 3.062222222222222),
                        bio: "Une magnifique Cathédrale dont la construction a été finie en 1999, après 150 ans de construction en tant que remplacement pour la collégiale Saint-Pierre après sa destruction durant la Révolution. La construction de cette Cathédrale a été faite d'après des plans faits par l'architecte lillois Charles Leroy.",
                        isfavorite : false
)

var laPiscine : Tag = Tag(image: "piscine",
                          name: "La Piscine",
                          date: dateFromString(txt: "12/09/21"),
                          user: Yasmine,
                          category: .musée,
                          city: "Roubaix",
                          adresse: CLLocationCoordinate2D(
                          latitude: 50.69252421261862,
                        longitude: 3.1677615153792393),
                          bio: "Aussi connu sous le nom de musée d'art et d'industrie André-Diligent, la Piscine présentes de nombreuses collections de tissus, pièces d'arts décoratifs, sculptures, peintures et dessins sur une surface ouverte au public de 8 000 m². Son nom est dû au fait que le musée a été installé dans une ancienne piscine de style Art Déco construite entre 1927 et 1932 par l'architecte lillois Albert Baert.",
                          isfavorite : true
)

var cerfVolant : Tag = Tag(image: "cerfvolant",
                           name: "Championnat de Cerf Volant",
                           date: dateFromString(txt: "11/04/21"),
                           user: Julien,
                           category: .evenement,
                           city: "Berck",
                           adresse: CLLocationCoordinate2D(latitude: 50.4085567470696,
                          longitude: 1.560246597528705),
                           bio: "Un championnat annuel dans lequel les participants sont notés par un jury sur leur capacité à faire voler un cerf-volant de manière artistique. Etant donné de la crise sanitaire, le championnant n'aura pas lieu cette année, mais il a été annoncé que le prochain championnat sera tenu dès que les conditions le permettront en 2022, et que des ateliers seront tout de même proposés par les organisateurs.",
                           isfavorite : false
)

var frac : Tag = Tag(image: "frac",
                     name: "FRAC",
                     date: dateFromString(txt: "14/09/21"),
                     user: Yasmine,
                     category: .musée,
                     city: "Dunkerque",
                     adresse : CLLocationCoordinate2D(latitude: 51.047808164264985,longitude: 2.3758943536495902),
                     bio: "Le Fonds Régional d'Art Contemporain de Dunkerque est un musée d'art contemporain d'une surface de 8000 m² ouvert en 1983. Le FRAC abrite en son sein un total d'environ 1 500 oeuvres d'art contemporain venant du monde entier, datées de 1960 à nos jours, qui sont régulièrement présentées non seulement au grand public, mais aussi à des écoles locales.",
                     isfavorite : true
)

var tags: [Tag] = [laCathe, laPiscine, cerfVolant, frac]

var Julien = User(name: "Choromanski",
                  pseudo: "Redchou",
                  userCity: "Méricourt",
                  interests: "Rien",
                  picture: "JulienPic",
                  bio: "Un jour je suis né, et depuis...",
                  NumberOfFollowers: 0,
                  NumberOfSubscriber: 0,
                  dateSignIn: dateFromString(txt: "14/09/21"))

var Yasmine = User(name: "Yasmine AICHI",
                   pseudo: "Yasminouna",
                   userCity: "Dunkerque",
                   interests: "literature, peinture",
                   picture: "YasminePic",
                   bio: "20yo French and English here to meet friends and artworks",
                   NumberOfFollowers: 788,
                   NumberOfSubscriber: 100,
                   dateSignIn: dateFromString(txt: "14/09/21"))

var Baptiste = User(name: "Baptiste",
                    pseudo: "Nagilawfultired",
                    userCity: "Tourcoing",
                    interests:  "Lecture, jeux et peinture",
                    picture: "BaptistePic",
                    bio: "Je manque de sommeil",
                   NumberOfFollowers: 31,
                    NumberOfSubscriber: 271,
                    dateSignIn: dateFromString(txt: "16/06/21"))

var Alixe = User(name: "Alixe Mass",
                 pseudo: "Alixe",
                 userCity: "Lille",
                 interests: "Art",
                 picture: "AlixePic",
                 bio: "J'aime l'art et la culture",
                 NumberOfFollowers: 20,
                 NumberOfSubscriber: 20,
                 dateSignIn: dateFromString(txt: "15/01/21"))

var Nicolas = User(name: "Lagrelle",
                   pseudo: "Ricolas",
                   userCity: "Mouveaux",
                   interests: "jeux vidéo , bad, vélo, jeux de carte , dormir et manger",
                   picture: "NicolasPic",
                   bio: "né un 27 janvier dans la sud je vit depuis sous le toit de mes parent en étant nourit loger et blanchit depuis 20 ans",
                NumberOfFollowers: 0,
                   NumberOfSubscriber: 0,
                   dateSignIn: dateFromString(txt: "21/01/21"))


var Users: [User] = [Julien, Yasmine, Baptiste, Alixe, Nicolas]


let annotations = [
 AnnotionTag(name: tags[0].name, coordinate: tags[0].adresse),
 AnnotionTag(name: tags[1].name, coordinate: tags[1].adresse),
 AnnotionTag(name: tags[2].name, coordinate: tags[2].adresse),
 AnnotionTag(name: tags[3].name, coordinate: tags[3].adresse)
]

var CatheAnnot : AnnotionTag = AnnotionTag(name: tags[0].name, coordinate: tags[0].adresse)
var PiscineAnnot : AnnotionTag = AnnotionTag(name: tags[1].name, coordinate: tags[1].adresse)
var cerfVolantAnnot : AnnotionTag = AnnotionTag(name: tags[2].name, coordinate: tags[2].adresse)
var FracAnnot : AnnotionTag = AnnotionTag(name: tags[3].name, coordinate: tags[3].adresse)
var annots: [AnnotionTag] = [CatheAnnot, PiscineAnnot, cerfVolantAnnot, FracAnnot]

struct OnboardingData : Hashable, Identifiable {
    let id : Int
    let backgroundColor : String
    let objectimage : String
    let primaryText : String
    let secondaryText : String
    
    static let list: [OnboardingData] = [
        OnboardingData(id: 0, backgroundColor: "sable", objectimage: "logo", primaryText: "Bienvenue sur ArtTag", secondaryText: "Avant de commencer à navigué nous allons te montrer le fonctionnement d'ArtTag"),
        OnboardingData(id: 1, backgroundColor: "Orange", objectimage:  "Image localisation", primaryText: "Trouve les oeuvres qui t'entourent!", secondaryText: "Avec la fonction de géolocalisation tu peux  trouvez autour de toi les ''Tags'' qui representent un point d'intérets général (musée, Street Art ect) et les consulter pour avoir plus d'informations."),
        OnboardingData(id: 2, backgroundColor: "verteau", objectimage: "photo1", primaryText: "Partage des oeuvres qui te ressemblent !", secondaryText: "Crées ton propre ''Tag''!  Prend en photo un lieu culturel ou artistique, renseigne et partage ton tag afin de faire profiter tout le monde."),
        OnboardingData(id: 3, backgroundColor: "fond3", objectimage: "profilagenda", primaryText: "Planifie et participe!", secondaryText: "Accède à ton Agend'ART qui te permettra de plainifier tes futurs évenements, tu aussi la possiblité de personnaliser ton profil et de mettre en favoris des 'Tags'.")
    ]
}

