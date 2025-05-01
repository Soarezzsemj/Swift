//
//  ContentView.swift
//  desafio me perdi ja na contagem
//
//  Created by Turma02-7 on 29/04/25.
//

import SwiftUI

struct ContentView: View {
//    vm.corridas
@StateObject var vm = ViewModel()
    
    var body: some View {
        ZStack{
            VStack{
                
                ForEach(vm.pessoas, id: \.self) { index  in
                    Text(index.name.first)
                    


                }
                
            }
        }.onAppear() {
            vm.fetch()
        }
        
        
        
        
        
    }
}

#Preview {
    ContentView()
}
