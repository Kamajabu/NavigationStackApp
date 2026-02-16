import SwiftUI

struct PreferencesView: View {
    @Environment(OnboardingCoordinator.self) private var coordinator

    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "slider.horizontal.3")
                .font(.system(size: 60))
                .foregroundStyle(.orange)
            Text("Preferences")
                .font(.largeTitle.bold())
            Text("Customize your experience.")
                .foregroundStyle(.secondary)
            Button("Finish Setup") {
                coordinator.advance(from: .preferences)
            }
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle("Preferences")
    }
}
