import XCTest
@testable import TDDMultipleExpectations

class TDDMultipleExpectationsTest: XCTestCase {

    internal var alertMgr: AlertMgr!

// MARK: _©Test XCTestCase
    /**©-----------------------©*/
    override func setUp() {
        // Will run depending on how many test functions there are. 🤔
        printf("Created ()--> running func test")
        super.setUp()
        // Initializing our object
        self.alertMgr = AlertMgr()
    }

    override func tearDown() {
        // Will run depending on how many test functions there are. 🤔
        printf("Destroyed ()--> running func test")
        self.alertMgr = nil
        super.tearDown()
        print("")
    }

    /**©-----------------------©*/

    func test_generateTwoNotifications() {
        // We are testing if we use the post alert
        // two times, we should get two notifications
        let exp = expectation(forNotification: Notification.Name.alertNotification, object: alertMgr, handler: nil)

        // This means this expectation to pass the test, must be fulfilled 2 times
        exp.expectedFulfillmentCount = 2
        // Will post the the notification * 2
        alertMgr.postAlert()
        alertMgr.postAlert()

        // calling wait so that we wait for our expectation to be fulfilled
        wait(for: [exp], timeout: 2.0)
        printf("TESTING: test_generateTwoNotifications()")
    }
}// END OF TEST-CLASS
