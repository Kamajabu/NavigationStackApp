import SwiftUI

// Blog Pattern 8: RootView with Auth Stack Switching
// (Renamed to AuthRootView to avoid conflict with MainTab's RootView)
struct AuthRootView: View {
    @State private var coordinator = AuthCoordinator()

    var body: some View {
        Group {
            if coordinator.isAuthenticated {
                NavigationStack(path: $coordinator.mainPath) {
                    MainView()
                        .navigationDestination(for: MainRoute.self) { route in
                            mainDestination(for: route)
                        }
                }
            } else {
                NavigationStack(path: $coordinator.authPath) {
                    LoginView()
                        .navigationDestination(for: AuthRoute.self) { route in
                            authDestination(for: route)
                        }
                }
            }
        }
        .environment(coordinator)
    }

    @ViewBuilder
    private func mainDestination(for route: MainRoute) -> some View {
        switch route {
        case .dashboard:
            Text("Dashboard")
                .font(.largeTitle)
                .navigationTitle("Dashboard")
        case .profile:
            Text("Profile")
                .font(.largeTitle)
                .navigationTitle("Profile")
        case .settings:
            Text("Settings")
                .font(.largeTitle)
                .navigationTitle("Settings")
        }
    }

    @ViewBuilder
    private func authDestination(for route: AuthRoute) -> some View {
        switch route {
        case .login:
            LoginView()
        case .signup:
            SignUpView()
        case .forgotPassword:
            ForgotPasswordView()
        }
    }
}
