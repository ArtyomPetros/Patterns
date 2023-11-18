//
//  ViewController.swift
//  MVVM
//
//  Created by Артём Петросян on 18.11.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private var flashButton: UIButton!
    @IBOutlet private var livePhotoButton: UIButton!
    
    var viewModel: CameraViewModelProtocol = CameraViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureFlashButton()
        configureLiviPhotoButton()
    }
    
    @IBAction func didTapFlashButton() {
        viewModel.isFlashEnabled = !viewModel.isFlashEnabled
        configureFlashButton()
    }
    
    @IBAction func didTapLivePhotoButton() {
        viewModel.isLivePhotoEnabled = !viewModel.isLivePhotoEnabled
        configureLiviPhotoButton()
    }
    
    private func configureFlashButton() {
        let systemName = viewModel.isFlashEnabled ? "lightbulb" : "lightbulb.slash"
        flashButton.setImage(UIImage(systemName: systemName), for: .normal)
    }
    
    private func configureLiviPhotoButton() {
        let systemName = viewModel.isLivePhotoEnabled ? "livephoto" : "livephoto.slash"
        livePhotoButton.setImage(UIImage(systemName: systemName), for: .normal)
    }
}

