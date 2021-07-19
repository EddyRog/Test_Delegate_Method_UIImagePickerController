//
//  ViewControllerTests.swift
//  App03Tests
//
//  Created by Eddy R on 17/07/2021.
//

import XCTest
@testable import App03

class ViewControllerTests: XCTestCase, UIImagePickerControllerDelegate {
    var sut: ViewController!

    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateInitialViewController() as? ViewController {
            _ = vc.view
            sut = vc
        }


    }
    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testTrue() {
        XCTAssertTrue(true)
    }
}
