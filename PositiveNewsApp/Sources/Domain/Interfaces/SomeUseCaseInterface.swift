import Foundation

public class SomeUseCaseImpl: SomeUseCase {
    public init() {}
    
    public func execute() -> SomeEntity {
        return SomeEntity(data: "Hello, Positive News!")
    }
}
