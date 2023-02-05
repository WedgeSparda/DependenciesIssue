//
//  MyComponentUseCaseMock.swift
//  DependenciesIssueTests
//
//  Created by Roberto Pastor on 5/2/23.
//

import Foundation
import MyFramework

struct MyUseCaseMock: MyUseCaseProtocol {
    func doSomething() -> String {
        "Executed MOCK Use Case"
    }
}
