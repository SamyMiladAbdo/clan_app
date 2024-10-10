abstract class CartStates {}

class CartInitialState extends CartStates {}

class InitQuantityState extends CartStates {}
class CalculateTotalPriceState extends CartStates {}

class IncreaseQuantityState extends CartStates {}

class DecreaseQuantityState extends CartStates {}

class GetBrowsingKeyLoadingState extends CartStates {}

class GetBrowsingKeySuccessState extends CartStates {}

class GetBrowsingKeyErrorState extends CartStates {}

class GetAllProductsLoadingState extends CartStates {}

class GetAllProductsSuccessState extends CartStates {}

class GetAllProductsErrorState extends CartStates {}
