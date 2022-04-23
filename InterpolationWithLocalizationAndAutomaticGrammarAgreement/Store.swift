//
//  Store.swift
//  InterpolationWithLocalizationAndAutomaticGrammarAgreement
//
//  Created by Gene Bogdanovich on 23.04.22.
//

import StoreKit

class Store: ObservableObject {
    @Published private(set) var product: Product?
    
    init() {
        Task {
            do {
                try await requestProduct()
            } catch {
                fatalError()
            }
        }
    }
    
    @MainActor
    func requestProduct() async throws {
        product = try await Product.products(for: ["com.subscription.id"]).first
    }
}
