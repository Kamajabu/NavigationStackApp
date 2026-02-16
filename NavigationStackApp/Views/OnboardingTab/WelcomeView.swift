import SwiftUI

struct WelcomeView: View {
    @Environment(OnboardingCoordinator.self) private var coordinator

    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "hand.wave.fill")
                .font(.system(size: 60))
                .foregroundStyle(.blue)
            Text("Welcome!")
                .font(.largeTitle.bold())
            Text("Let's get you set up.")
                .foregroundStyle(.secondary)
            Button("Get Started") {
                coordinator.advance(from: .welcome)
            }
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle("Welcome")
    }
}
