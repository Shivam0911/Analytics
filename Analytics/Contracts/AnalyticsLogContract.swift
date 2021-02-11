//
// Copyright © 2021 by Hilti Corporation – all rights reserved
//

import Firebase

public protocol AnalyticsLogContract {
    static func logEvent(event: AnalyticsEvent)
}
