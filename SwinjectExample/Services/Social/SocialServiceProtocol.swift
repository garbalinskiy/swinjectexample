import Foundation
import RxSwift

protocol SocialServiceProtocol:
    SocialTopicsProvider,
    SocialLikesProvider
{
    var topicsSingle: Single<[String]> { get }
    func likeCompletable(topic: String) -> Completable
    func unlikeCompletable(topic: String) -> Completable
    func likesSingle(byTopic: String) -> Single<Int>
}
