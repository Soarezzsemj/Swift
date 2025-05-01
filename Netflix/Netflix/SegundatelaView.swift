//
//  SegundatelaView.swift
//  Netflix
//
//  Created by Turma02-7 on 24/04/25.
//

import SwiftUI

struct SegundatelaView: View {
    @State var nome : String = "Lost in Space"
    var body: some View {
        ZStack{
            Color.black
            
            
            VStack{
                
                Image(.perdido2)
                    .resizable()
                    .frame(width: 399, height: 240)
               
                HStack{
                    
                    Text("\(nome)")
                        .bold()
                        .foregroundStyle(.white)
                        Spacer()
                   
                    
                }
                .padding()
                Spacer()
                VStack{
                    HStack{
                        Text("2021")
                        .foregroundStyle(.white)
                        Spacer()
                        Image(.classe)
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("3 Temporadas")
                        .foregroundStyle(.white)
                        Spacer()
                        .padding()
                    }
                    Spacer()
                }
                .padding()
                Spacer()
            
                    
                VStack{
                    
                    HStack{
                        Image(systemName: "play.fill")

                        Text("Assistir")

                    }
                    .bold()
                    .foregroundColor(.black)
                    .frame(width: 390, height: 45)
                    .background(.white)
                    
                    .foregroundStyle(.white)
                    .cornerRadius(10)
                       
                        
                    
                    HStack {
                        Image(systemName: "arrow.down.to.line")
                        Text("Baixar")
                    }
                    .bold()
                    .foregroundColor(.white)
                                .frame(width: 390, height: 45)
                                .background(.gray.opacity(0.8))
                                .foregroundStyle(.black)
                            .cornerRadius(10)
                    
                    
                }
                Spacer()
                .padding()
                
                VStack {
                    Text("Finge q tem um texto grande aqui")
                        .foregroundColor(.white)
                }
                Spacer()
                    .padding()
                
                VStack {
                    HStack{
                        VStack {
                            Image(systemName: "plus")
                                .foregroundColor(.white)
                            Text("Minha lista")
                             .foregroundColor(.white)
                            
                        }
                        VStack {
                            Image(systemName: "hand.thumbsup")
                                .foregroundColor(.white)
                            Text("Avaliar")
                             .foregroundColor(.white)
                        }
                        VStack {
                            Image(systemName: "paperplane")
                                .foregroundColor(.white)
                            Text("Compartilhar")
                             .foregroundColor(.white)
                        }
                    }
//                    Text("Minha lista")
//                    .foregroundColor(.white)
                }
                Spacer()
                    .padding()
                VStack{
                    HStack {
                        Text("Episodios")
                            .foregroundColor(.white)
                        Text("Titulos Semelhantes")
                            .foregroundColor(.white)
                            Spacer()
                            
                    }
                   // Spacer()
                        .padding()
                }
            }
            
          
            
        }
        
    }
    
}

#Preview {
    SegundatelaView()
}
