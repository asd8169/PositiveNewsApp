import Foundation
import Domain

class SomeRepository: SomeUseCase {
    public init() {}
     
     public func execute() -> SomeEntity {
         return SomeEntity(data: "Hello, Positive News from Repository!")
     }
}
