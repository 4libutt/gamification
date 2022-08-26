import XCTest
@testable import pokemon

final class PokemonTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(pokemon().text, "Hello, World!")
    }
}
