//
//  GhaziShubayli_Lab0ImageViewUITestsLaunchTests.swift
//  GhaziShubayli_Lab0ImageViewUITests
//
//  Created by ماك بوك on 15/03/1443 AH.
//

import XCTest

class GhaziShubayli_Lab0ImageViewUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
