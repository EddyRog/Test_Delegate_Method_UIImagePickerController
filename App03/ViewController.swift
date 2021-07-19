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

    // MARK: - ACCESS TO PUBLIC
    var pictureButton: UIButton {
        pictureUIButton
    }
    var pictureImageView: UIImageView {
        self.pictureUIImageView
    }
    var imagePickerController = UIImagePickerController()
    var capturedImages = [UIImage]()

    // MARK: - METHODS
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setImagePickerController()
        actionPresentPictures()
    }
    @IBAction func addPicture(_ sender: UIButton) {
        print("   ♡♥︎♡♥︎ ░█🌟 Add Picture 🥎█░ [ \(type(of: self)) L\(#line) ]")
        actionPresentPictures()
    }
    func finishAndUpdate() {
        dismiss(animated: true) { [weak self] in
            guard let this = self else { return }
            //  one picture is picked
            if !this.capturedImages.isEmpty {
                if this.capturedImages.count == 1 {
                    this.pictureImageView.image = this.capturedImages[0]
                }
            }

            // can add new picture
            this.capturedImages.removeAll()
            this.pictureButton.isHidden = false
        }
    }
}
extension ViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    // setting
    func setImagePickerController() {
        self.imagePickerController.delegate = self
        self.imagePickerController.sourceType = .photoLibrary
    }
    func actionPresentPictures() {
        self.pictureButton.isHidden = true
        self.present(imagePickerController, animated: true, completion: nil)
    }
    // delegate methods
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
        if let image = info[.originalImage] as? UIImage {
            capturedImages.append(image)
            finishAndUpdate()
        }
    }
}
