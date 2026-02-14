import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Base", systemImage: "map") {
                BaseTabView()
            }

            Tab("Onboarding", systemImage: "person.badge.plus") {
                OnboardingTabView()
            }

            Tab("Auth", systemImage: "lock") {
                AuthRootView()
            }
        }
    }
}

#Preview {
    ContentView()
}
