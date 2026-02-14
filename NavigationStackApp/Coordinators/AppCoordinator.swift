import SwiftUI

// Blog Pattern 1: Basic AppCoordinator
@Observable
class AppCoordinator {
    // The itinerary - every screen the user has visited
    var path: [Route] = []

    func navigate(to route: Route) {
        path.append(route)
    }

    // Take everyone back to the lobby
    func popToRoot() {
        path.removeAll()
    }
}

// Blog Pattern 4: Deep Linking
extension AppCoordinator {
    func handle(url: URL) {
        guard url.scheme == "myapp" else { return }

        // Build the itinerary from the URL
        switch url.host {
        case "item":
            if let id = url.pathComponents.last,
               let item = fetchItem(id: id) {
                path = [.detail(item)]
            }
        case "settings":
            path = [.settings]
        default:
            break
        }
    }

    private func fetchItem(id: String) -> Item? {
        // Stub: In a real app this would fetch from a data store
        Item(id: id, name: "Item \(id)")
    }
}
