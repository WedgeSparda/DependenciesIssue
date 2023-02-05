//
//  DependenciesIssueTests.swift
//  DependenciesIssueTests
//
//  Created by Roberto Pastor on 5/2/23.
//

import XCTest
import ComposableArchitecture

@testable import DependenciesIssue
@testable import MyFramework

final class DependenciesIssueTests: XCTestCase {

    let useCaseMock = MyUseCaseMock()
   
    func testDoSomething() async {
        let store = TestStore(initialState: .init(), reducer: MyReducer())
        store.dependencies.myUseCase = MyUseCaseMock()
        
        await store.send(.doSomething)
    }

}
