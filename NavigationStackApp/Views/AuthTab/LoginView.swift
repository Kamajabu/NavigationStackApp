import SwiftUI

struct LoginView: View {
    @Environment(AuthCoordinator.self) private var coordinator

    var body: some View {
        VStack(spacing: 24) {
            Image(systemName: "person.circle.fill")
                .font(.system(size: 60))
                .foregroundStyle(.blue)
            Text("Login")
                .font(.largeTitle.bold())

            Button("Log In") {
                coordinator.login()
            }
            .buttonStyle(.borderedProminent)

            NavigationLink("Sign Up", value: AuthRoute.signup)
            NavigationLink("Forgot Password", value: AuthRoute.forgotPassword)
        }
        .navigationTitle("Login")
    }
}
