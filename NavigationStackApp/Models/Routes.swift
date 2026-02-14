import Foundation

// Blog Pattern 2: Route enum
enum Route: Hashable {
    case detail(Item)
    case settings
    case profile(User)
    case nested(NestedRoute)
}

enum NestedRoute: Hashable {
    case levelOne
    case levelTwo(String)
}

// Blog Pattern 7-8: Auth routes
enum MainRoute: Hashable {
    case dashboard
    case profile
    case settings
}

enum AuthRoute: Hashable {
    case login
    case signup
    case forgotPassword
}
