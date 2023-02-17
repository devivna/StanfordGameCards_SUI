//
//  StanfordGameCardsApp.swift
//  StanfordGameCards
//
//  Created by Students on 07.02.2023.
//

import SwiftUI

@main
struct StanfordGameCardsApp: App {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ViewModel())
        }
    }
}
