//
//  ViewModel.swift
//  desafio me perdi ja na contagem
//
//  Created by Turma02-7 on 29/04/25.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var pessoas: [Persons] = []
    func fetch() {
        guard let url = URL(string: "https://randomuser.me/api") else{
            return
        }
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
                
            }
            do {
                let parsed =  try JSONDecoder().decode(Results.self, from: data)
                DispatchQueue.main.async {
                    self?.pessoas = parsed.results
                    
                }
                
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
