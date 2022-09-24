//
//  ViewController.swift
//  projectNewConstrains
//
//  Created by alexander aspman on 2022-09-16.
//


//          var [button, setTitle:@"" forState:UiControlStateNormal] = view.viewWithTag(i) as!
//            (void)viewWillAppear:(animated: Bool)animated do {
//                NSLog("Title: %@", titleLabel.text ?? default value)
//


import UIKit

class ViewController: UIViewController {
    var currentPlayer = 1
    var count = 1
    var board = [0,0,0,0,0,0,0,0,0]
    var playerTurn = true
    let gameOver = [ [0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[1,4,7],[2,5,8],[0,4,8],[2,4,6] ]
    

    


    @IBOutlet weak var result: UILabel!
    
    
    @IBAction func buttons(_ sender: AnyObject) {
        
        
        
        
//        sender.titleLabel:UILabel?:<get>.font =  UIFont.boldSystemFont(ofSize: 80)

        
        if (board[sender.tag-1] == 0 && playerTurn == true) {
            board[sender.tag - 1] = currentPlayer
            if (currentPlayer == 1){
             
                count = count + 1
                sender.setImage(UIImage(named:"circle.png" ), for:  UIControl.State())
            
                if (count == 10){
                    self.result.text =  "draw"
                    UIView.animate(withDuration: 2,animations:{ (self.result.alpha = CGFloat(1))}, completion: (nil))
                    playerTurn = false
//                }
                }
            currentPlayer = 2
                
                
            }
            else {
                count = count + 1
                sender.setImage(UIImage(named:"x.png" ), for:  UIControl.State())
            
           
                    
                if count == 10{
                self.result.text =  "draw"
                    UIView.animate(withDuration: 2, animations:{ (self.result.alpha = CGFloat(1))}, completion: (nil))
                    playerTurn = false}
                currentPlayer = 1

           
            }
            }
               
            
        
            
        
    for combination in gameOver {
        if board[combination[0]] != 0 && board[combination[0]] == board[combination[1]] && board[combination[1]] == board[combination[2]]{
            playerTurn  = false
            
        
       
            
            
            if board[combination[0]] == 1 {
                self.result.text =  "circle has won"
                UIView.animate(withDuration: 2, animations:{ (self.result.alpha = CGFloat(1))}, completion: (nil))
               
                
                
                
                
            }
            else {
                self.result.text = "cross has won"
                      UIView.animate(withDuration: 2, animations:{ (self.result.alpha =  CGFloat(1))}, completion: (nil))
            }
            
//            if (board[combination[0]] == board[combination[1]] && board[combination[1]] == board[combination[2]]){
//                UIView.animate(withDuration: 2, animations:{ (self.playAgan.alpha = CGFloat(1))}, completion: (nil))
//
//
//            }
////            if playerTurn == true{
//                for i in board{
//                    count=i*count
//              if  count == 9{
//
//                self.result.text =  "draw"
//
//                UIView.animate(withDuration: 2,animations:{ (self.result.alpha = CGFloat(1))}, completion: (nil))
//           }
//       }
  


           
        }}
        
        
    
    
//    @IBAction func resetFunc(sender: UIButton , event: UIEvent) {
//
//        if playerTurn==false{
//        currentPlayer = 1
//        count = 1
//        board = [0,0,0,0,0,0,0,0,0]
//        playerTurn = true
//        UIView.animate(withDuration: 2, animations:{ (self.buttonReset.alpha = CGFloat(0))}, completion: (nil))
//
//            let button = self.buttons(ViewController())
//            for it in 1...9 {
//
//               buttons.setTitle("I", for: UIControl.State()).tag(i)
//
//
//
            
            
//            let button = self.view.viewWithTag(i) as! UIButton
//            button.setTitle("", for: UIControl.State())
        

    
    
        
    }



            
        
    @IBOutlet weak var playAgainButton: UIButton!
    @IBAction func sendNullingOfBoard(_ sender: UIButton) {
       
        if playerTurn == false{
            currentPlayer = 1
            count = 1
            board = [0,0,0,0,0,0,0,0,0]
          
            UIView.animate(withDuration: 2, animations:{ (self.result.alpha = CGFloat(0))}, completion: (nil))

        
        for i in 1...9 {
            let button = view.viewWithTag(i) as! UIButton
            button.setImage(nil, for: UIControl.State())
        }
            playerTurn=true
       
//player
//        class nulling{
//
//            var title : String
//            var setTitle : String
//            var label : String?
//
//            init(title: String, setTitle: String, label: String) {
//                self.title = title
//                self.setTitle = setTitle
//                self.label = label
//            }
//
//
//        var reset = nulling(title: " ", setTitle: " ", label: " ")
//
//        if playerTurn == false{
//            for i in 1...9{
//                let button = view.viewWithTag(i)
//
//                button(btnIndex).setTitle(title, for: UIControl.State())
//
//            }
        }
    }


    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }

//
//    public struct container<Value:Sendable>{
//
//        internal var sign:Value
//
//
////    }
//    struct Player:Sendable{
//        var currentPlayer:Int
//               var sign: String
//
//               init(sign: String) { self.sign = sign }
//
//        let determingAction = determingAction()
//        let boardCache = boardCache()
//        var formattedAction:String {
//            let nextAction = determingAction.nextAction(for: "title")
//            return nextAction.string(from determingAction)
//        }
//
//
//
//
//    class boardCache: @unchecked Sendable {
//        var nextActions = [String: player]()
//
//        extension DispatchQueue {
//            static let playerMutatingLock = DispatchQueue(label: "")
//        }
//        final class MutablePlayer: @unchecked Sendable {
//            private var sign: String = ""
//
//            func updateSign(_ sign: String) {
//                DispatchQueue.playerMutatingLock.sync {
//                    self.sign = sign
//                }
//            }
//    }
//
//        func nextAction(for sign: String) ->  player{
//            if let nextAction = nextActions[sign]{
//                return nextActions}
//
//            let nextAction = player()
//            nextAction.determingAction = sign
//            nextActions[sign] = nextAction
//
//            return nextAction
//
//            func player(sign:String,currentPlayer:Int){
//
//
//                enum State:Sendable{
//                    case player1(currentPlayer:Int)
//
//                    case player2(currentPlayer:Int)
//
//                    case reset(playerTurn:Bool)
//                }
//
//            }
//        }
//
//
//    }
//    }
    
    
}

 
    




