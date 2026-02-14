import SwiftUI

struct RootView: View {
    @Environment(AppCoordinator.self) private var coordinator

    private let sampleItems = [
        Item(id: "1", name: "First Item"),
        Item(id: "2", name: "Second Item"),
        Item(id: "3", name: "Third Item"),
    ]

    private let sampleUser = User(id: "u1", name: "John Doe")

    var body: some View {
        List {
            Section("Items") {
                ForEach(sampleItems) { item in
                    Button(item.name) {
                        coordinator.navigate(to: .detail(item))
                    }
                }
            }

            Section("Navigation") {
                Button("Settings") {
                    coordinator.navigate(to: .settings)
                }
                Button("Profile") {
                    coordinator.navigate(to: .profile(sampleUser))
                }
                Button("Nested Flow") {
                    coordinator.navigate(to: .nested(.levelOne))
                }
            }

            Section("Deep Link Test") {
                Button("Simulate myapp://item/42") {
                    coordinator.handle(url: URL(string: "myapp://item/42")!)
                }
                Button("Simulate myapp://settings") {
                    coordinator.handle(url: URL(string: "myapp://settings")!)
                }
            }
        }
        .navigationTitle("Main Coordinator")
    }
}
