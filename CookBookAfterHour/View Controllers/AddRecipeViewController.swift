//
//  AddRecipeViewController.swift
//  CookBookAfterHour
//
//  Created by Taylor Lyles on 9/17/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import UIKit

class AddRecipeViewController: UIViewController {

	// MARK: - Properties & Outlets
	
	@IBOutlet weak var titleTextView: UITextField!
	@IBOutlet weak var pickerView: UIPickerView!
	@IBOutlet weak var directionsTextView: UITextView!
	
	var pickerData: [String] = []
	
	// MARK: - Methods
	
	override func viewDidLoad() {
        super.viewDidLoad()
		pickerData = ["Thai", "Italian", "Mexican", "Japanese", "Chinese", "American", "Greek"]
		pickerView.dataSource = self
		pickerView.delegate = self
    }
    
	@IBAction func save(_ sender: Any) {
		navigationController?.popViewController(animated: true)
	}
}

extension AddRecipeViewController: UIPickerViewDelegate, UIPickerViewDataSource {
	
	func numberOfComponents(in pickerView: UIPickerView) -> Int {
		return 1
	}
	
	func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		return pickerData.count
	}
	
	func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		return pickerData[row]
	}
}
