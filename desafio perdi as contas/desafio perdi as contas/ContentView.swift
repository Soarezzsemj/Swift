//
//  ContentView.swift
//  desafio perdi as contas
//
//  Created by Turma02-7 on 07/05/25.
//

import SwiftUI

struct ContentView: View {
    @State private var puxarsheet = false
    @StateObject var vm = ViewModel()

    var body: some View {
        ZStack {
            ForEach(vm.estacionamento, id: \.self) { park in
                VStack(alignment: .leading) {
                    Text(park.nomeEstacionamento)
                        .font(.headline)
                    
                    ForEach(park.carros, id: \.self) { carro in
                        Text("Modelo: \(carro.modelo)")
                            .onTapGesture {
                            puxarsheet.toggle()
                            }
                            .sheet(isPresented: $puxarsheet) {
                                SheetView(recebe: carro)
                                    }
                        
                       
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
