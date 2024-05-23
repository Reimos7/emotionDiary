//
//  ViewController.swift
//  tableView0523
//
//  Created by 홍석평 on 5/23/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!
    @IBOutlet var button9: UIButton!
    
    @IBOutlet var labelNum1: UILabel!
    @IBOutlet var labelNum2: UILabel!
    @IBOutlet var labelNum3: UILabel!
    @IBOutlet var labelNum4: UILabel!
    @IBOutlet var labelNum5: UILabel!
    @IBOutlet var labelNum6: UILabel!
    @IBOutlet var labelNum7: UILabel!
    @IBOutlet var labelNum8: UILabel!
    @IBOutlet var labelNum9: UILabel!
    
    @IBOutlet var backGroundImage: UIImageView!
    
    @IBOutlet var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.topItem?.title = "나의 감정 일기"
        // 네비게이션 옆에 버튼 만들기
        
        // 배경화면 설정 꽉차게
        backGroundImage.image = #imageLiteral(resourceName: "paperback")
        backGroundImage.contentMode = .scaleAspectFill
        // 리셋 버튼 설정
        resetButton.setTitle("Reset", for: .normal)
        resetButton.backgroundColor = .yellow
        
        // 버튼 이미지
        buttonSet(button1, .slime1)
        buttonSet(button2, .slime2)
        buttonSet(button3, .slime3)
        buttonSet(button4, .slime4)
        buttonSet(button5, .slime5)
        buttonSet(button6, .slime6)
        buttonSet(button7, .slime7)
        buttonSet(button8, .slime8)
        buttonSet(button9, .slime9)
        //
        //        guard let button1Set =  UserDefaults.standard.string(forKey: "button1") else {
        //            // 초기화 초반 설정
        //            labelNum1.text = "행복해"
        //            return }
        //        // nil이 아니라면
        //        labelNum1.text = "행복해 \(button1Set)"
        
        if let button1Set = UserDefaults.standard.string(forKey: "button1") {
            designLabelUI(labelNum1, "행복해")
            labelNum1.text = "행복해 \(button1Set)"
            
        } else {
            designLabelUI(labelNum1, "행복해")
            labelNum1.text = "행복해"
        }
        
        if let button2Set = UserDefaults.standard.string(forKey: "button2") {
            designLabelUI(labelNum2, "사랑해")
            labelNum2.text = "사랑해 \(button2Set)"
            
        } else {
            designLabelUI(labelNum2, "사랑해")
            labelNum2.text = "사랑해"
        }
        
        if let button3Set = UserDefaults.standard.string(forKey: "button3"){
            designLabelUI(labelNum3, "좋아해")
            labelNum3.text = "좋아해 \(button3Set)"
        } else {
            designLabelUI(labelNum3, "좋아해")
            labelNum3.text = "좋아해"
        }
        
        if let button4Set = UserDefaults.standard.string(forKey: "button4"){
            designLabelUI(labelNum4, "당황해")
            labelNum4.text = "당황해 \(button4Set)"
        } else {
            designLabelUI(labelNum4, "당황해")
            labelNum4.text = "당황해"
        }
        
        if let button5Set = UserDefaults.standard.string(forKey: "button5"){
            designLabelUI(labelNum5, "속상해")
            labelNum5.text = "속상해 \(button5Set)"
        } else {
            designLabelUI(labelNum5, "속상해")
            labelNum5.text = "속상해"
        }
        
        if let button6Set = UserDefaults.standard.string(forKey: "button6"){
            designLabelUI(labelNum6, "우울해")
            labelNum6.text = "우울해 \(button6Set)"
        } else {
            designLabelUI(labelNum6, "우울해")
            labelNum6.text = "우울해"
        }
        
        if let button7Set = UserDefaults.standard.string(forKey: "button7"){
            designLabelUI(labelNum7, "심심해")
            labelNum7.text = "심심해 \(button7Set)"
        } else {
            designLabelUI(labelNum7, "심심해")
            labelNum7.text = "심심해"
        }
        if let button8Set = UserDefaults.standard.string(forKey: "button8"){
            designLabelUI(labelNum8, "행복해")
            labelNum8.text = "행복해 \(button8Set)"
        } else {
            designLabelUI(labelNum8, "행복해")
            labelNum8.text = "행복해"
        }
        if let button9Set = UserDefaults.standard.string(forKey: "button9"){
            designLabelUI(labelNum9, "행복해")
            labelNum9.text = "행복해 \(button9Set)"
        } else {
            designLabelUI(labelNum9, "행복해")
            labelNum9.text = "행복해"
        }
    }

    @IBAction func button1Clicked(_ sender: UIButton) {
        
        //1. userDefaults에 현재 저장이 되어 있는 데이터 가져오기
         let before = UserDefaults.standard.integer(forKey: "button1")
        // 2. 가져온 값에 1을 더하기:  -> 클릭할 때 마다 1씩 증가
         let after = before + 1
         // 3.UserDefaults에 2번 값을 다시 저장하기 -> 수정이 아닌 덮어쓰기 개념
         UserDefaults.standard.set(after, forKey: "button1")
         // 4. userdefaults 에서 다시 데이터 가져오기
         let final = UserDefaults.standard.integer(forKey: "button1")
         //5. 레이블에 표시하기
         labelNum1.text = "행복해 \(final)"
    }
    
    @IBAction func button2Clicked(_ sender: UIButton) {
        let before = UserDefaults.standard.integer(forKey: "button2")
        let after = before + 1
        UserDefaults.standard.set(after, forKey: "button2")
        let final = UserDefaults.standard.integer(forKey: "button2")
        labelNum2.text = "사랑해 \(final)"
        
    }
    @IBAction func button3Clicked(_ sender: UIButton) {
        let before = UserDefaults.standard.integer(forKey: "button3")
        let after = before + 1
        UserDefaults.standard.set(after, forKey: "button3")
        let final = UserDefaults.standard.integer(forKey: "button3")
        labelNum3.text = "좋아해 \(final)"
        
    }
    
    @IBAction func button4Clicked(_ sender: UIButton) {
        let before = UserDefaults.standard.integer(forKey: "button4")
        let after = before + 1
        UserDefaults.standard.set(after, forKey: "button4")
        let final = UserDefaults.standard.integer(forKey: "button4")
        labelNum4.text = "당황해 \(final)"
        
    }

    @IBAction func button5Clicked(_ sender: UIButton) {
        let before = UserDefaults.standard.integer(forKey: "button5")
        let after = before + 1
        UserDefaults.standard.set(after, forKey: "button5")
        let final = UserDefaults.standard.integer(forKey: "button5")
        labelNum5.text = "속상해 \(final)"
    }
    
    @IBAction func button6Clicked(_ sender: UIButton) {
        let before = UserDefaults.standard.integer(forKey: "button6")
        let after = before + 1
        UserDefaults.standard.set(after, forKey: "button6")
        let final = UserDefaults.standard.integer(forKey: "button6")
        labelNum6.text = "우울해 \(final)"
    }
 
    @IBAction func button7Clicked(_ sender: UIButton) {
        let before = UserDefaults.standard.integer(forKey: "button7")
        let after = before + 1
        UserDefaults.standard.set(after, forKey: "button7")
        let final = UserDefaults.standard.integer(forKey: "button7")
        labelNum7.text = "심심해 \(final)"
    }
    
    @IBAction func button8Clicked(_ sender: UIButton) {
        let before = UserDefaults.standard.integer(forKey: "button8")
        let after = before + 1
        UserDefaults.standard.set(after, forKey: "button8")
        let final = UserDefaults.standard.integer(forKey: "button8")
        labelNum8.text = "행복해 \(final)"
    }
    @IBAction func button9Clicked(_ sender: UIButton) {
        let before = UserDefaults.standard.integer(forKey: "button9")
        let after = before + 1
        UserDefaults.standard.set(after, forKey: "button9")
        let final = UserDefaults.standard.integer(forKey: "button9")
        labelNum9.text = "행복해 \(final)"
    }
    
    // 리셋 버튼
    @IBAction func resetButtonClicked(_ sender: UIButton) {

        let labels = [labelNum1,labelNum2,labelNum3,labelNum4,labelNum5,labelNum6,labelNum7,labelNum8,labelNum9]
        
        let labelTexts = ["좋아해","사랑해","좋아해","당황해","속상해","우울해","심심해","행복해","행복해"]
        
        // for key 반복문을 위한 배열
        let buttons = ["button1","button2","button3","button4","button5","button6","button7","button8","button9"]
        
        for i in 0...8{
            UserDefaults.standard.removeObject(forKey: buttons[i])
        }
        
        for i in 0...8{
            labels[i]?.text = labelTexts[i]
        }
         
    }
    func buttonSet(_ button: UIButton , _ image: UIImage){
        
        button.setBackgroundImage(image, for: .normal)
    }
    func designLabelUI(_ labelNum: UILabel, _ labelText: String){
        
        labelNum.text = labelText
        labelNum.textAlignment = .center
        labelNum.font = .systemFont(ofSize: 20)

    }


    // 구현 포기 buttonSetName 안됨
//    func buttonSetting (_ buttonSetName: String, _ labelNum: UILabel , _ text: String){
//        if let buttonSetName = UserDefaults.standard.string(forKey: "button3"){
//            labelNum.text = "text \(buttonSetName)"
//        } else {
//            labelNum.text = "text"
//        }
//        
//    }
}



