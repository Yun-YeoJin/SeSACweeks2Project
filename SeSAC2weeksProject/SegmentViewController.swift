

import UIKit

enum MusicType: Int {
    case all = 0
    case korea = 1
    case other = 2
}
    


class SegmentViewController: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        segmentControlValueChanged(segmentControl)
    }
    
    @IBAction func segmentControlValueChanged(_ sender: UISegmentedControl) {
        
        // MusicType.all.rawValue = 0
        // MusicType.korea.rawValue = 1
        // MusicType.other.rawValue = 2
        
        if segmentControl.selectedSegmentIndex == MusicType.all.rawValue {
            resultLabel.text = "첫번째 세그먼트 선택"
        } else if segmentControl.selectedSegmentIndex == MusicType.korea.rawValue {
            resultLabel.text = "두번째 세그먼트 선택"
        } else if segmentControl.selectedSegmentIndex == MusicType.other.rawValue {
            resultLabel.text = "세번쨰 세그먼트 선택"
        } else {
            resultLabel.text = "오류"
        }
        
    }
    


}
