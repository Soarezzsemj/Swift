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
    
    @State var car : carros = carros(modelo: "", dono: "", ano: "", video: "", cor: "", preco: 0.0, foto: "")
    var body: some View {
        ZStack {
            Color.gray
            .ignoresSafeArea()
            
            ForEach(vm.estacionamento, id: \.self) { park in
                VStack(alignment: .leading) {
                    Text("Estacionamento do \(park.nomeEstacionamento)")
                        .bold()
                        .font(.system(size: 50))
                        .font(.headline)
                        .foregroundColor(.white)
                    
   ForEach(park.carros, id: \.self) { carro in
    Text("Modelo: \(carro.modelo)")
           .padding(10)
           .font(.system(size: 25))
           .foregroundColor(.white)
       .onTapGesture {
           car = carro
          puxarsheet.toggle()
                        }
                    }
                }
            }
            
        }.sheet(isPresented: $puxarsheet) {
            SheetView(recebe: $car)
        }
        .onAppear {
            vm.fetch()
        }
    }
}

#Preview {
    ContentView()
}
