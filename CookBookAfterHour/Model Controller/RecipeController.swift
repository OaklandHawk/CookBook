//
//  RecipeController.swift
//  CookBookAfterHour
//
//  Created by Taylor Lyles on 9/17/19.
//  Copyright © 2019 Taylor Lyles. All rights reserved.
//

import Foundation
import CoreData

class RecipeController {
	
	func createRecipe(title: String, cuisine: String, directions: String) -> Recipe {
		let recipe = Recipe(title: title, cuisine: cuisine, directions: directions, context: CoreDataStack.shared.mainContext)
		
		CoreDataStack.shared.saveToPersistentStore()
		
		return recipe
		
	}
}
