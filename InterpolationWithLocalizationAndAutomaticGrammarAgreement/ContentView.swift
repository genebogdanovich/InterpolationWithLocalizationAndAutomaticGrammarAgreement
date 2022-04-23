//
//  ContentView.swift
//  InterpolationWithLocalizationAndAutomaticGrammarAgreement
//
//  Created by Gene Bogdanovich on 23.04.22.
//

import SwiftUI
import StoreKit

extension Product.SubscriptionPeriod {
    var duration: LocalizedStringKey {
        "^[\(value) \(unit.localizedDescription.lowercased())](inflect: true)"
    }
}

struct ContentView: View {
    @EnvironmentObject private var store: Store
    
    var body: some View {
        Form {
            if let product = store.product,
               let subscriptionDuration = product.subscription?.subscriptionPeriod.duration,
               let freeTrialDuration = product.subscription?.introductoryOffer?.period.duration {
                
                Text("\(freeTrialDuration) free, then \(product.displayPrice) per \(subscriptionDuration)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
