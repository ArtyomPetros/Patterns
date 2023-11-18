//
//  CameraViewModelProtocol.swift
//  MVVM
//
//  Created by Артём Петросян on 18.11.2023.
//
import UIKit
protocol CameraViewModelProtocol{
    var isFlashEnabled: Bool {get set}
    var isLivePhotoEnabled: Bool {get set}
    var isWideScreenAvailable: Bool {get}
    var isWideScreenEnabled: Bool {get set}
    var isCameraFlipAvailable: Bool {get}
    
    func getAvailableCameraModes () -> [CameraMode]
    func getRecentImage() -> UIImage?
}
