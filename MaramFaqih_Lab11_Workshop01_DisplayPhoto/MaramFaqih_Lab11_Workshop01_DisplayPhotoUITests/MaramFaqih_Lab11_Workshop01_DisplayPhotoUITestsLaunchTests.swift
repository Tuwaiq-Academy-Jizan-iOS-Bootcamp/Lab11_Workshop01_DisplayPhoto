//
//  MaramFaqih_Lab11_Workshop01_DisplayPhotoUITestsLaunchTests.swift
//  MaramFaqih_Lab11_Workshop01_DisplayPhotoUITests
//
//  Created by meme f on 14/03/1443 AH.
//

import XCTest

class MaramFaqih_Lab11_Workshop01_DisplayPhotoUITestsLaunchTests: XCTestCase {

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
