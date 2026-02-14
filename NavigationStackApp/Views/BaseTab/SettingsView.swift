import SwiftUI

struct SettingsView: View {
    @Environment(AppCoordinator.self) private var coordinator

    var body: some View {
        List {
            Section {
                Text("Settings page stub")
            }
            Section {
                Button("Pop to Root") {
                    coordinator.popToRoot()
                }
            }
        }
        .navigationTitle("Settings")
    }
}
