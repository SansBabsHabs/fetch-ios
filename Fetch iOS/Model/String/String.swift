//
//  String.swift
//  Fetch iOS
//
//  Created by Babajide Sanusi on 7/27/24.
//

import Foundation

/// An extension that checks if a given string is nil or empty.
extension String {
    /// A function to check if given string is nil or empty.
    static func isNilOrEmptyString(_ string: String?) -> Bool {
        (string ?? "").isEmpty
    }
}
