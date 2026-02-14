import SwiftUI

// Blog Pattern 3: ContentView with NavigationStack
struct BaseTabView: View {
    @State private var coordinator = AppCoordinator()

    var body: some View {
        NavigationStack(path: $coordinator.path) {
            RootView()
                .navigationDestination(for: Route.self) { route in
                    destinationView(for: route)
                }
        }
        .environment(coordinator)
    }

    @ViewBuilder
    private func destinationView(for route: Route) -> some View {
        switch route {
        case .detail(let item):
            DetailView(item: item)
        case .settings:
            SettingsView()
        case .profile(let user):
            ProfileView(user: user)
        case .nested(let nestedRoute):
            NestedView(route: nestedRoute)
        }
    }
}
