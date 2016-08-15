//
//  ViewController.swift
//  HTTP request
//
//  Created by Павел Анплеенко on 14/08/16.
//  Copyright © 2016 Pavel Anpleenko. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		Alamofire.request(.GET, "http://192.168.0.15:3000/api/v1/todos")
			.responseJSON { response in
				print(response.request)  // original URL request
				print(response.response) // URL response
				print(response.data)     // server data
				print(response.result)   // result of response serialization
				
				if let JSON = response.result.value {
					print("JSON: \(JSON)")
				}
		}
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

