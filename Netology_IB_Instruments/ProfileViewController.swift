//
//  ProfileViewController.swift
//  Netology_IB_Instruments
//
//  Created by Igor Guzei on 23.11.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    private var myFirstView: ProfileView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        myFirstView = Bundle.main.loadNibNamed("ProfileView", owner: nil, options: nil)?.first as? ProfileView
        view.addSubview(myFirstView)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        myFirstView.frame = CGRect(
            x: view.frame.origin.x,
            y: view.frame.origin.y,
            width: view.frame.width,
            height: 400
        )
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
