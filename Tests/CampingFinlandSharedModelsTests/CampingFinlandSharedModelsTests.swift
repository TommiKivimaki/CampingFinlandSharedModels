import XCTest
@testable import CampingFinlandSharedModels

final class CampingFinlandSharedModelsTests: XCTestCase {
  func testFeedbackMessage() {
    let message = FeedbackMessage(id: 1, appName: "XCode", message: "test", email: "tommi@caravanstudio.fi")
    XCTAssertEqual(message.id, 1)
    XCTAssertEqual(message.message, "test")
    XCTAssertEqual(message.email, "tommi@caravanstudio.fi")
  }
  
  func testFeedbackMessageWithNils() {
    let anotherMessage = FeedbackMessage(id: nil, appName: "XCode", message: "test 2", email: nil)
    XCTAssertNil(anotherMessage.id)
    XCTAssertEqual(anotherMessage.appName, "XCode")
    XCTAssertEqual(anotherMessage.message, "test 2")
    XCTAssertNil(anotherMessage.email)
  }
  
  static var allTests = [
    ("testFeedbackMessage", testFeedbackMessage),
    ("testFeedbackMessageWithNils", testFeedbackMessageWithNils)
  ]
}
