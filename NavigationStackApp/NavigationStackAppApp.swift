import SwiftUI

@main
struct NavigationStackAppApp: App {
    @State private var coordinator = AppCoordinator()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .onOpenURL { url in
                    coordinator.handle(url: url)
                }
        }
    }
}
