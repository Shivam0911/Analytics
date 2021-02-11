//
// Copyright © 2021 by Hilti Corporation – all rights reserved
//

import Firebase
import Foundation

public struct AnalyticsConfigrationManager: AnalyticsConfigurationContract {

    public static var isConfigured: Bool = false
    let analyticsEnabler: AnalyticsConfigurationProviderContract

    public init(analyticsEnabler: AnalyticsConfigurationProviderContract) {
        self.analyticsEnabler = analyticsEnabler
    }

    public func configureFireBase() {
        if analyticsEnabler.isAnalyticsEnabled() {
            let path = analyticsEnabler.getFilePath()
            if FirebaseApp.app() == nil,
               let options = FirebaseOptions(contentsOfFile: path) {
                FirebaseConfiguration.shared.setLoggerLevel(FirebaseLoggerLevel.min)
                FirebaseApp.configure(options: options)
                AnalyticsConfigrationManager.isConfigured = true
            }
        } else {
          //  logDebug("Analytics disabled")
        }
    }
}
