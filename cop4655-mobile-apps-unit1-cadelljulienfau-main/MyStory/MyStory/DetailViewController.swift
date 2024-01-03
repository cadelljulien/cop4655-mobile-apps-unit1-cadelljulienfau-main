//
//  DetailViewController.swift
//  MyStory
//
//  Created by Cadell Julien on 9/1/23.
//

import UIKit

    class DetailViewController: UIViewController {
        var infostr: Infostr?
        override func viewDidLoad() {
                
            super.viewDidLoad()
                
                // Do any additional setup after loading the view.
            if let infostr = infostr {
                    print(infostr.title)
                }
            if let infostr = infostr {
                    // Configure the dinosaur image and dynamic labels
                infoImage.image = infostr.image
                infotitle.text = infostr.title
                infoDescription.text = infostr.description
            }
        }
            @IBOutlet weak var infotitle: UILabel!
            @IBOutlet weak var infoImage: UIImageView!
            @IBOutlet weak var infoDescription: UILabel!
            
        
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

