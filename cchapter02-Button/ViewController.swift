//
//  ViewController.swift
//  cchapter02-Button
//
//  Created by 임재헌 on 2021/12/09.
//

import UIKit

class ViewController: UIViewController {
    
 /*멤버변수 subject를 UILabel! 타입으로 정의함으로써 해당 변수는 반드시 값을 가지고 있어야함
  이는 멤버변수에 값이 할당될때에 비로소 멤버변수가 메모리에 할당되도록하는데, 왜냐하면 VC가 메모리에 로드될때 값이 없는 subject를 같이 메모리에 할당해버리면 에러가 발생하기 때문이다.
  따라서 UILabel! 타입으로 변수를 선언함으로써 메모리를 보다 효율적으로 관리할 수 있다.
  */

  var subject : UILabel!
    @objc func sayHello(_sender : Any){
        self.subject.text = "GoodBye~!, IB!"
    }
    
    
    
    override func viewDidLoad() {
        //레이블 객체를 추가하고 영역을 정의한다.
        self.subject = UILabel()
        self.subject.frame = CGRect(x: 50, y: 150, width: 100, height: 30)
        
        //subject레이블을 루트뷰에 추가한다.
        self.view.addSubview(subject)
        
       
        
        super.viewDidLoad()
        //버튼 객체를 생성하고, 속성을 정의
        let btn = UIButton(type: .system)
        btn.frame = CGRect(x: 50, y: 50, width: 150, height: 30)
        btn.setTitle("테스트 버튼", for: .normal)
        
        
        //버튼의 이벤트와 메소드 btnOnClick을 연결
        btn.addTarget(self, action: #selector(btnOnClick(_sender:)), for: .touchUpInside)
        
        
        
        //버튼을 수평 중앙 정렬한다.
        btn.center = CGPoint(x: self.view.frame.size.width/2, y: 100)
        self.view.addSubview(btn)
    }
    //버튼에 발생한 이벤트를 처리할 메소드를 정의
    @objc func btnOnClick(_sender : Any){
        /*sender 를 UIButton으로 설정하면 메소드를 호출할 수 있는 객체는 버튼으로 한정
         AnyObject : 범용 클래스타입 (모든 클래스 타입에 사용가능)
         Any : 범용 객체타입(모든 클래스나 구조체 가능)
        */
        if let btn = _sender as? UIButton {
            btn.setTitle("클릭되었습니다.", for: .normal)
        }
    }


}

