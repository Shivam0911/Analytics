//
// Copyright © 2021 by Hilti Corporation – all rights reserved
//

import Foundation

public protocol AnalyticsConfigurationContract {

    static var isConfigured: Bool { get set }

    func configureFireBase()
}
