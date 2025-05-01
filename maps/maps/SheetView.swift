//
//  SheetView.swift
//  maps
//
//  Created by Turma02-7 on 28/04/25.
//

//TERMINAR A

import SwiftUI

struct SheetView: View {
    var recebe =  Location(nome: "mega space", Foto: "https://gnoticia.com.br/wp-content/uploads/2025/03/Dayball-Diorio-5-1-.jpg", Descricao: "pista desafiadora", Latitude: -19.7929452, Longitude: -43.8820871)
    var body: some View {
        ZStack{
            
            Color(.gray)
            
            VStack{
                
           
            
            
//            ForEach(arrayPistas, id: \.self) { index  in
//                Text(index.nome) }
            
            AsyncImage(url: URL(string:recebe.Foto)){ image in
                                        image
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                    } placeholder: {
                                        // Adicione aqui um placeholder de sua escolha
                                        Color.gray
                                    }
                Spacer()
                Text(recebe.nome)
                    .bold()
                Spacer()
                Text(recebe.Descricao)
            }
        }
    }
}

#Preview {
    SheetView()
}
