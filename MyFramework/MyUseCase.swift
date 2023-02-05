//
//  MyUseCase.swift
//  MyFramework
//
//  Created by Roberto Pastor on 5/2/23.
//

import Foundation

public protocol MyUseCaseProtocol {
    func doSomething() -> String
}

struct MyUseCaseLive: MyUseCaseProtocol {
    
    let returnValue: String
    
    func doSomething() -> String {
        "Executed LIVE Use Case: \(returnValue)"
    }
}
