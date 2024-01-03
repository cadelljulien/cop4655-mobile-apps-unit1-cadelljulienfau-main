//
//  ViewController.swift
//  MyStory
//
//  Created by Cadell Julien on 8/31/23.
//

import UIKit

class ViewController: UIViewController {

    let info1 = Infostr(title: "My Biography", image: UIImage(named: "me")!, description: "Hey there! My name is Cadell Julien and I'm 22. I go Florida Atlantic Univeristy. I'm a Senior and usually atttend lectures in person. I'm a first gen student and my ethnicity is Haitian. When it comes down to hobbies or doing things in my free time, I’d say I enjoy reading, gaming, working out, sleeping and of course coding.")
    let info2 = Infostr(title: "My Favorite Sport", image: UIImage(named: "sport")!, description: "I don't really have a favorite spot but if I was to say then it would be hand to hand combat sport. This will include MMA, Boxing, BBJ, etc")
    let info3 = Infostr(title: "My Social Media", image: UIImage(named: "SM")!, description: "You can find me on instagram at @huhcadell and on Linkedin using my full name")



    var myinfos: [Infostr] = []
    
    
    override func viewDidLoad() {
        myinfos = [info1, info2, info3]
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

        
    @IBAction func didTapScreen(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

            if segue.identifier == "detailSegue",
                let tappedView = sender as? UIView,
                let detailViewController = segue.destination as? DetailViewController {

                if tappedView.tag == 0 {
                    detailViewController.infostr = myinfos[0]
                } else if tappedView.tag == 1 {
                    detailViewController.infostr = myinfos[1]
                } else if tappedView.tag == 2 {
                    detailViewController.infostr = myinfos[2]
                } else {
                    print("no Dinosaur was tapped, please check your selection.")
                }
            }
        }
    }

