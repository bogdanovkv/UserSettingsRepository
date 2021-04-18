import XCTest
@testable import UserSettingsRepository

final class UserSettingsRepositoryTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(UserSettingsRepository().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
