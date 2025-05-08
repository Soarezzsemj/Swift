//
//  SheetView.swift
//  desafio perdi as contas
//
//  Created by Turma02-7 on 07/05/25.
//

import SwiftUI

struct SheetView: View {
    
    @Binding var recebe :  carros
    
    var body: some View {
        ZStack {
            Color.gray
            .ignoresSafeArea()
            VStack(alignment: .leading) {
               
                Text("Modelo: \(recebe.modelo)")
                .font(.system(size: 30))
                .foregroundColor(.white)
                .bold()
                .padding(10)
               
                Text("Cor:\(recebe.cor)")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .padding(10)
                Text("Ano: \(recebe.ano)")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .padding(10)
                Text("Preço: \(recebe.preco)R$")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .padding(10)
                

                
                
                
                
                AsyncImage(url: URL(string:recebe.foto)){ image in image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                }
            placeholder: {
                // Adicione aqui um placeholder de sua escolha
                Color.gray
                .frame(width: 200, height: 200)
                
                
                }
            .padding(10)
            Spacer()
           
            }
            
        }
    }
}


#Preview {
    ContentView()
}


