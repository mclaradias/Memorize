//
//  Array+Only.swift
//  Memorize
//
//  Created by Maria Clara Dias on 15/10/25.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
