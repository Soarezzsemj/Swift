//
//  SheetView.swift
//  desafio perdi as contas
//
//  Created by Turma02-7 on 07/05/25.
//

import SwiftUI

struct SheetView: View {
    @StateObject var vm = ViewModel()
    var recebe =  carros(modelo: "teste", ano: 2, cor: "teste", preco: 2.2, foto: "teste")

    var body: some View {
        ZStack {
            ForEach(vm.estacionamento, id: \.self) { park in
                VStack(alignment: .leading) {
                    Text(park.nomeEstacionamento)
                        .font(.headline)
                    
                    ForEach(park.carros, id: \.self) { carro in
                        Text("Modelo: \(carro.modelo)")
                        Text("ano: \(carro.ano)")
                        AsyncImage(url: URL(string:carro.foto)){ image in
                          image
                            .resizable()
                   .aspectRatio(contentMode: .fit)
                            } placeholder: {
                                       // Adicione aqui um placeholder de sua escolha
                               Color.gray
                                                }
                                            .frame(width: 200, height: 200)
                       
                    }
                }
            }
        }
        .onAppear {
            vm.fetch()
        }
    }
}

#Preview {
    ContentView()
}
