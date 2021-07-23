//
//  SearchBarViewController.swift
//  LostPage
//
//  Created by  Scholar on 7/22/21.
//

import UIKit

class SearchBarViewController: UIViewController {
    
    let data = ["Kindred", "Wonderlands", "A Master of Djinn", "Omniscient Reader's Viewpoint", "The Legendary Moonlight Sculptor", "The Gamer"]
    var filteredData: [String]!

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filteredData = data
        
        tableView.delegate = self
        tableView.dataSource = self

        
        searchBar.delegate = self
        
        // Do any additional setup after loading the view.
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

extension SearchBarViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = filteredData[indexPath.row]
        return cell
    }

}

extension SearchBarViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        filteredData = []
        
        if searchText == "" {
            filteredData = data
        }
        
        for word in data {
            if word.uppercased().contains(searchText.uppercased()){
                filteredData.append(word)
            }
        }
        
        self.tableView.reloadData()
        
    }
}
