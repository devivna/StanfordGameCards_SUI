//
//  ContentView.swift
//  StanfordGameCards
//
//  Created by Students on 07.02.2023.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var vM: ViewModel
    
    var names = ["car", "carrot", "simcard", "train.side.rear.car", "binoculars", "xmark.bin", "eraser", "pencil.tip", "folder", "paperplane", "note.text", "book", "backpack", "paperclip", "person.fill", "figure.arms.open", "soccerball", "baseball", "volleyball", "globe"]
    
    let widthCard: CGFloat = 80
    
    @State private var countCards = 20 // images.count
    
    var body: some View {
        VStack {
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: widthCard))]) {
                ForEach(names[0..<countCards], id: \.self) { image in
                   CardView(imageName: image)
                }
            }
        }
        .padding()
    }
}

struct ImageButtonView: View {
    var name: String
    var body: some View {
        Image(systemName: name)
            .resizable()
            .scaledToFit()
            .frame(width: 40, height: 40)
    }
}


struct CardView: View {
    
    var imageName: String
    let heightCard: CGFloat = 100

    @State private var isOpen = true // ? State private

    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .scaledToFit()
            .frame(height: heightCard)
            .foregroundColor(.orange)
            .fontWeight(.light)
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 10)
                    .fill( isOpen ? .cyan.opacity(0.2) : .cyan.opacity(1))
            }
            .onTapGesture {
                isOpen.toggle()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
