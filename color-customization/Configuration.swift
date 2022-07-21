//
//  Configuration.swift
//  color-customization
//
//  Created by Yurii Dukhovnyi on 21.07.2022.
//

import Foundation
import GliaWidgets

let queueId = ""
extension GliaWidgets.Configuration {
    static let `default`: Self = .init(
        authorizationMethod: .siteApiKey(id: "", secret: ""),
        environment: .beta,
        site: ""
    )
}
