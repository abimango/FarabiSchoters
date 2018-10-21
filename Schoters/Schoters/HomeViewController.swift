//
//  HomeViewController.swift
//  Schoters
//
//  Created by Farabi Ramadhan Arief on 20/10/18.
//  Copyright © 2018 Farabi Ramadhan Arief. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var scholarshipTableView: UITableView!
    
    let url = URL(string: "https://private-90552-schoterspersonal.apiary-mock.com/categories")
    
    var scholarship = [Scholarship]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        downloadJson()
    }
    
    // MARK: Table View Setup
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return scholarship.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ScholarshipCell") as? ScholarshipCell else { return UITableViewCell() }
        
        cell.scholarshipName.text = scholarship[indexPath.row].name
        cell.scholarshipDesIndo.text = scholarship[indexPath.row].description_id
        cell.scholarshipDescEng.text = scholarship[indexPath.row].description_eng
        
        if let imageURL = URL(string: scholarship[indexPath.row].image_url) {
            DispatchQueue.global().async {
                let data = try? Data(contentsOf: imageURL)
                if let data = data {
                    let image = UIImage(data: data)
                    DispatchQueue.main.async {
                        cell.scholarshipImage.image = image
                    }
                }
            }
        }
        
        return cell
    }
    
    // MARK: JSON Setup
    func downloadJson() {
        guard let downloadURL = url else { return }
        
        URLSession.shared.dataTask(with: downloadURL) { Data, URLResponse, Error in
            guard let data = Data, URLResponse != nil, Error == nil else {
                print("Something wrong.")
                return
            }
            print("JSON Downloaded")
            do {
                let decoder = JSONDecoder()
                let downloadedScholarships = try decoder.decode([Scholarship].self, from: data)
                self.scholarship = downloadedScholarships
                DispatchQueue.main.async {
                    self.scholarshipTableView.reloadData()
                }
            } catch {
                print("Something error after downloaded.")
            }
            }.resume()
    }
}
