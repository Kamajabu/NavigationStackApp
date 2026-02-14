import SwiftUI

struct DetailView: View {
    let item: Item

    var body: some View {
        VStack(spacing: 16) {
            Text("Detail View")
                .font(.headline)
            Text("Item: \(item.name)")
            Text("ID: \(item.id)")
                .foregroundStyle(.secondary)
        }
        .navigationTitle(item.name)
    }
}
