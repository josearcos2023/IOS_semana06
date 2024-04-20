//
//  ViewController.swift
//  Laboratorio06
//
//  Created by Mac13 on 20/04/24.
//
import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let posts: [Post] = [
        Post(username: "David123", imgPost: "pikachu", imgProfile: "torchic"),
        Post(username: "Jose321", imgPost: "pikachu", imgProfile: "torchic"),
        Post(username: "Alvaro456", imgPost: "pikachu", imgProfile: "torchic"),
        Post(username: "Moises654", imgPost: "pikachu", imgProfile: "torchic"),
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        as! PokemonTableViewCell
        
        let posts = posts[indexPath.row]
        cell.username.text=posts.username
        cell.imgPost.image=UIImage(named: posts.imgPost)
        cell.imgProfile.image=UIImage(named: posts.imgProfile)
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource=self
        tableView.delegate=self
    }
}

