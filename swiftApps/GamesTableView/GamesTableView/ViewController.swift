//
//  ViewController.swift
//  GamesTableView
//
//  Created by Usuário Convidado on 13/08/2018.
//  Copyright © 2018 Weis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tbvGames: UITableView!
    
    var games = ["Horizon Zero Dawn", "Uncharted 4"]
    var gamesImages = ["hor", "unc"]
    var gamesStudios = ["Guerrilla", "Naughty Dog"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("OOI")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        cell.textLabel?.text = String(games[indexPath.row])
        cell.imageView?.image = UIImage(named: gamesImages[indexPath.row])
        cell.detailTextLabel?.text = String(gamesStudios[indexPath.row])
        
        return cell
    }
}

