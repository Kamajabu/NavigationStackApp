import SwiftUI

struct ForgotPasswordView: View {
    var body: some View {
        VStack(spacing: 24) {
            Text("Forgot Password")
                .font(.largeTitle.bold())
            Text("Enter your email to reset your password.")
                .foregroundStyle(.secondary)
        }
        .navigationTitle("Forgot Password")
    }
}
