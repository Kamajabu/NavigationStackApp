# NavigationStackApp

Companion app for the blog post [Advanced NavigationStack Patterns in SwiftUI](https://buczel.com/blog/swift-navigation-stack-patterns/).

Every code example from the post is implemented here as a working, runnable app so you can see the patterns in action.

## Structure

The app has 3 tabs, each demonstrating a different pattern:

| Tab | Pattern | Key Files |
|-----|---------|-----------|
| **Base** | Coordinator + Routes + Deep Linking | `Coordinators/AppCoordinator.swift`, `Views/BaseTab/` |
| **Onboarding** | Self-contained flow with state machine | `Coordinators/OnboardingCoordinator.swift`, `Views/OnboardingTab/` |
| **Auth** | Dual navigation stacks with auth switching | `Coordinators/AuthCoordinator.swift`, `Views/AuthTab/` |

## Requirements

- Xcode 16+
- iOS 18+

## Running

Open `NavigationStackApp.xcodeproj` and run on a simulator or device.

To test deep linking:

```bash
xcrun simctl openurl booted "myapp://item/42"
xcrun simctl openurl booted "myapp://settings"
```
