//
//  ContentView.swift
//  Netflix
//
//  Created by Turma02-7 on 24/04/25.
//

import SwiftUI



struct ContentView: View {

   
    
    var body: some View {
        
        TabView {
            Tab1View()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            Tab2View()
                .tabItem {
                    Label("Novidades", systemImage: "tv.and.mediabox")
                }
            
            Tab3View()
                .badge(1)
                .tabItem {
                    Label("Minha Netflix", systemImage: "person")
                }
            
        }
        

        
        
    }
}



#Preview {
    ContentView()
}
