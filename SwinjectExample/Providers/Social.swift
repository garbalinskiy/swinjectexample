import Foundation
import RxSwift

protocol SocialTopicsProvider {
    var topicsSingle: Single<[String]>  { get }
}

protocol SocialLikesProvider {
    func likeCompletable(topic: String) -> Completable
    func unlikeCompletable(topic: String) -> Completable
    func likesSingle(byTopic: String) -> Single<Int>
}
