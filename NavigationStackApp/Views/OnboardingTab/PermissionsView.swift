import SwiftUI

struct PermissionsView: View {
    @Environment(OnboardingCoordinator.self) private var coordinator

    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "lock.shield.fill")
                .font(.system(size: 60))
                .foregroundStyle(.green)
            Text("Permissions")
                .font(.largeTitle.bold())
            Text("We need a few permissions to continue.")
                .foregroundStyle(.secondary)
            Button("Grant Permissions") {
                coordinator.advance(from: .permissions)
            }
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle("Permissions")
    }
}
