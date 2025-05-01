//
//  ContentView.swift
//  Desafio 06
//
//  Created by Turma02-7 on 23/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            TabView {
                RosaView()
                    .badge(2)
                    .tabItem {
                        Label("Rosa", systemImage: "paintbrush")
                    }
                AzulView()
                    .badge(2)
                    .tabItem {
                        Label("Azul", systemImage: "paintbrush.pointed")
                    }
                CinzaView()
                    .badge(2)
                    .tabItem {
                        Label("Cinza", systemImage: "paintpalette")
                    }
                
            }
           
        }
    }
}

#Preview {
    ContentView()
}
