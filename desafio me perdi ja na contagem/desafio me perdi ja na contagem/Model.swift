//
//  Model.swift
//  desafio me perdi ja na contagem
//
//  Created by Turma02-7 on 29/04/25.
//

import Foundation

// coloca os let aq e a struct


struct Results : Decodable, Hashable{
    let results : [Persons]
}

struct Persons: Decodable, Hashable{
    
    let gender: String?
    let name : name
    let location : location
    let email : String?
    let login : login
    let dob : dob
    let registered : registered
    let phone : String?
    let cell : String?
    let picture : picture
    let nat : String?
}

struct name: Decodable, Hashable {
    
    let title : String
    let first : String
    let last : String
    
}

struct location: Decodable, Hashable{
    let street : street
    let city : String
    let state : String
    let country : String
    let postcode :Double
}
struct street: Decodable, Hashable{
    let number : Double
    let name : String
    
}


struct login: Decodable, Hashable {
    let uuid : String
    let username : String
    let password : String
    let salt : String
    let md5 : String
    let sha1 : String
    let sha256 : String
    
}

struct dob: Decodable, Hashable {
    let date : String
    let age : Int
    
}

struct registered: Decodable, Hashable {
    let date : String
    let age : Int
}

struct picture: Decodable, Hashable {
    let large : String
    let medium : String
    let thumbnail : String
}
