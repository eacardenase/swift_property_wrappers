//
//  Percentage.swift
//  
//
//  Created by Edwin Cardenas on 5/14/25.
//

import Foundation

@propertyWrapper public struct Percentage {
    private var storage: Double
    private var upperBound: Double
    
    public var wrappedValue: Double {
        set {
            storage = max(min(newValue, upperBound), 0)
        }
        get {
            return storage
        }
    }
    
    public init(wrappedValue: Double, upperBound: Double = 1) {
        self.upperBound = upperBound
        storage = max(min(wrappedValue, self.upperBound), 0)
    }
}
