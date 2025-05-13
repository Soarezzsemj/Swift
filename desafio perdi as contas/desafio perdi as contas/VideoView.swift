//
//  VideoView.swift
//  desafio perdi as contas
//
//  Created by Turma02-7 on 12/05/25.
//

import SwiftUI
import WebKit

struct VideoView: UIViewRepresentable {
    
    let videoID : String
    
    func makeUIView(context: Context) -> some WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)") else {return}
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
}

