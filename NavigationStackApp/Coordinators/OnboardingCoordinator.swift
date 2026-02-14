import SwiftUI

// Blog Pattern 5: OnboardingCoordinator
@Observable
class OnboardingCoordinator {
    var path: [Step] = []
    var isCompleted = false

    enum Step: Hashable {
        case welcome
        case permissions
        case preferences
    }

    // Move to the next room in the tour
    func advance() {
        switch path.last {
        case .none:
            path.append(.welcome)
        case .welcome:
            path.append(.permissions)
        case .permissions:
            path.append(.preferences)
        case .preferences:
            isCompleted = true
        }
    }
}
