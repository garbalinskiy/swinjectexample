import Foundation
import RxSwift

final class SocialService {
    private let networkService: NetworkServiceProtocol
    
    init(networkService: NetworkServiceProtocol) {
        self.networkService = networkService
    }
}

extension SocialService: SocialServiceProtocol {
    var topicsSingle: Single<[String]> {
        .just(["Topic 1", "Topic 2"])
    }
    
    func likeCompletable(topic: String) -> Completable {
        .empty()
    }
    
    func unlikeCompletable(topic: String) -> Completable {
        .empty()
    }
    
    func likesSingle(byTopic: String) -> Single<Int> {
        return .just(Int.random(in: 0...10))
    }
}
