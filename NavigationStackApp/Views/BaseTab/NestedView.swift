import SwiftUI

struct NestedView: View {
    @Environment(AppCoordinator.self) private var coordinator
    let route: NestedRoute

    var body: some View {
        VStack(spacing: 16) {
            switch route {
            case .levelOne:
                Text("Nested Level One")
                    .font(.headline)
                Button("Go to Level Two") {
                    coordinator.navigate(to: .nested(.levelTwo("Hello from level 2")))
                }
            case .levelTwo(let message):
                Text("Nested Level Two")
                    .font(.headline)
                Text(message)
                    .foregroundStyle(.secondary)
                Button("Pop to Root") {
                    coordinator.popToRoot()
                }
            }
        }
        .navigationTitle("Nested")
    }
}
