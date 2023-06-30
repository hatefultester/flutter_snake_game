abstract class IOnboardingController {
  Future<bool> wasOnboardingVisited();
  Future<void> showPrivacyPolicyAgreementDialog();
  Future<void> handleOnboardingSubmittedTapped();
}