//
//  ViewController.swift
//  App03
//
//  Created by Eddy R on 17/07/2021.
//

import UIKit

class ViewController: UIViewController {
    // Private
    @IBOutlet private weak var pictureUIButton: UIButton!
    @IBOutlet private weak var pictureUIImageView: UIImageView!

    // MARK: - access to public
    var pictureButton: UIButton {
        pictureUIButton
    }

    var pictureImageView: UIImageView {
        self.pictureUIImageView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func addPicture(_ sender: UIButton) {
        print("   ♡♥︎♡♥︎ ░█🌟 Add Picture 🥎█░ [ \(type(of: self)) L\(#line) ]")
    }
}
