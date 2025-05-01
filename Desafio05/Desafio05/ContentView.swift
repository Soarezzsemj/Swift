//
//  ContentView.swift
//  Desafio05
//
//  Created by Turma02-7 on 22/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var dist : Double = 0
    @State private var time : Double = 0
    @State private var vel : Double = 0
    @State private var img : String = "interr"
    @State private var cor : Color = Color.gray
    
    

    var body: some View {
        ZStack{
            cor.ignoresSafeArea()
            VStack{
                TextField("Enter your score", value: $dist, format: .number)
                    .textContentType(.oneTimeCode)
                    .cornerRadius(30)
                
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                
                Text("Digite a distancia (km).")
                
                VStack{
                    
                    TextField("Enter your score", value: $time, format: .number)
                        .textContentType(.oneTimeCode)
                        .cornerRadius(30)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                    
                    
                    Text("Digite o tempo (h).")
                    
                    
                }
                VStack{
                    Button("Calcular") {
//                        coloca toda a logica aqui dentro
                        vel = dist / time
                        
                        if ( vel >= 0 && vel <= 9.9 ) {
                            img = "tartaruga"
                            cor = Color("Verde claro")
                        }
                        else if(vel >= 10 && vel <= 29.9){
                            img = "elefante"
                            cor = Color("Azul claro")
                            
                            
                        }
                        else if(vel >= 30 && vel <= 69.9){
                            img = "avestruz"
                            cor = Color("Laranja claro")
                            
                        }
                        else if(vel >= 70 && vel <= 89.9){
                            img = "leao"
                            cor = Color("Amarelo claro")
                            
                        }
                        else if(vel >= 90 && vel <= 130){
                            img = "guepardo"
                            cor = Color("Vermelho claro")
                            
                        }
                            
                        //if
                        //img = "tartaruga
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                }
                
                Spacer()
                
                
                
                VStack{
                    
                    Text(" \(vel, specifier: "%.2f")km/h")
                    
                    //
                    //
                    //            AsyncImage(url: URL(string: "https://media.istockphoto.com/photos/question-mark-3d-orange-interrogation-asking-punctuation-sign-symbol-picture-id951908932?b=1&k=20&m=951908932&s=170667a&w=0&h=1m7BvYu2-DBqrc7MkYuMvDBqY-xJMUDN0YKL-mnDIv8=")) { image in
                    //                image.resizable()
                    //            } placeholder: {
                    //                ProgressView()
                    //            }
                    //            .frame(width: 50, height: 50)
                    Image(img)
                        .resizable()
                        .frame(width: 200, height: 200)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                }
                Spacer()
                VStack{
                    HStack{
                        Text("TARTARUGA")
                        Text("(0 - 9.9km/h)")
                        
                    }
                    HStack{
                        Text("ELEFANTE")
                        Text("(10 - 29.9km/h)")
                        
                    }
                    HStack{
                        Text("AVESTRUZ")
                        Text("(30 - 69.9km/h)")
                        
                    }
                    HStack{
                        Text("LEÃO")
                        Text("(70 - 89.9km/h)")
                        
                    }
                    HStack{
                        Text("GUEPARDO")
                        Text("(90 - 130km/h)")
                        
                    }
                    
          
               
                }   .frame(width: 300, height: 150)
                    .background(.black)
                    .foregroundStyle(.white)
                    .cornerRadius(10)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
