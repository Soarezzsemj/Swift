//
//  Modo23View.swift
//  Desafio 07
//
//  Created by Turma02-7 on 23/04/25.
//

import SwiftUI

struct Modo23View: View {
    var body: some View {
        ZStack{
            Color.fundo
                .ignoresSafeArea()
            
            VStack{
                Text("Volte Eduardo!!!")
                    .frame(width: 300, height: 90)
                    .background(.botao)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    Modo23View()
}
