import SwiftUI

struct SignUpView: View {
    @Environment(AuthCoordinator.self) private var coordinator

    var body: some View {
        VStack(spacing: 24) {
            Text("Sign Up")
                .font(.largeTitle.bold())
            Text("Create a new account")
                .foregroundStyle(.secondary)
            Button("Create Account & Log In") {
                coordinator.login()
            }
            .buttonStyle(.borderedProminent)
        }
        .navigationTitle("Sign Up")
    }
}
