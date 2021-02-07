import UIKit

final class RedModuleFactory: ModuleFactory {
    
}

extension RedModuleFactory: RedModuleFactoryProtocol {
    func view() throws -> UIView {
        
        let view = UIView()
        view.backgroundColor = .red
        
        return view
    }
}
