//
//  StorelinkCoreView.swift
//  Storelink
//
import SwiftUI

public struct StorelinkCoreView: UIViewControllerRepresentable {
    var refreshToken: String
    var logLevel: LogLevel?
    var viewType: ViewType
    var functionParams: [AnyHashable: Any]?
    var onComplete: (([AnyHashable: Any]) -> Void)?
    var brandName: String?
    var logoUrl: String?
    var _devApiLocation: String?

    public init(
      refreshToken: String,
      logLevel: LogLevel? = nil,
      viewType: ViewType = .backgroundTask,
      functionParams: [AnyHashable: Any]? = nil,
      onComplete: (([AnyHashable: Any]) -> Void)? = nil,
      brandName: String? = nil,
      logoUrl: String? = nil,
      _devApiLocation: String? = nil
    ) {
        self.refreshToken = refreshToken
        self.viewType = viewType
        self.logLevel = logLevel
        self.functionParams = functionParams
        self.onComplete = onComplete
        self.brandName = brandName
        self.logoUrl = logoUrl
        self._devApiLocation = _devApiLocation
    }
  
    public typealias UIViewControllerType = UIViewController

    public func makeUIViewController(context: Context) -> UIViewController {
        // Create the SDKViewController with the refreshToken and viewType
      let sdkVC = StorelinkCore.SDKHandler.SDKViewController(
        refreshToken: refreshToken,
        viewType: viewType,
        logLevel: logLevel,
        functionParams: functionParams,
        onComplete: onComplete,
        brandName: brandName,
        logoUrl: logoUrl,
        _devApiLocation: _devApiLocation
      )
        return sdkVC
    }

    public func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        // Update code if needed
    }
}
