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
    func test_pictureImageView_notNil() throws {
        // given
        let picture00: UIImage? = try XCTUnwrap(UIImage(systemName: "heart.fill"), "it is optionnal")
        let picture01: UIImage? = try XCTUnwrap(UIImage(named: "picture01"), "picture01 is optinnal")
        // picture01 = nil

        // when
        sut.imagePickerController(sut.imagePickerController, didFinishPickingMediaWithInfo: [.originalImage: picture01 as Any])

        // then
        XCTAssertNotNil(sut.pictureImageView.image)
        XCTAssertEqual(sut.pictureImageView.image, picture01)
        XCTAssertNotEqual(sut.pictureImageView.image, picture00)
    }
}
