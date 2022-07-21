//
//  ThemeA.swift
//  color-customization
//
//  Created by Yurii Dukhovnyi on 21.07.2022.
//

import Foundation
import GliaWidgets

extension Theme {
    static let themeA: Theme = {
        let themeColor = ThemeColor(
            primary: ThemeA.brand,
            baseNormal: ThemeA.gray73,
            baseLight: .darkGray,
            baseDark: .black,
            baseShade: ThemeA.gray44,
            background: .white
        )
        let themeFont = ThemeFont(
            header1: .systemFont(ofSize: 18, weight: .bold),
            header2: .systemFont(ofSize: 16, weight: .medium),
            bodyText: .systemFont(ofSize: 16, weight: .regular),
            subtitle: .systemFont(ofSize: 16, weight: .regular),
            buttonLabel: .systemFont(ofSize: 16, weight: .regular)
        )
        let logoImage = UIImage(named: "BrandLogoCompact")
        let logoImageStyle = UserImageStyle(
            placeholderImage: logoImage,
            placeholderColor: ThemeA.brand,
            placeholderBackgroundColor: ThemeA.brand,
            imageBackgroundColor: ThemeA.brand
        )
        let themeA = Theme(
            colorStyle: .custom(themeColor),
            fontStyle: .custom(themeFont),
            showsPoweredBy: true
        )
        themeA.chat.header.titleColor = ThemeA.brandNavigationTint
        themeA.chat.header.closeButton.color = ThemeA.brandNavigationTint
        themeA.chat.header.backButton.color = ThemeA.brandNavigationTint
        themeA.chat.header.endButton.titleFont = .systemFont(ofSize: 16, weight: .regular)
        themeA.chat.header.endButton.title = "End Chat"
        themeA.chat.header.endButton.titleColor = ThemeA.brandNavigationTint
        themeA.chat.header.endButton.backgroundColor = .clear
        themeA.chat.messageEntry.enterMessagePlaceholder = "Placeholder"
        themeA.chat.messageEntry.startEngagementPlaceholder = "Placeholder"
        themeA.chat.messageEntry.choiceCardPlaceholder = "Placeholder"
        themeA.chat.messageEntry.sendButton.color = ThemeA.blue
        themeA.chat.operatorMessage.operatorImage.placeholderImage = logoImage
        themeA.chat.connect.connectOperator.operatorImage.placeholderImage = logoImage

        themeA.chat.connect.queue.firstText = "Connect to queue"
        themeA.chat.connect.queue.secondText = "*Connect to queue*"

        themeA.chat.connect.queue.firstTextFontColor = ThemeA.gray44
        themeA.chat.connect.queue.secondTextFontColor = ThemeA.gray44
        themeA.chat.connect.connected.firstTextFontColor = ThemeA.gray44
        themeA.chat.connect.connected.secondTextFontColor = ThemeA.gray44
        themeA.chat.operatorMessage.text.backgroundColor = ThemeA.darkTeal
        themeA.chat.operatorMessage.text.textColor = .white
        themeA.chat.visitorMessage.text.backgroundColor = ThemeA.gray10
        themeA.chat.visitorMessage.text.textColor = .darkGray
        themeA.chat.choiceCard.operatorImage = logoImageStyle
        themeA.chat.choiceCard.frameColor = ThemeA.gray25
        themeA.chat.choiceCard.text.backgroundColor = .clear
        themeA.chat.choiceCard.text.textFont = .systemFont(ofSize: 16, weight: .regular)
        themeA.chat.choiceCard.text.textColor = .darkGray
        themeA.chat.choiceCard.choiceOption.disabled.textFont = .systemFont(ofSize: 16, weight: .medium)
        themeA.chat.choiceCard.choiceOption.disabled.textColor = .darkGray
        themeA.chat.choiceCard.choiceOption.disabled.backgroundColor = .white
        themeA.chat.choiceCard.choiceOption.disabled.borderColor = ThemeA.blue
        themeA.chat.choiceCard.choiceOption.normal.textFont = .systemFont(ofSize: 16, weight: .medium)
        themeA.chat.choiceCard.choiceOption.normal.textColor = .darkGray
        themeA.chat.choiceCard.choiceOption.normal.backgroundColor = .white
        themeA.chat.choiceCard.choiceOption.normal.borderColor = ThemeA.blue
        themeA.chat.choiceCard.choiceOption.selected.textFont = .systemFont(ofSize: 16, weight: .medium)
        themeA.chat.choiceCard.choiceOption.selected.textColor = .darkGray
        themeA.chat.choiceCard.choiceOption.selected.backgroundColor = ThemeA.teal10
        themeA.chat.choiceCard.choiceOption.selected.borderColor = ThemeA.mediumTeal
        themeA.alert.titleImageColor = .darkGray
        themeA.alert.positiveAction.titleColor = ThemeA.blue
        themeA.alert.positiveAction.backgroundColor = .white
        themeA.alert.negativeAction.titleColor = ThemeA.blue
        themeA.alert.negativeAction.backgroundColor = ThemeA.teal80

        return themeA
    }()
}
