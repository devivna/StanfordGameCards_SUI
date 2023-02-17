//
//  ViewModel.swift
//  StanfordGameCards
//
//  Created by Students on 07.02.2023.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var images : [Model] = []
    
    init() {
        var names = ["car", "carrot", "simcard", "train.side.rear.car", "binoculars", "xmark.bin", "eraser", "pencil.tip", "folder", "paperplane", "note.text", "book", "backpack", "paperclip", "person.fill", "figure.arms.open", "soccerball", "baseball", "volleyball", "globe"]
        
        names.forEach { images.append(Model(name: $0)) }
    }
}
