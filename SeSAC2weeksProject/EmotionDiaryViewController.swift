

import UIKit

class EmotionDiaryViewController: UIViewController {
    
    var a = 0
    var b = 0
    var c = 0
    var d = 0
    var e = 0
    var f = 0
    var g = 0
    var h = 0
    var i = 0
    
    @IBOutlet weak var happyLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var loveLabel: UILabel!
    @IBOutlet weak var panicLabel: UILabel!
    @IBOutlet weak var upsetLabel: UILabel!
    @IBOutlet weak var tiredLabel: UILabel!
    @IBOutlet weak var lazyLabel: UILabel!
    @IBOutlet weak var boringLabel: UILabel!
    @IBOutlet weak var depressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    
    // Label 이름 설정
    func Text(_ LabelFeeling: UILabel, _ LabelName: String) {
            LabelFeeling.text = "\(LabelName)"
    }

    
    @IBAction func happyButton(_ sender: UIButton) {
        a += 1
        Text(happyLabel, "행복해 \(a)")
    }
    @IBAction func likeButton(_ sender: UIButton) {
        b += 1
        Text(likeLabel, "좋아해 \(b)")
    }
    @IBAction func loveButton(_ sender: UIButton) {
        c += 1
        Text(loveLabel, "사랑해 \(c)")
    }
    @IBAction func panicButton(_ sender: UIButton) {
        d += 1
        Text(panicLabel, "당황해 \(d)")
    }
    @IBAction func upsetButton(_ sender: UIButton) {
        e += 1
        Text(upsetLabel, "속상해 \(e)")
    }
    @IBAction func tiredButton(_ sender: UIButton) {
        f += 1
        Text(tiredLabel, "피곤해 \(f)")
    }
    @IBAction func lazyButton(_ sender: UIButton) {
        g += 1
        Text(lazyLabel, "지루해 \(g)")
    }
    @IBAction func boringButton(_ sender: UIButton) {
        h += 1
        Text(boringLabel, "심심해 \(h)")
    }
    @IBAction func depressedButton(_ sender: UIButton) {
        i += 1
        Text(depressLabel, "우울해 \(i)")
    }

  


}
