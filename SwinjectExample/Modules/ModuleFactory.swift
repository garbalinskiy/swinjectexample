import Foundation
import Swinject

class ModuleFactory {
    let container: Container
    
    init(container parentContainer: Container) {
        self.container = Container(parent: parentContainer)
    }
}
