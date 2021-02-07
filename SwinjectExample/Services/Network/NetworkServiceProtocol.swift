import Foundation
import RxSwift

protocol NetworkServiceProtocol {
    
    typealias Response = String
    typealias Request = String
    
    var isOnlineObservable: Observable<Bool> { get }
    func responseSingle(for request: String) throws -> Single<String>
}
