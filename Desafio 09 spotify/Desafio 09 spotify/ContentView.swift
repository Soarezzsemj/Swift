//
//  ContentView.swift
//  Desafio 09 spotify
//
//  Created by Turma02-7 on 25/04/25.
//

import SwiftUI
struct Song : Identifiable {
    var id : Int
    var name : String
    var artist : String
    var capa : String
}
    


    
    
    
struct ContentView: View {
        
    
    
            
var arrayMusicas = [
                Song( id: 1, name: "Change ( In the House of Flies)" , artist: "Deftones", capa: "https://i1.sndcdn.com/artworks-QehgKnYXjJx1-0-t1080x1080.jpg"),
                Song(id: 2, name: "Sextape", artist: "Deftones", capa: "https://i.scdn.co/image/ab67616d0000b27305dcb69c7d4b76293c77411e"),
                
                Song(id: 3, name: "Be Quiet and Drive (Far Away)", artist: "Deftones", capa: "https://cdn-images.dzcdn.net/images/cover/b0edd62e4e62455aef58a3e60474e2bb/1900x1900-000000-80-0-0.jpg"),
                Song(id: 4, name: "My Own Summer (Shove It)", artist: "Deftones", capa: "https://cdn-images.dzcdn.net/images/cover/b0edd62e4e62455aef58a3e60474e2bb/1900x1900-000000-80-0-0.jpg"),
                Song(id: 5, name: "Cherry Waves", artist: "Deftones", capa: "data:image/jpeg;base64,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"),
                
                Song(id: 6, name: "Please Please Please Let Me Get What I Want - 2005 Remaster", artist: "Deftones", capa: "https://i.scdn.co/image/ab67616d0000b2739bb36ec0850f21845af83b2d"),
                
                Song(id: 7, name: "Mascara", artist: "Deftones", capa: "https://cdn-images.dzcdn.net/images/cover/b0edd62e4e62455aef58a3e60474e2bb/1900x1900-000000-80-0-0.jpg"),
                
                Song(id: 8, name: "Rosemary", artist: "Deftones", capa: "https://akamai.sscdn.co/uploadfile/letras/albuns/2/6/d/2/274101684259753.jpg"),
                
                Song(id: 9, name: "Entombed", artist: "Deftones", capa: "https://akamai.sscdn.co/uploadfile/letras/albuns/2/6/d/2/274101684259753.jpg"),
                
                Song(id: 10, name: "Digital Bath", artist: "Deftones", capa: "https://i1.sndcdn.com/artworks-QehgKnYXjJx1-0-t1080x1080.jpg"),
                
                Song(id: 11, name: "Nine Thou (Grand Mohrman Superstars Remix)", artist: "Styles Of Beyond", capa: "https://preview.redd.it/jcd0799d5vd21.jpg?width=640&crop=smart&auto=webp&s=19647e92dfa193cbea3625f89262a83c84af5e8d"),
                
                
            ]
            
            var body: some View {
              
                    
            ZStack{
     Image(.deftones)
         .resizable()
                .frame(width: 340, height: 460)
            .cornerRadius(40)
                            .padding()
                        LinearGradient(gradient: Gradient(colors: [.gray, .blue, .black]), startPoint: .top, endPoint: .bottom)
                            .ignoresSafeArea()
                        ScrollView{
                        VStack{
                            
                            Image(.deftones)
                                .resizable()
                                .frame(width: 250, height: 250)
                                .cornerRadius(0)
                                .padding()
                            HStack {
                                Text("Rockzao Brabo")
                                .bold()
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .padding()
                                Spacer()
                                
                                
                            }
                            
                            ForEach(arrayMusicas){ e in
                                
                                HStack {
                                  
                                    AsyncImage(url: URL(string:e.capa)){ image in
                                                                image
                                                                    .resizable()
                                                                    .aspectRatio(contentMode: .fit)
                                                            } placeholder: {
                                                                // Adicione aqui um placeholder de sua escolha
                                                                Color.gray
                                                            }
                                                        .frame(width: 50, height: 50)
                                
                                                       
                                                        .padding(1)
                                                        
                                    VStack (alignment: .leading) {
                                    Text(e.name)
                                            .foregroundColor(.white)
                                        .font(.system(size: 15))
                                
                                        
                                
                                
                                    
                                        Text(e.artist)
                                            .foregroundColor(.white)
                                        .font(.system(size: 10))
                                        
                                        
                                                                                
                                        
                                }
                                    
                                    Spacer()
                                    HStack {
                                        Image(systemName: "ellipsis").foregroundColor(.white)
                                            .padding()
                                    }
                                    
                                    
                                    
                                
                                }
                                
                            }
                        
                        
                        }
                    }
                    
                    
                }
        }
}
        
#Preview {
    ContentView()
}
