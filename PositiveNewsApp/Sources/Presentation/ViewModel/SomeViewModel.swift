import Foundation
import Combine

class SomeViewModel: ObservableObject {
    @Published public var someData: String
    
    public init() {
        self.someData = "Hello, Positive News!"
    }
}
