import Foundation
import RxSwift

protocol PremiumServiceProtocol:
    PremiumStatusProvider,
    PremiumSubscriptionProvider
{
    var isPremium: Bool { get }
    func subscribeSingle(forDuration: Int) throws -> Single<Bool>
    func unsubscribeSingle() throws -> Single<Bool>
}
