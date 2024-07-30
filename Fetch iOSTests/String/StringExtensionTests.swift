//
//  StringExtensionTests.swift
//  Fetch iOSTests
//
//  Created by Babajide Sanusi on 7/29/24.
//

import XCTest
@testable import Fetch_iOS

final class StringExtensionTests: XCTestCase {
    func testIsNilOrEmptyWithNil() {
        XCTAssertTrue(String.isNilOrEmptyString(nil))
    }
    
    func testIsNilOrEmptyWithBlank() {
        XCTAssertTrue(String.isNilOrEmptyString(""))
    }
}
