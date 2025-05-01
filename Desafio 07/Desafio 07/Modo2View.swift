//
//  Modo2View.swift
//  Desafio 07
//
//  Created by Turma02-7 on 23/04/25.
//

import SwiftUI


struct Modo2View: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.fundo
                    .ignoresSafeArea()
                
                VStack{
                    Text("Bem-vindo, Eduardo!")
                        .frame(width: 300, height: 90)
                        .background(.botao)
                        .foregroundStyle(.white)
                        .cornerRadius(10)
                    
                    NavigationLink(destination:Modo23View()) {
                        Text("Acessar Tela")
                            .frame(width: 200, height: 90)
                            .background(.botao)
                            .foregroundStyle(.white)
                            .cornerRadius(30)
                            
                    }
                    }
                
            }
        }
        
    }
}

#Preview {
    Modo2View()
}
