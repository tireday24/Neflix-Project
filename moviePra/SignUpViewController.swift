//
//  SignUpViewController.swift
//  moviePra
//
//  Created by 권민서 on 2022/07/06.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var dfixLabel: UILabel!
    @IBOutlet weak var personalTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nicknameTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var recommendTextField: UITextField!
    @IBOutlet weak var joinButton: UIButton!
    @IBOutlet weak var switchSet: UISwitch!
    @IBOutlet weak var addInformationTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFieldOuletCollection()
        dFixLabelDesign()
        personalTextFieldDesign()
        passwordTextFieldDesign()
        nicknameTextFieldDesign()
        locationTextFieldDesign()
        recommendTextFieldDesign()
        joinButtonDesign()
        switchSetDesign()
        recommendTextIsNumberOnly()
        addInformationDesign()

    }
    
    func textFieldOuletCollection() {
        let textFieldArrary : [UITextField] = [personalTextField, passwordTextField, nicknameTextField, locationTextField, recommendTextField]
        
        for design in textFieldArrary {
            design.backgroundColor = .systemGray
            design.font = .boldSystemFont(ofSize: 14)
            design.textAlignment = .center
            design.textColor = .white
            design.borderStyle = .roundedRect
            design.keyboardType = .emailAddress
        }
    }
    
    func dFixLabelDesign() {
        dfixLabel.text = "DFIX"
        dfixLabel.textColor = .systemRed
        dfixLabel.font = .boldSystemFont(ofSize: 30)
        dfixLabel.textAlignment = .center
    }
    
    func personalTextFieldDesign() {
        personalTextField.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호" , attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
    }
    
    func passwordTextFieldDesign() {
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "비밀번호" , attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        passwordTextField.keyboardType = .numberPad
        passwordTextField.isSecureTextEntry = true
    }
    
    func nicknameTextFieldDesign() {
        nicknameTextField.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
    }
    
    func locationTextFieldDesign() {
        locationTextField.attributedPlaceholder = NSAttributedString(string: "위치" , attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
    }
    
    func recommendTextFieldDesign() {
        recommendTextField.attributedPlaceholder = NSAttributedString(string: "추천인 코드 입력" , attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        recommendTextField.keyboardType = .numberPad
    }
    
    func joinButtonDesign() {
        joinButton.setTitle("회원가입", for: .normal)
        joinButton.setTitleColor(.black, for: .normal)
        joinButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        joinButton.backgroundColor = .white
    }
    
    func switchSetDesign() {
        switchSet.setOn(false, animated: true)
        switchSet.onTintColor = .systemRed
        switchSet.thumbTintColor = .white
        switchSet.tintColor = .systemGray
        switchSet.backgroundColor = .clear
        switchSet.layer.cornerRadius = 16
    }
    
    func addInformationDesign() {
        addInformationTextField.textColor = .white
        addInformationTextField.backgroundColor = .clear
        addInformationTextField.font = .systemFont(ofSize: 14)
        addInformationTextField.textAlignment = .left
        addInformationTextField.textColor = .white
        addInformationTextField.borderStyle = .roundedRect
        addInformationTextField.keyboardType = .emailAddress
    
    }
    
    func recommendTextIsNumberOnly() -> Bool {
        var recommendCode : String? = ""
        if recommendCode!.isEmpty {
            return true
        } else if Int(recommendCode!) == nil {
            return false
        }
        
        return true
        
    }
    
    @IBAction func tapJoinButton(_ sender: UIButton) {
        view.backgroundColor = .black
        view.endEditing(true)
        if personalTextField.text == "" || passwordTextField.text == "" {
            let alert = UIAlertController(title: "올바르지 않은 접근입니다", message: "이메일 주소 또는 전화번호와 패스워드를 다시 입력하십시오", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "되돌아가기", style: .destructive, handler: { _ in print("클릭함") }))
            present(alert, animated: true)
        } else if passwordTextField.accessibilityElementCount() < 6 {
            let alert = UIAlertController(title: "올바르지 않은 접근입니다", message: "비밀번호를 6자리 이상 입력해주세요", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "되돌아가기", style: .destructive, handler: { _ in print("클릭함") }))
            present(alert, animated: true)
        }
        
    }
    

    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        view.backgroundColor = .black
        view.endEditing(true)
        
        
    }
    
    @IBAction func dudEndOnExit(_ sender: UITextField) {
        view.endEditing(true)
    }
    
    
    
}
