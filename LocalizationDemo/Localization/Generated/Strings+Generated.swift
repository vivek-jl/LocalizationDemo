// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {

  internal enum Home {
    /// %d services available
    internal static func subtitle(_ p1: Int) -> String {
      return L10n.tr("Localizable", "home.subtitle", p1)
    }
    /// Welcome
    internal static let title = L10n.tr("Localizable", "home.title")
  }

  internal enum Login {
    internal enum Error {
      /// Unable to login
      internal static let message = L10n.tr("Localizable", "login.error.message")
      /// Error
      internal static let title = L10n.tr("Localizable", "login.error.title")
    }
    internal enum Main {
      /// Password
      internal static let password = L10n.tr("Localizable", "login.main.password")
      /// Enter your credentials
      internal static let subtitle = L10n.tr("Localizable", "login.main.subtitle")
      /// Get Started
      internal static let title = L10n.tr("Localizable", "login.main.title")
      /// User name
      internal static let username = L10n.tr("Localizable", "login.main.username")
    }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: nil, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
