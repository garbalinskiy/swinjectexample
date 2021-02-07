import UIKit

final class GreenModuleFactory: ModuleFactory {
    
}

extension GreenModuleFactory: GreenModuleFactoryProtocol {
    func view() throws -> UIView {
        
        let view = UIView()
        view.backgroundColor = .green
        
        return view
    }
}
