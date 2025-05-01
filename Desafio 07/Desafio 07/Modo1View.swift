//
//  Modo1View.swift
//  Desafio 07
//
//  Created by Turma02-7 on 23/04/25.
//

import SwiftUI

struct Modo1View: View {
    var body: some View {
        
        ZStack{
            Color.fundo
            .ignoresSafeArea()
            
            VStack{
                Text("Nome: Eduardo \nSobrenome: Soares")
                
                    .frame(width: 300, height: 90)
                        .background(.botao)
                        .foregroundStyle(.white)
                        .cornerRadius(10)
            }
        }
//        
        
        
        
    }
}

#Preview {
    Modo1View()
}
