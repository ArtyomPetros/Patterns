//
//  WelcomeModelBuilder.swift
//  VIPER
//
//  Created by Артём Петросян on 19.11.2023.
//

import UIKit

class WelcomeModelBuilder{
    static func build() -> ViewController{
        let interactor = WelcomeInteractor()
        let router = WelcomeRouter()
        let presenter = WelcomePresenter(roouter: router, interactor: interactor)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "Main") as! ViewController
        viewController.presenter = presenter
        presenter.view = viewController
        interactor.presenter = presenter
        router.presenter = presenter
        return viewController
    }
}
