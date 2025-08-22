// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `OnboardingScreen`
  String get screen {
    return Intl.message('OnboardingScreen', name: 'screen', desc: '', args: []);
  }

  /// `Next`
  String get next {
    return Intl.message('Next', name: 'next', desc: '', args: []);
  }

  /// `Prev`
  String get prev {
    return Intl.message('Prev', name: 'prev', desc: '', args: []);
  }

  /// `Get Started`
  String get getStarted {
    return Intl.message('Get Started', name: 'getStarted', desc: '', args: []);
  }

  /// `Skip`
  String get skip {
    return Intl.message('Skip', name: 'skip', desc: '', args: []);
  }

  /// `authScreen`
  String get authScreen {
    return Intl.message('authScreen', name: 'authScreen', desc: '', args: []);
  }

  /// `Welcome\nBack!`
  String get loginTitle {
    return Intl.message(
      'Welcome\nBack!',
      name: 'loginTitle',
      desc: '',
      args: [],
    );
  }

  /// `Create an\naccount`
  String get signupTitle {
    return Intl.message(
      'Create an\naccount',
      name: 'signupTitle',
      desc: '',
      args: [],
    );
  }

  /// `Forgot\npassword?`
  String get forgotScreen {
    return Intl.message(
      'Forgot\npassword?',
      name: 'forgotScreen',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `ConfirmPassword`
  String get confirmPassword {
    return Intl.message(
      'ConfirmPassword',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Sign Up`
  String get signup {
    return Intl.message('Sign Up', name: 'signup', desc: '', args: []);
  }

  /// `Password and Confirm Password must be same!`
  String get samePassword {
    return Intl.message(
      'Password and Confirm Password must be same!',
      name: 'samePassword',
      desc: '',
      args: [],
    );
  }

  /// `Create an Account`
  String get createAccount {
    return Intl.message(
      'Create an Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message('Submit', name: 'submit', desc: '', args: []);
  }

  /// `Enter Your Email Address`
  String get enterYourEmail {
    return Intl.message(
      'Enter Your Email Address',
      name: 'enterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `I Already Have an Account`
  String get IareadyHaveAccount {
    return Intl.message(
      'I Already Have an Account',
      name: 'IareadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `By clicking the `
  String get clicking {
    return Intl.message(
      'By clicking the ',
      name: 'clicking',
      desc: '',
      args: [],
    );
  }

  /// `Register `
  String get register {
    return Intl.message('Register ', name: 'register', desc: '', args: []);
  }

  /// `button, you agree\nto the public offer`
  String get publicOffer {
    return Intl.message(
      'button, you agree\nto the public offer',
      name: 'publicOffer',
      desc: '',
      args: [],
    );
  }

  /// `We will send you a message to set or reset\nyour new password`
  String get textInForgot {
    return Intl.message(
      'We will send you a message to set or reset\nyour new password',
      name: 'textInForgot',
      desc: '',
      args: [],
    );
  }

  /// `Field is required`
  String get fieldRequired {
    return Intl.message(
      'Field is required',
      name: 'fieldRequired',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get validEmail {
    return Intl.message(
      'Please enter a valid email',
      name: 'validEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters`
  String get leastPassword {
    return Intl.message(
      'Password must be at least 6 characters',
      name: 'leastPassword',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Wishlist`
  String get wishlist {
    return Intl.message('Wishlist', name: 'wishlist', desc: '', args: []);
  }

  /// `earch`
  String get search {
    return Intl.message('earch', name: 'search', desc: '', args: []);
  }

  /// `Setting`
  String get setting {
    return Intl.message('Setting', name: 'setting', desc: '', args: []);
  }

  /// `HomeScreen`
  String get homeScreen {
    return Intl.message('HomeScreen', name: 'homeScreen', desc: '', args: []);
  }

  /// `Search any Product..`
  String get searchany {
    return Intl.message(
      'Search any Product..',
      name: 'searchany',
      desc: '',
      args: [],
    );
  }

  /// `All Features`
  String get allFeature {
    return Intl.message('All Features', name: 'allFeature', desc: '', args: []);
  }

  /// `Sort`
  String get sort {
    return Intl.message('Sort', name: 'sort', desc: '', args: []);
  }

  /// `Filter`
  String get filter {
    return Intl.message('Filter', name: 'filter', desc: '', args: []);
  }

  /// `Beuty`
  String get beuty {
    return Intl.message('Beuty', name: 'beuty', desc: '', args: []);
  }

  /// `Fashion`
  String get fashion {
    return Intl.message('Fashion', name: 'fashion', desc: '', args: []);
  }

  /// `Kids`
  String get kids {
    return Intl.message('Kids', name: 'kids', desc: '', args: []);
  }

  /// `Mens`
  String get mens {
    return Intl.message('Mens', name: 'mens', desc: '', args: []);
  }

  /// `Womens`
  String get womens {
    return Intl.message('Womens', name: 'womens', desc: '', args: []);
  }

  /// `New Arrivals`
  String get newArrival {
    return Intl.message('New Arrivals', name: 'newArrival', desc: '', args: []);
  }

  /// `Summer’ 25 Collections`
  String get summercollectoin {
    return Intl.message(
      'Summer’ 25 Collections',
      name: 'summercollectoin',
      desc: '',
      args: [],
    );
  }

  /// `Sponserd`
  String get sponser {
    return Intl.message('Sponserd', name: 'sponser', desc: '', args: []);
  }

  /// `up to 50% Off`
  String get upToOff {
    return Intl.message('up to 50% Off', name: 'upToOff', desc: '', args: []);
  }

  /// `SearchScreen`
  String get searchScreen {
    return Intl.message(
      'SearchScreen',
      name: 'searchScreen',
      desc: '',
      args: [],
    );
  }

  /// `Similar to`
  String get similarTo {
    return Intl.message('Similar to', name: 'similarTo', desc: '', args: []);
  }

  /// `View Similar`
  String get viewSimilar {
    return Intl.message(
      'View Similar',
      name: 'viewSimilar',
      desc: '',
      args: [],
    );
  }

  /// `Add to compare`
  String get addToCompare {
    return Intl.message(
      'Add to compare',
      name: 'addToCompare',
      desc: '',
      args: [],
    );
  }

  /// `Size: 7UK`
  String get size {
    return Intl.message('Size: 7UK', name: 'size', desc: '', args: []);
  }

  /// `Product Details`
  String get productDetails {
    return Intl.message(
      'Product Details',
      name: 'productDetails',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cartScreen {
    return Intl.message('Cart', name: 'cartScreen', desc: '', args: []);
  }

  /// `Delivery Address`
  String get deliveryAddress {
    return Intl.message(
      'Delivery Address',
      name: 'deliveryAddress',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message('Address', name: 'address', desc: '', args: []);
  }

  /// `Shopping List`
  String get shoppingList {
    return Intl.message(
      'Shopping List',
      name: 'shoppingList',
      desc: '',
      args: [],
    );
  }

  /// `Total Order(1)    :`
  String get totalOrder {
    return Intl.message(
      'Total Order(1)    :',
      name: 'totalOrder',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get settingScreen {
    return Intl.message('Setting', name: 'settingScreen', desc: '', args: []);
  }

  /// `Personal Details`
  String get personalDetails {
    return Intl.message(
      'Personal Details',
      name: 'personalDetails',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get emailAddress {
    return Intl.message(
      'Email Address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Chang Password`
  String get changePassword {
    return Intl.message(
      'Chang Password',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `Business Address Details`
  String get businessAddress {
    return Intl.message(
      'Business Address Details',
      name: 'businessAddress',
      desc: '',
      args: [],
    );
  }

  /// `PinCode`
  String get pincode {
    return Intl.message('PinCode', name: 'pincode', desc: '', args: []);
  }

  /// `Address`
  String get adress {
    return Intl.message('Address', name: 'adress', desc: '', args: []);
  }

  /// `City`
  String get city {
    return Intl.message('City', name: 'city', desc: '', args: []);
  }

  /// `State`
  String get state {
    return Intl.message('State', name: 'state', desc: '', args: []);
  }

  /// `Country`
  String get country {
    return Intl.message('Country', name: 'country', desc: '', args: []);
  }

  /// `Shopping Bag`
  String get shoppingBagScreen {
    return Intl.message(
      'Shopping Bag',
      name: 'shoppingBagScreen',
      desc: '',
      args: [],
    );
  }

  /// `Delivery By`
  String get deliverBy {
    return Intl.message('Delivery By', name: 'deliverBy', desc: '', args: []);
  }

  /// `Apply coupons`
  String get applyCopon {
    return Intl.message(
      'Apply coupons',
      name: 'applyCopon',
      desc: '',
      args: [],
    );
  }

  /// `Select`
  String get select {
    return Intl.message('Select', name: 'select', desc: '', args: []);
  }

  /// `Order Paymet Details`
  String get orderpaymetDetails {
    return Intl.message(
      'Order Paymet Details',
      name: 'orderpaymetDetails',
      desc: '',
      args: [],
    );
  }

  /// `Order ammount`
  String get orderamount {
    return Intl.message(
      'Order ammount',
      name: 'orderamount',
      desc: '',
      args: [],
    );
  }

  /// `Convenience`
  String get convinience {
    return Intl.message('Convenience', name: 'convinience', desc: '', args: []);
  }

  /// `Know More`
  String get knowMore {
    return Intl.message('Know More', name: 'knowMore', desc: '', args: []);
  }

  /// `Delivery Fee`
  String get deliveryFee {
    return Intl.message(
      'Delivery Fee',
      name: 'deliveryFee',
      desc: '',
      args: [],
    );
  }

  /// `Free`
  String get free {
    return Intl.message('Free', name: 'free', desc: '', args: []);
  }

  /// `Order Total`
  String get orderTotal {
    return Intl.message('Order Total', name: 'orderTotal', desc: '', args: []);
  }

  /// `Details`
  String get details {
    return Intl.message('Details', name: 'details', desc: '', args: []);
  }

  /// `EMI  Available `
  String get eMIavailable {
    return Intl.message(
      'EMI  Available ',
      name: 'eMIavailable',
      desc: '',
      args: [],
    );
  }

  /// `Proceed to Payment`
  String get proceedtopayment {
    return Intl.message(
      'Proceed to Payment',
      name: 'proceedtopayment',
      desc: '',
      args: [],
    );
  }

  /// `View Details`
  String get viewdetails {
    return Intl.message(
      'View Details',
      name: 'viewdetails',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkoutScreen {
    return Intl.message('Checkout', name: 'checkoutScreen', desc: '', args: []);
  }

  /// `Order`
  String get order {
    return Intl.message('Order', name: 'order', desc: '', args: []);
  }

  /// `Shipping`
  String get shipping {
    return Intl.message('Shipping', name: 'shipping', desc: '', args: []);
  }

  /// `Total`
  String get total {
    return Intl.message('Total', name: 'total', desc: '', args: []);
  }

  /// `Payment`
  String get payment {
    return Intl.message('Payment', name: 'payment', desc: '', args: []);
  }

  /// `Continue`
  String get continueButton {
    return Intl.message('Continue', name: 'continueButton', desc: '', args: []);
  }

  /// `Payment done successfully`
  String get paymentSuccess {
    return Intl.message(
      'Payment done successfully',
      name: 'paymentSuccess',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
