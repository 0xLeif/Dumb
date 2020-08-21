import XCTest
@testable import Dumb

final class DumbTests: XCTestCase {
    func testExample() {
        var dumb = DumbStruct()
        
        XCTAssert(dumb.double <= 100)
        
        dumb.double = 100.1
        
        XCTAssert(dumb.double > 100)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
