abstract class ConfirmPhoneStates {}

class ConfirmPhoneInitialState extends ConfirmPhoneStates {}

class SendOTPLoadingState extends ConfirmPhoneStates {}

class SendOTPSuccessState extends ConfirmPhoneStates {}

class SendOTPErrorState extends ConfirmPhoneStates {}

class ResendOTPLoadingState extends ConfirmPhoneStates {}

class ResendOTPSuccessState extends ConfirmPhoneStates {}

class ResendOTPErrorState extends ConfirmPhoneStates {}
