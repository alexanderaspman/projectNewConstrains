//////
//////  createPlayerController.swift
//////  projectNewConstrains
//////
//////  Created by alexander aspman on 2022-09-21.
//////
////
////import UIKit
////
////class createPlayerController: UITableViewController {
////
////
////    var journal: NameAndScoreEntry?
////
////    var wins = 1
////
////
//    @IBAction func saveChosenName(_ sender: UITextField, forEvent event: UIEvent) {
//
//        var pName = sender.text
//    }
//
//    @IBAction func linkAction(_ sender: UITextField) {
//    }
//
//
//    @IBOutlet  var txtSaveName: UITextField!
//    @IBOutlet weak var switchPlayerEdeting: UISwitch!
//
//
//    @IBAction func saveChanges(_ sender: UIBarButtonItem) {
//
//    }
//    @IBOutlet weak var myTableView: UITableView!
//    @IBAction func setPlayerName(_ sender: UITextField,pName:String) {
////
////
////
////        var savedtxt = txtSaveName.text
////
////
////        if case Player.player = (savedtxt ?? "")
////
////
////        {
////        var winnings = 0
////
////
////
////            if (txtSaveName != nil) != false {
////            if ((switchPlayerEdeting?.isOn) != nil) {
////
////
////
////                var  player2=(numberOfWins:0, player:savedtxt)
////
////                txtSaveName.text = player2.player
////            }
////
////
////            else{
////                var player1=(numberOfWins:0, player:savedtxt)
////
////
////                txtSaveName.text = player1.player
////
////            }}
////            if switchPlayerEdeting.isOn {
////                NameAndScoreEntry.addEntry(entry: NameAndScoreEntry(player: player, numberOfWins: numberOfWins))
////            } else {
////                journal.addEntry(entry: NameAndScoreEntry(player: player, content: content))
////            }
////
////            self.navigationController?.popViewController(animated: true)
////        }
////    }
////
////
////
////
////
////
////
////
////    struct Player   {
////        var numberOfWins:Int
////        var player:UITextField
////        init(numberOfWins:Int,player:UITextField)
////        {
////            self.numberOfWins=numberOfWins
////            self.player=player
////        }
////    }
////
////
////    public enum TextType: String
////    {
////
////
////
////        case player = "player1"
////
////    }
////
////    /*
////    // MARK: - Navigation
////
////    // In a storyboard-based application, you will often want to do a little preparation before navigation
////    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
////        // Get the new view controller using segue.destination.
////        // Pass the selected object to the new view controller.
////    }
////    */
////
////}
