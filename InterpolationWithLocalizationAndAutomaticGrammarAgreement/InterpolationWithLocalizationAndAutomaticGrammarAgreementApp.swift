//
//  InterpolationWithLocalizationAndAutomaticGrammarAgreementApp.swift
//  InterpolationWithLocalizationAndAutomaticGrammarAgreement
//
//  Created by Gene Bogdanovich on 23.04.22.
//

import SwiftUI

@main
struct InterpolationWithLocalizationAndAutomaticGrammarAgreementApp: App {
    @StateObject private var store = Store()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
        }
    }
}
