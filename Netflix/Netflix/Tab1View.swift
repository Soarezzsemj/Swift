//
//  Tab1View.swift
//  Netflix
//
//  Created by Turma02-7 on 24/04/25.
//

import SwiftUI

struct Tab1View: View {
//*@State var nome : String = "Lost in space"*/
    var body: some View {
        NavigationStack{
            ScrollView{
            ZStack{
                VStack {
                    LinearGradient(gradient: Gradient(colors: [.white, .blue, .black]), startPoint: .top, endPoint: .bottom)
                }
                .edgesIgnoringSafeArea(.top)
                VStack{
                    
                    HStack {
                        Text("Para Carlos")
                            .bold()
                            .padding()
                        Spacer()
                        
                        Image(systemName: "arrow.down.to.line")
                            .padding(10)
                        Image(systemName: "magnifyingglass")
                            .padding(10)
                        
                        
                    }
                    Spacer()
                    HStack {
                        
                        Text("Séries")
                        
                            .frame(width: 100, height: 40)
                            .overlay(
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .stroke(.black,lineWidth: 1))
                        
                        
                        Text("Filmes")
                        
                        
                            .frame(width: 100, height: 40)
                            .overlay(
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .stroke(.black,lineWidth: 1))
                        
                        Text("Categorias")
                        
                            .frame(width: 100, height: 40)
                            .overlay(
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .stroke(.black,lineWidth: 1))
                        
                        
                        
                        
                    }
                    
                    
                    
                    Spacer()
                    ZStack{
                        Image(.espaco)
                            .resizable()
                            .frame(width: 340, height: 460)
                            .cornerRadius(40)
                            .padding()
                        
                        
                        VStack {
                            Spacer()
                            HStack{
                                NavigationLink(destination:SegundatelaView()) {
                                    
                                    HStack{
                                        
                                        HStack{
                                            Image(systemName: "play.fill")
                                            
                                            Text("Assistir")
                                            
                                        }
                                        .bold()
                                        .foregroundColor(.black)
                                        .frame(width: 150, height: 45)
                                        .background(.white)
                                        
                                        .foregroundStyle(.white)
                                        .cornerRadius(10)
                                        
                                        
                                        
                                        Text("Minha lista")
                                            .foregroundColor(.white)
                                            .frame(width: 150, height: 45)
                                            .background(.gray.opacity(0.8))
                                            .foregroundStyle(.black)
                                            .cornerRadius(10)
                                        
                                    }
                                    
                                    
                                    
                                }
                                
                                
                            }.padding()
                        }
                        
                    }
                    
                    Spacer()
                    
                    Text("Continuar assistindo como Carlos")
                        .foregroundColor(.white)
                        .padding(60)
                    Spacer()
                }
                    
                }
            }
        }
    }
}

#Preview {
    Tab1View()
}
