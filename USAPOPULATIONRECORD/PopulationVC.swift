//
//  PopulationVC.swift
//  USAPOPULATIONRECORD
//
//  Created by Vikram Kunwar on 17/04/23.
//

import UIKit


class PopulationVC: UIViewController {
    
    var dataArray : Welcome?
    
    
    @IBOutlet weak var populationLabel: UILabel!
    
    var name = ""
    var Population = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populationLabel.text = String(Population)
        //        getdata()
        
    }
    
    
    func getdata()
    {
        guard let url = URL(string: "https://datausa.io/api/data?drilldowns=Nation&measures=Population") else {
            return
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
            }
            
            if let data = data {
                do {
                    let jsondata = try JSONDecoder().decode(Welcome.self, from: data)
                    
                    print(jsondata)
                    DispatchQueue.main.async {
                        self.populationLabel.text = "\(jsondata.data[0].population)"
                        
                        
                    }
                } catch {
                    print("Somthing went wrong")
                }
            }
        }.resume()
    }
}
