import XCTest
@testable import CampingFinlandSharedModels

final class CampingFinlandSharedModelsTests: XCTestCase {
  func testFeedbackMessage() {
    let message = FeedbackMessage(id: 1, text: "testi", email: "tommi@caravanstudio.fi")
    XCTAssertEqual(message.id, 1)
    XCTAssertEqual(message.text, "testi")
    XCTAssertEqual(message.email, "tommi@caravanstudio.fi")
    
    let anotherMessage = FeedbackMessage(id: nil, text: "testi2", email: nil)
    XCTAssertNil(anotherMessage.id)
    XCTAssertEqual(anotherMessage.text, "testi2")
    XCTAssertNil(anotherMessage.email)
  }
  
  static var allTests = [
    ("testFeedbackMessage", testFeedbackMessage),
  ]
}
