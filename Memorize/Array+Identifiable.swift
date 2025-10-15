//
//  Array+Identifiable.swift
//  Memorize
//
//  Created by Maria Clara Dias on 15/10/25.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
