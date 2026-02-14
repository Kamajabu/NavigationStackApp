import SwiftUI

// Wrapper that hosts the OnboardingFlow and allows re-triggering it
struct OnboardingTabView: View {
    @State private var showOnboarding = false

    var body: some View {
        VStack(spacing: 24) {
            Text("Onboarding Demo")
                .font(.largeTitle.bold())
            Text("Demonstrates the OnboardingCoordinator pattern\nwith advance() state machine.")
                .multilineTextAlignment(.center)
                .foregroundStyle(.secondary)
            Button("Start Onboarding") {
                showOnboarding = true
            }
            .buttonStyle(.borderedProminent)
        }
        .sheet(isPresented: $showOnboarding) {
            OnboardingFlow()
        }
    }
}

// Blog Pattern 6: OnboardingFlow view
struct OnboardingFlow: View {
    @State private var coordinator = OnboardingCoordinator()
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack(path: $coordinator.path) {
            WelcomeView()
                .navigationDestination(for: OnboardingCoordinator.Step.self) { step in
                    destinationView(for: step)
                }
        }
        .environment(coordinator)
        .onChange(of: coordinator.isCompleted) { _, completed in
            if completed { dismiss() }
        }
        .onAppear {
            // The blog starts the flow by calling advance() to push .welcome,
            // but WelcomeView is already the root. So .welcome shows inline
            // and advance() from WelcomeView pushes .permissions.
        }
    }

    @ViewBuilder
    private func destinationView(for step: OnboardingCoordinator.Step) -> some View {
        switch step {
        case .welcome:
            WelcomeView()
        case .permissions:
            PermissionsView()
        case .preferences:
            PreferencesView()
        }
    }
}
