//
//  SignInViewController.swift
//  KingBurguer
//
//  Created by Mizael Douglas Mello on 04/06/24.
//

import Foundation
import UIKit

class SignInViewController : UIViewController {
	
	let email: UITextField = {
		let ed = UITextField()
		ed.translatesAutoresizingMaskIntoConstraints = false
		ed.backgroundColor = .blue
		ed.placeholder = "Entre com seu email."
		return ed
	}()
	
	let passoword: UITextField = {
		let ed = UITextField()
		ed.translatesAutoresizingMaskIntoConstraints = false
		
		ed.backgroundColor = .red
		ed.placeholder = "Entre com sua senha."
		return ed
	}()
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		view.backgroundColor = .green
		
		
		view.addSubview(email)
		view.addSubview(passoword)
		
		//email.frame = CGRect(x: 0, y: view.bounds.size.height / 2, width: view.bounds.size.width, height: 50)
		//passoword.frame = CGRect(x: 0, y: (view.bounds.size.height / 2) + 80 , width: view.bounds.size.width, height: 50)
		
		
		let emailConstraints = [
			email.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			email.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			email.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100.0),
			email.heightAnchor.constraint(equalToConstant: 50.0)
		]
		
		let passowordConstraints = [
			passoword.leadingAnchor.constraint(equalTo: email.leadingAnchor),
			passoword.trailingAnchor.constraint(equalTo: email.trailingAnchor),
			passoword.topAnchor.constraint(equalTo: email.bottomAnchor,constant: 10),
			passoword.heightAnchor.constraint(equalToConstant: 50.0)
		]
		
		NSLayoutConstraint.activate(emailConstraints)
		NSLayoutConstraint.activate(passowordConstraints)
		
		
		
	}
}
