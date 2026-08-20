import Foundation

extension Bundle {
    /// The bundle that holds ChattoAdditions' own xibs and asset catalogs.
    /// Swift Package Manager puts them in a generated resource bundle, CocoaPods leaves them in the framework itself.
    static let resources: Bundle = {
        #if SWIFT_PACKAGE
        return Bundle.module
        #else
        return Bundle(for: BundleToken.self)
        #endif
    }()
}

private final class BundleToken {}
