//
//  ContentView.swift
//  Desafio 07
//
//  Created by Turma02-7 on 23/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
       
        ZStack{
            Color.fundo
            .ignoresSafeArea()
            
            VStack{
              
                VStack{
                    
                    NavigationLink(destination:Modo1View()) {
                        Text("Modo 1")
                            .frame(width: 300, height: 90)
                                .background(.botao)
                                .foregroundStyle(.white)
                                .cornerRadius(10)
                    }
                    NavigationLink(destination:Modo2View()) {
                        Text("Modo 2")
                            .frame(width: 300, height: 90)
                                .background(.botao)
                                .foregroundStyle(.white)
                                .cornerRadius(10)
                    }
                    
                    
                    
                }
            }}
            
           
        }
        
       
        }
        
    }


#Preview {
    ContentView()
}
