//
//  AzulView.swift
//  Desafio 06
//
//  Created by Turma02-7 on 23/04/25.
//

import SwiftUI


struct AzulView: View {
    var body: some View {
        ZStack{
            
            Color.blue
                .edgesIgnoringSafeArea(.top)
            
            ZStack{
                Circle()
                .frame(width: 300)
                Image(systemName: "paintbrush.pointed")
                    .font(.system(size: 200))
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                
                
            }
            
        }
    }
}

#Preview {
    AzulView()
}
