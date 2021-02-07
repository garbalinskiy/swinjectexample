import Foundation
import RxSwift

final class PremiumService {
    private let networkService: NetworkServiceProtocol
    
    init(networkService: NetworkServiceProtocol) {
        self.networkService = networkService
    }
}

extension PremiumService: PremiumServiceProtocol {
    
    var isPremium: Bool {
        return true
    }
    
    func subscribeSingle(forDuration: Int) throws -> Single<Bool> {
        return .just(true)
    }
    
    func unsubscribeSingle() throws -> Single<Bool> {
        return .just(true)
    }
}
