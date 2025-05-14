//
//  Percentage.swift
//  
//
//  Created by Edwin Cardenas on 5/14/25.
//

import Foundation

@propertyWrapper public struct Percentage {
    private var storage: Double
    
    public var wrappedValue: Double {
        set {
            storage = max(min(newValue, 1), 0)
        }
        get {
            return storage
        }
    }
    
    public init(wrappedValue: Double) {
        storage = max(min(wrappedValue, 1), 0)
    }
}
