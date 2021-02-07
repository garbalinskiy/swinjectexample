import Foundation

final class RemoteConfig {
    // Here is some imlp logic
}

extension RemoteConfig: RemoteConfigProtocol {
    var activeScreen: ActiveScreen {
        .red
    }
}
