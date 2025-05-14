//
//  FloatingPoint+Clamped.swift
//  
//
//  Created by Edwin Cardenas on 5/14/25.
//

import Foundation

extension FloatingPoint {
    func clamped(to range: ClosedRange<Self>) -> Self {
        return max(min(self, range.upperBound), 0)
    }
}

let test = 0.0...1.0
