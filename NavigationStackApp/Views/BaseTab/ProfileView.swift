import SwiftUI

struct ProfileView: View {
    let user: User

    var body: some View {
        VStack(spacing: 16) {
            Text("Profile View")
                .font(.headline)
            Text("User: \(user.name)")
            Text("ID: \(user.id)")
                .foregroundStyle(.secondary)
        }
        .navigationTitle(user.name)
    }
}
