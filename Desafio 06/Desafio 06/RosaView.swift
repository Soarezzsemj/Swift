//
//  RosaView.swift
//  Desafio 06
//
//  Created by Turma02-7 on 23/04/25.
//

import SwiftUI

struct RosaView: View {
    var body: some View {
        ZStack{
            
            Color.pink
                .edgesIgnoringSafeArea(.top)
            
            ZStack{
                Circle()
                .frame(width: 300)
                Image(systemName: "paintbrush")
                    .font(.system(size: 200))
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            .frame(width: 200)
            
        }
        
    }
    
}

#Preview {
    RosaView()
}
