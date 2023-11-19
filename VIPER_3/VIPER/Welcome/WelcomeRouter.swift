//
//  WelcomeRouter.swift
//  VIPER
//
//  Created by Артём Петросян on 19.11.2023.
//

import Foundation

protocol WelcomeRouterProtocol: AnyObject{
    
}

class WelcomeRouter: WelcomeRouterProtocol{
    weak var presenter: WelcomePresenterProtocol?
}
