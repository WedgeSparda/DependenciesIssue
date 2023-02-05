//
//  MyReducer.swift
//  MyFramework
//
//  Created by Roberto Pastor on 5/2/23.
//

import Foundation
import ComposableArchitecture

struct MyReducer: ReducerProtocol {
    
    @Dependency(\.myUseCase) var myUseCase
    
    struct State: Equatable {
        var result: String = ""
    }
    
    enum Action {
        case doSomething
    }
    
    func reduce(
        into state: inout State,
        action: Action
    ) -> EffectTask<Action> {
        switch action {
        case .doSomething:
            state.result = myUseCase.doSomething()
            return .none
        }
    }
}
