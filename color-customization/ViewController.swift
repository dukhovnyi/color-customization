//
//  ViewController.swift
//  color-customization
//
//  Created by Yurii Dukhovnyi on 21.07.2022.
//

import GliaWidgets
import SalemoveSDK
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gliaVersionLabel: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()

        gliaVersionLabel?.text = Bundle(for: Glia.self).infoDictionary?["CFBundleShortVersionString"]
            .map { "GliaWidgets: \($0)" }
    }

    @IBAction func startEngagement(_ sender: UIButton) {

        do {
            try Glia.sharedInstance.configure(
                with: .default,
                queueId: queueId,
                visitorContext: .init(type: .page, url: "https://glia.com")
            )
            try Glia.sharedInstance.startEngagement(
                engagementKind: .chat,
                theme: .themeA
            )
        } catch let error as SalemoveSDK.ConfigurationError {
            let alertController = UIAlertController(
                title: "GliaWidgets",
                message: "\(error)",
                preferredStyle: .alert
            )
            alertController.addAction(.init(title: "Close", style: .destructive))
            present(
                alertController,
                animated: true
            )
        } catch {
            let alertController = UIAlertController(
                title: "GliaWidgets",
                message: "\(error)",
                preferredStyle: .alert
            )
            alertController.addAction(.init(title: "Close", style: .destructive))
            present(
                alertController,
                animated: true
            )
        }
    }

    @IBAction func clearVisitorSession(_ sender: UIButton) {
        Glia.sharedInstance.clearVisitorSession()
    }
}
