

import UIKit

class EmotionDiaryViewController: UIViewController {

    @IBOutlet weak var happyLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var loveLabel: UILabel!
    @IBOutlet weak var panicLabel: UILabel!
    @IBOutlet weak var upsetLabel: UILabel!
    @IBOutlet weak var tiredLabel: UILabel!
    @IBOutlet weak var lazyLabel: UILabel!
    @IBOutlet weak var boringLabel: UILabel!
    @IBOutlet weak var depressLabel: UILabel!
    
    @IBOutlet var emotionLabelCollection: [UILabel]!
    
    @IBOutlet var emotionButtonCollection: [UIButton]!
    
    @IBOutlet weak var emotionFirstButton: UIButton!
    
    var EmotionCountArray = [0,0,0,0,0,0,0,0,0]
    let LabelCollection = ["행복해", "좋아해", "사랑해", "당황해", "속상해", "피곤해", "지루해", "심심해", "우울해"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ButtonImage()
        Labeltag()
        ButtonLabel()
        
        emotionFirstButton.tag = 0
        
        // 버튼 이미지 코드로 삽입하는 방법
        let image = UIImage(named: "sesac_slime1")?.withRenderingMode(.alwaysOriginal)
        emotionFirstButton.setImage(image, for: .normal)
        
        // 애플에 등록되어 있는 시스템 이미지 불러오는 방법
        // let systemImage = UIImage(systemName: "gear")
        // let literal = #imageLiteral()
        
        happyLabel.text = setUserNickName()
        
//
//        view.backgroundColor = exampleCode().0 // exampleCode의 0번째
//        emotionFirstButton.setImage(UIImage(named: exampleCode().2), for: .normal)
        
    }
    
        // 배경색, 레이블, 이미지 (튜플) - exampleCode() -> (0, 1, 2)
        func exampleCode() -> (UIColor, String, String){
            let color: [UIColor] = [.red, .blue, .brown, .yellow]
            let someImage: [String] = ["sesac_slime1", "sesac_slime2", "sesac_slime3", "sesac_slime4"]
            
            return (color.randomElement()!, "윤기사", someImage.randomElement()!) //Return이 마지막 동작.
        }
    
        func setUserNickName() -> String {

            let nickname = ["행복해", "좋아해", "사랑해"]
            let select = nickname.randomElement()!

        // happyLabel.text = "\(select)"
            return "\(select)"

        }
    
        // Label 이름 설정
        func Text(_ LabelFeeling: UILabel, _ LabelName: String) {
            LabelFeeling.text = "\(LabelName)"
    }
    
        func ButtonImage() {
        for buttonimage in 0...emotionButtonCollection.count - 1 {
            emotionButtonCollection[buttonimage].setImage(UIImage(named: "sesac_slime\(buttonimage+1)"), for: .normal)
        }
     }
        func Labeltag() {
            for Tag in 0...emotionButtonCollection.count - 1{
                emotionButtonCollection[Tag].tag = Tag
            }
        }
        func ButtonLabel() {
            for item in 0...emotionButtonCollection.count - 1{
                emotionLabelCollection[item].text = LabelCollection[item]
                emotionLabelCollection[item].textColor = .blue
                emotionLabelCollection[item].textAlignment = .center
            }
        }
    
        func showAlertController() {
        // 1. 흰 바탕: UIAlertController (UIAlertController: UIViewController 자동으로 상속받음)
        // actionSheet와 alert 2가지 종류가 있음
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
       // 2. 버튼 생성 (Cancel은 무조건 하나만 들어가야함)
        let okButton = UIAlertAction(title: "확인", style: .default, handler: nil)
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        let web = UIAlertAction(title: "새 창으로 열기", style: .default, handler: nil)
        let copy = UIAlertAction(title: "복사", style: .default, handler: nil)
    
        // 3. 1:흰바탕 + 2:버튼 합치기
        alert.addAction(copy)
        alert.addAction(web)
        alert.addAction(cancel)
        alert.addAction(okButton)
        
        // 4. present : 화면 띄우기
        //  present(alert, animated: true, completion: nil)
    }
    
//      tag를 이용한 설정 & alert 띄우기
    
//    @IBAction func happyButton(_ sender: UIButton) {
//        EmotionCountArray[sender.tag] += 1
//        happyLabel.text = "행복해 \(EmotionCountArray[0])"
//
//        // showAlertController()
//            }


    @IBAction func EmotionButtonClicked(_ sender: UIButton) {
        
        EmotionCountArray[sender.tag] += 1
        emotionLabelCollection[sender.tag].text = "\(LabelCollection[sender.tag]) \(String(EmotionCountArray[sender.tag]))"
        emotionLabelCollection[sender.tag].textAlignment = .center
        
    }
    
    
}

