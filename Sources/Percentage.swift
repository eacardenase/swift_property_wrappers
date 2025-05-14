//
//  Percentage.swift
//  
//
//  Created by Edwin Cardenas on 5/14/25.
//

import Foundation

@propertyWrapper public struct Percentage<T> where T: FloatingPoint {
    private var storage: T
    private var upperBound: T
    
    public var wrappedValue: T {
        set {
            storage = newValue
        }
        get {
            return storage.clamped(to: 0...upperBound)
        }
    }
    
    public var projectedValue: T {
        get {
            return storage
        }
    }
    
    public init(wrappedValue: T, upperBound: T = 1) {
        self.upperBound = upperBound
        storage = wrappedValue
    }
}
