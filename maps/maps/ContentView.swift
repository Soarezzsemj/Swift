//
//  ContentView.swift
//  maps
//
//  Created by Turma02-7 on 28/04/25.
//

//TERMINAR A SHEETVIEW

import SwiftUI
import MapKit

struct Location: Hashable {
    let nome : String
    let Foto : String
    let Descricao : String
    let Latitude : Double
    let Longitude : Double
}

struct ContentView: View {
    @State private var puxarsheet = false
    @State private var Positionselecionada = Location(
    
    
nome: "speedwaymusicpark",
Foto:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfrsqjebNQuz1cTNwd3DTG1C5jcEF40uKcaQ&s",
Descricao: "pista de drift localizada em balneário camboriú",
Latitude: -27.0359529,
Longitude: -48.6059221
        )
    
        
    
    
    @State private var position = MapCameraPosition.region(
    MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253),
    span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
    ))
    
    let arrayPistas: [Location] = [
        Location(nome: "speedwaymusicpark" , Foto: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfrsqjebNQuz1cTNwd3DTG1C5jcEF40uKcaQ&s", Descricao: "pista de drift localizada em balneário camboriú", Latitude: -27.0359529, Longitude: -48.6059221),
        
        Location(nome: "mega space", Foto: "https://gnoticia.com.br/wp-content/uploads/2025/03/Dayball-Diorio-5-1-.jpg", Descricao: "pista desafiadora em uma montanha", Latitude: -19.7929452, Longitude: -43.8820871)
        
    ]

    
    var body: some View {
        ZStack {
            
            
            Map(position: $position){
                ForEach(arrayPistas, id: \.self) { index  in
                    Annotation(Positionselecionada.nome, coordinate: CLLocationCoordinate2D(latitude: index.Latitude, longitude: index.Longitude), content: {
                        Image(systemName: "pin")
                        Circle()
                            .onTapGesture {
                                puxarsheet.toggle()
                            }
                            .sheet(isPresented: $puxarsheet) {
                                SheetView(recebe: index)
                                    }
                    })
                    
                }
            }
            VStack{
                Picker("", selection: $Positionselecionada) {
                    ForEach(arrayPistas, id: \.self) { index  in
                        Text(index.nome)
                        
                        
                            .onChange(of: Positionselecionada) { posAntiga, novaPos in position = MapCameraPosition.region(
                                MKCoordinateRegion(
                                    center: CLLocationCoordinate2D(latitude: novaPos.Latitude, longitude: novaPos.Longitude),
                                span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
                                ))}
                    }
                }
                .background(.white)
                .cornerRadius(10)
                Spacer()
            }
            
            
            
         
            
        }
        
        
        
      
        
    
        
        
    }
}

#Preview {
    ContentView()
}
