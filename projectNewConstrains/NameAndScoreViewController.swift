////
////  NameAndScoreViewController.swift
////  projectNewConstrains
////
////  Created by alexander aspman on 2022-09-21.
////
//
//import UIKit
//import Foundation
//
//class NameAndScoreViewController: UIViewController {
//var counting = 0
//    var countingTwo = 0
//
//
//     
//    
//    
//    func Journal(nameAndScoreEntry:String) {
//        
//        var nameAndScoreEntries = [NameAndScoreEntry]()
//        
//        var count: Int {
//            return nameAndScoreEntries.count
//        }
//        
//        func addEntry(player: NameAndScoreEntry) {
//            if player.player == "" {
//                return
//            }
//            nameAndScoreEntries.append(entry)
//        }
//        
//        func getEntryAt(index: Int) -> NameAndScoreEntry? {
//            
//            if index >= 0 && index < nameAndScoreEntry.count {
//                return nameAndScoreEntries[index]
//            }
//            
//            return nil
//        }
//        
//        func removeAt(index: Int) {
//            nameAndScoreEntries.remove(at: index)
//        }
//        
//    }
//
//    var nameAndScoreCell = "nameAndScoreCell"
//    var nameAndScore = NameAndScoreEntry(player: "", content: "", count: 1)
//    
//    
//    let segueToChangedName = "segueToChangedName"
//    
//    let segueToSViewNameAndScore = "segueToSViewNameAndScore"
//    
//    var nameAndScoreEntry = "NameAndScoreEntry"
//    
//    @IBOutlet weak var txtSaveName: UILabel!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        
//        Journal.addEntry(player:txtSaveName? ,content: "#", count:0);)
//
//    }
//    
//    
//    @IBOutlet weak var myTableView: UITableView!
//    override func viewWillAppear(_ animated: Bool) {
//        myTableView.reloadeData()
//    }
//    
//    override func numberOfSections(in myTableView: UITableView) -> Int {
//        return 1
//    }
//    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return nameAndScore.count
//    }
//    
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: nameAndScoreCell, for: indexPath)
//        
//        var content = cell.defaultContentConfiguration()
//        
//        if let entry = nameAndScore.getEntryAt(index: indexPath.row) {
//            content.text = "\(entry.date) \(entry.title)"
//        }
//        
//        cell.contentConfiguration = content
//        
//        return cell
//    }
//    
//    
//        
//        let test = UIContextualAction(style: .normal, title: "Test", handler: {(action, view, completion) in add(UIStoryboardSegue)
//            performSegue(withIdentifier: segueToChangedName )        })
//        
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        
//        switch segue.identifier {
//        case segueToSViewNameAndScore:
//            if let destinationVC = segue.destination as? create {
//                destinationVC.segueToSViewNameAndScore = self.Journal
//            }
//            break
//        case segueToChangedName:
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//       
//            
//            guard let destinationVC = segue.destination as? StoreNameScoreViewController else { return }
//            guard let cell = sender as? UITableViewCell else { return }
//            guard let indexPath = myTableView.indexPath(for: cell) else { return }
//            guard let entry = Journal.getEntryAt(index: indexPath.row) else { return }
//            
//            //
//            
//            destinationVC.nameAndScoreEntry = entry
//            
//            
//            break
//        default: return
//        }
//        
//    }
//}
//
//struct NameAndScoreEntry {
//    
//    var content: String
//    var count: Int
//    var player: String
//
// 
//    init(player: String, content: String,count: Int) {
//        self.count = count
//        self.content = content
//        self.player = player
//    }
//    
//    
//}
