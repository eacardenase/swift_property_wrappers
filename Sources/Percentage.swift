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
            storage = newValue
        }
        get {
            return storage.clamped(to: 0...upperBound)
        }
    }
    
    public var projectedValue: Double {
        get {
            return storage
        }
    }
    
    public init(wrappedValue: Double, upperBound: Double = 1) {
        self.upperBound = upperBound
        storage = wrappedValue
    }
}
