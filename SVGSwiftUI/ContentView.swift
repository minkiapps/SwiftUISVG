//
//  ContentView.swift
//  SVGSwiftUI
//
//  Created by Mingkang Pan on 28.12.23.
//

import SwiftUI
import SDWebImageSwiftUI

struct ContentView: View {
    
    let columns = [
        GridItem(.fixed(150)),
        GridItem(.flexible())
    ]
    
    /*let urls = [
        "https://preview-assets-ch-itw.kc-usercontent.com:443/657e7b5a-00ee-3f9b-45d4-67449fdc0e72/ee6d5e29-555d-4edb-a900-343bd3abd533/iw-footer-qualitylabel-play-fair-code-colour.svg",
        "https://preview-assets-ch-itw.kc-usercontent.com:443/657e7b5a-00ee-3f9b-45d4-67449fdc0e72/52afd871-769d-47de-8506-1c653ec43ef0/iw-footer-qualitylabel-mga-lizenz-colour.svg",
        "https://preview-assets-ch-itw.kc-usercontent.com:443/657e7b5a-00ee-3f9b-45d4-67449fdc0e72/7b427c67-35c4-4915-9aae-efc266251b31/iw-footer-qualitylabel-18plus-colour.svg",
        "https://preview-assets-ch-itw.kc-usercontent.com:443/657e7b5a-00ee-3f9b-45d4-67449fdc0e72/183d1a1e-6b30-43c8-bc32-9cfe3b7984d4/iw-footer-qualitylabel-ibia-colour.svg",
        "https://preview-assets-ch-itw.kc-usercontent.com:443/657e7b5a-00ee-3f9b-45d4-67449fdc0e72/c9437f3d-8d0e-4bad-a7d2-2be0bbea08ff/iw-footer-qualitylabel-gambling-therapy-colour.svg",
        "https://preview-assets-ch-itw.kc-usercontent.com:443/657e7b5a-00ee-3f9b-45d4-67449fdc0e72/f237af7e-45c9-4be0-a2b5-60b612fa7b45/iw-footer-qualitylabel-thawte-colour.svg"] */
    
    
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 0) {
                ForEach(1...102, id: \.self) { i in
                    WebImage(url: URL(string: "https://appapi.interwetten.com/de/payment/icon/\(i).svg"))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(16)
                }
                
                /*ForEach(urls, id: \.self) { item in
                    WebImage(url: URL(string: "https://appapi.interwetten.com/de/payment/icon/\(item).svg"))
                        //item))
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(16)
                }*/
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ContentView()
}
