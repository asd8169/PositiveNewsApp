import SwiftUI

struct SomeView: View {
    @StateObject var viewModel = SomeViewModel()

    var body: some View {
        Text(viewModel.someData)
            .padding()
    }
}
