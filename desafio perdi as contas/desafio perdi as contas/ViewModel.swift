//
//  ViewModel.swift
//  desafio perdi as contas
//
//  Created by Turma02-7 on 07/05/25.
//

import Foundation


class ViewModel: ObservableObject {
    @Published var estacionamento: [Park] = []
    func fetch() {
        guard let url = URL(string: "http://127.0.0.1:1880/leitura") else{
            return
        }
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
                
            }
            do {
                let parsed =  try JSONDecoder().decode([Park].self, from: data)
                DispatchQueue.main.async {
                    self?.estacionamento = parsed
                    
                }
                
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
