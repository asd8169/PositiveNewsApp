import Foundation
import Domain

public class SomeMapper {
    public init() {}
    
    public func mapToEntity(data: String) -> SomeEntity {
        return SomeEntity(data: data)
    }
}
