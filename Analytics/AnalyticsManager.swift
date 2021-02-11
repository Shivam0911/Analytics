//
// Copyright © 2021 by Hilti Corporation – all rights reserved
//

import Firebase
import Foundation

public struct AnalyticsEvent {
    let name: String
    var parameters: [String: String]
}

public struct AnalyticsManager: AnalyticsLogContract {

    public static func logEvent(event: AnalyticsEvent) {
        if AnalyticsConfigrationManager.isConfigured {
            Analytics.logEvent(event.name, parameters: event.parameters)
        } else {
            // logDebug("Logging Analtics Event: \(event.name) with parameters: \(String(describing: event.parameters))")
        }
    }
}
