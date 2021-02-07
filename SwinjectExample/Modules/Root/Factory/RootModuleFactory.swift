import UIKit

final class RootModuleFactory: ModuleFactory {
    
}

extension RootModuleFactory: RootModuleFactoryProtocol {
    func view() throws -> UIView {
        
        let view = UIView()
        
        guard let config = container.resolve(RemoteConfigProtocol.self) else {
            return view
        }
        
        let childView: UIView
        switch config.activeScreen {
        case .red:
            let factory = RedModuleFactory(container: container)
            childView = try factory.view()
        case .green:
            let factory = GreenModuleFactory(container: container)
            childView = try factory.view()
        }
        
        view.addSubview(childView)
        childView.translatesAutoresizingMaskIntoConstraints = false
        childView.frame = .init(x: 0, y: 0, width: 100, height: 100)
        
        return view
    }
}
