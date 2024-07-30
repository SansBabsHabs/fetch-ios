//
//  JsonUtil.swift
//  Fetch iOS
//
//  Created by Babajide Sanusi on 7/25/24.
//

import Foundation

class JsonUtil {
    
    ///A static function to decode JSON data
    /// throws 'error' if data is invalid
    static func load<T:Decodable>(data: Data) throws -> T {
        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            throw error
        }
    }
}
