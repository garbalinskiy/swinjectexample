import Foundation
import RxSwift

protocol PremiumStatusProvider {
    var isPremium: Bool { get }
}

protocol PremiumSubscriptionProvider {
    func subscribeSingle(forDuration: Int) throws -> Single<Bool>
    func unsubscribeSingle() throws -> Single<Bool>
}
