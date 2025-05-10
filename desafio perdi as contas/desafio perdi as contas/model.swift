//
//  model.swift
//  desafio perdi as contas
//
//  Created by Turma02-7 on 07/05/25.
//

import Foundation

struct Park : Decodable,Hashable {
    let nomeEstacionamento : String
    let quantidadeVagas : Int
    let carros : [carros]
}

struct carros : Decodable, Hashable {
    let modelo : String
    let dono : String
    let ano : String
    let video : String
    let cor : String
    let preco : Double
    let foto : String
}
