import SwiftUI

// Blog Pattern 7: AuthCoordinator
@Observable
class AuthCoordinator {
    var isAuthenticated = false
    var mainPath: [MainRoute] = []
    var authPath: [AuthRoute] = []

    // End the tour, send everyone home
    func logout() {
        isAuthenticated = false
        mainPath.removeAll()
        authPath.removeAll()
    }

    func login() {
        isAuthenticated = true
        authPath.removeAll()
    }
}
