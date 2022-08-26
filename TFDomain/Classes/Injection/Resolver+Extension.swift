//
//  Resolver+Extension.swift
//  TFDomain
//
//  Created by Jeroen Bakker on 11/03/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Resolver

// swiftlint:disable large_tuple
public extension Resolver {
    
    private func r<T>() -> T {
        return resolve()
    }
    
    @discardableResult
    func register<Service>(_ service: Service.Type, _ initializer: @escaping () -> Service) -> ResolverOptions<Service> {
        return register { initializer() as Service }
    }
    
    @discardableResult
    func register<Service, A>(_ service: Service.Type, _ initializer: @escaping (A) -> Service) -> ResolverOptions<Service> {
        return register {
            return initializer(self.r()) as Service
        }
    }
    
    @discardableResult
    func register<Service, A, B>(_ service: Service.Type, _ initializer: @escaping ((A, B)) -> Service) -> ResolverOptions<Service> {
        return register {
            return initializer((self.r(), self.r())) as Service
        }
    }
    
    @discardableResult
    func register<Service, A, B, C>(_ service: Service.Type, _ initializer: @escaping ((A, B, C)) -> Service) -> ResolverOptions<Service> {
        return register {
            return initializer((self.r(), self.r(), self.r())) as Service
        }
    }
    
    @discardableResult
    func register<Service, A, B, C, D>(_ service: Service.Type, _ initializer: @escaping ((A, B, C, D)) -> Service) -> ResolverOptions<Service> {
        return register {
            return initializer((self.r(), self.r(), self.r(), self.r())) as Service
        }
    }
    
    @discardableResult
    func register<Service, A, B, C, D, E>(_ service: Service.Type, _ initializer: @escaping ((A, B, C, D, E)) -> Service) -> ResolverOptions<Service> {
        return register {
            return initializer((self.r(), self.r(), self.r(), self.r(), self.r())) as Service
        }
    }
    
    @discardableResult
    func register<Service, A, B, C, D, E, F>(_ service: Service.Type, _ initializer: @escaping ((A, B, C, D, E, F)) -> Service) -> ResolverOptions<Service> {
        return register {
            return initializer((self.r(), self.r(), self.r(), self.r(), self.r(), self.r())) as Service
        }
    }
    
    @discardableResult
    func register<Service, A, B, C, D, E, F, G>(_ service: Service.Type, _ initializer: @escaping ((A, B, C, D, E, F, G)) -> Service) -> ResolverOptions<Service> {
        return register {
            return initializer((self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r())) as Service
        }
    }
    
    @discardableResult
    func register<Service, A, B, C, D, E, F, G, H>(_ service: Service.Type, _ initializer: @escaping ((A, B, C, D, E, F, G, H)) -> Service) -> ResolverOptions<Service> {
        return register {
            return initializer((self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r())) as Service
        }
    }
    
    @discardableResult
    func register<Service, A, B, C, D, E, F, G, H, I>(_ service: Service.Type, _ initializer: @escaping ((A, B, C, D, E, F, G, H, I)) -> Service) -> ResolverOptions<Service> {
        return register {
            return initializer((self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r())) as Service
        }
    }
    
    @discardableResult
    func register<Service, A, B, C, D, E, F, G, H, I, J>(_ service: Service.Type, _ initializer: @escaping ((A, B, C, D, E, F, G, H, I, J)) -> Service) -> ResolverOptions<Service> {
        return register {
            return initializer((self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r())) as Service
        }
    }
    
    @discardableResult
    func register<Service, A, B, C, D, E, F, G, H, I, J, K>(_ service: Service.Type, _ initializer: @escaping ((A, B, C, D, E, F, G, H, I, J, K)) -> Service) -> ResolverOptions<Service> {
        return register {
            return initializer((self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r())) as Service
        }
    }
    
    @discardableResult
    func register<Service, A, B, C, D, E, F, G, H, I, J, K, L>(_ service: Service.Type, _ initializer: @escaping ((A, B, C, D, E, F, G, H, I, J, K, L)) -> Service) -> ResolverOptions<Service> {
        return register {
            return initializer((self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r())) as Service
        }
    }
    
    @discardableResult
    func register<Service, A, B, C, D, E, F, G, H, I, J, K, L, M>(_ service: Service.Type, _ initializer: @escaping ((A, B, C, D, E, F, G, H, I, J, K, L, M)) -> Service) -> ResolverOptions<Service> {
        return register {
            return initializer((self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r())) as Service
        }
    }
    
    @discardableResult
    func register<Service, A, B, C, D, E, F, G, H, I, J, K, L, M, N>(_ service: Service.Type, _ initializer: @escaping ((A, B, C, D, E, F, G, H, I, J, K, L, M, N)) -> Service) -> ResolverOptions<Service> {
        return register {
            return initializer((self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r())) as Service
        }
    }
    
    @discardableResult
    func register<Service, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O>(_ service: Service.Type, _ initializer: @escaping ((A, B, C, D, E, F, G, H, I, J, K, L, M, N, O)) -> Service) -> ResolverOptions<Service> {
        return register {
            return initializer((self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r())) as Service
        }
    }
    
    @discardableResult
    func register<Service, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P>(_ service: Service.Type, _ initializer: @escaping ((A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P)) -> Service) -> ResolverOptions<Service> {
        return register {
            return initializer((self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r())) as Service
        }
    }
    
    @discardableResult
    func register<Service, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q>(_ service: Service.Type, _ initializer: @escaping ((A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q)) -> Service) -> ResolverOptions<Service> {
        return register {
            return initializer((self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r())) as Service
        }
    }
    
    @discardableResult
    func register<Service, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R>(_ service: Service.Type, _ initializer: @escaping ((A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R)) -> Service) -> ResolverOptions<Service> {
        return register {
            return initializer((self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r())) as Service
        }
    }
    
    @discardableResult
    func register<Service, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S>(_ service: Service.Type, _ initializer: @escaping ((A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S)) -> Service) -> ResolverOptions<Service> {
        return register {
            return initializer((self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r())) as Service
        }
    }
    
    @discardableResult
    func register<Service, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T>(_ service: Service.Type, _ initializer: @escaping ((A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T)) -> Service) -> ResolverOptions<Service> {
        return register {
            return initializer((self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r(), self.r())) as Service
        }
    }
}
