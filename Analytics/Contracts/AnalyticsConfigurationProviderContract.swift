//
// Copyright © 2021 by Hilti Corporation – all rights reserved
//

import Foundation

/// This manages Analytics  On Global level according to  ENABLE_ANALYTICS Flag
public protocol AnalyticsConfigurationProviderContract {

    func isAnalyticsEnabled() -> Bool
    func getFilePath() -> String
}
