//
//  MyFramework.swift
//  MyFramework
//
//  Created by Roberto Pastor on 5/2/23.
//

import Foundation
import ComposableArchitecture

public final class MyFramework {
    
    static var dependenciesProvider: DependencyProvider!
    
    public init(with provider: DependencyProvider) {
        Self.dependenciesProvider = provider
    }
}

extension MyFramework {
    public struct DependencyProvider {
        let returnValue: String
        
        public init(
            returnValue: String
        ) {
            self.returnValue = returnValue
        }
    }
}

extension MyFramework {
    enum MyUseCaseKey: DependencyKey {
        static var liveValue: MyUseCaseProtocol {
            MyUseCaseLive(returnValue: dependenciesProvider.returnValue)
        }
    }
}

extension DependencyValues {
    public var myUseCase: MyUseCaseProtocol {
        get { self[MyFramework.MyUseCaseKey.self] }
        set { self[MyFramework.MyUseCaseKey.self] = newValue }
    }
}
