//
//  WelcomePresenter.swift
//  VIPER
//
//  Created by Артём Петросян on 19.11.2023.
//

import Foundation

protocol WelcomePresenterProtocol: AnyObject{
    func viewDidLoaded()
    func didLoad(date: String?)
    func didLoad(weather: Int?)
}

class WelcomePresenter{
    weak var view: WelcomeViewProtocol?
    var roouter: WelcomeRouterProtocol
    var interactor: WelcomeInteractorProtocol
    
    init(roouter: WelcomeRouterProtocol, interactor: WelcomeInteractorProtocol) {
        self.roouter = roouter
        self.interactor = interactor
    }
}

extension WelcomePresenter: WelcomePresenterProtocol{
    func didLoad(date: String?) {
        view?.showDate(date: date ?? "No date today")
    }
    
    func didLoad(weather: Int?) {
        let temperature = weather?.description ?? "No temperature"
        view?.showWeather(weather: temperature)
    }
    
    func viewDidLoaded() {
        interactor.loadDate()
        interactor.loadWeather()
    }
    
    
}
