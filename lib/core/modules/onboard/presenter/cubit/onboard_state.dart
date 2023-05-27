abstract class OnboardState {
  const OnboardState();
}

class OnboardInitialState extends OnboardState {
  const OnboardInitialState();
}

class OnboardLoadingState extends OnboardState {
  const OnboardLoadingState();
}

class OnboardUnviewedState extends OnboardState {
  const OnboardUnviewedState();
}

class OnboardFailureState extends OnboardState {
  const OnboardFailureState();
}

class OnboardViewedState extends OnboardState {
  const OnboardViewedState();
}
