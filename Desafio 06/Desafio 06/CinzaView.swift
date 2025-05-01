//
//  CinzaView.swift
//  Desafio 06
//
//  Created by Turma02-7 on 23/04/25.
//

import SwiftUI

struct CinzaView: View {
    var body: some View {
        ZStack{
            
            Color.gray
                .edgesIgnoringSafeArea(.top)
            
            ZStack{
                    Circle()
                    .frame(width: 300)
                Image(systemName: "paintpalette")
                    .font(.system(size: 200))
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            
        }
    }
}

#Preview {
    CinzaView()
}
