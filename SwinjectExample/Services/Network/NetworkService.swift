import Foundation
import RxSwift

final class NetworkService {
    // Here is some impl logic
}

extension NetworkService: NetworkServiceProtocol {
    
    var isOnlineObservable: Observable<Bool> {
        return .just(true)
    }
    
    func responseSingle(for request: Request) throws -> Single<Response> {
        return .just("Response")
    }
}
