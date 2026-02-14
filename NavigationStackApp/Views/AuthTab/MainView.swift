import SwiftUI

struct MainView: View {
    @Environment(AuthCoordinator.self) private var coordinator

    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "checkmark.circle.fill")
                .font(.system(size: 60))
                .foregroundStyle(.green)
            Text("Authenticated!")
                .font(.largeTitle.bold())
            Text("You are logged in.")
                .foregroundStyle(.secondary)

            NavigationLink("Dashboard", value: MainRoute.dashboard)
            NavigationLink("Profile", value: MainRoute.profile)
            NavigationLink("Settings", value: MainRoute.settings)

            Button("Log Out", role: .destructive) {
                coordinator.logout()
            }
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle("Home")
    }
}
