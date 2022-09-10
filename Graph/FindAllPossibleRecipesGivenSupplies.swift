/**
 * Question Link: https://leetcode.com/problems/find-all-possible-recipes-from-given-supplies/
 * Primary idea: Topological sort, keep each recipe with ingredients for a inDegree number and 
 *               to recipe list, use a queue to decrease inDegree and form the result
 *
 * Time Complexity: O(n ^ 2), Space Complexity: O(n + m), 
 * n represents the length of recipes, m represents the length of supplies
 */

class FindAllPossibleRecipesGivenSupplies {
    func findAllRecipes(_ recipes: [String], _ ingredients: [[String]], _ supplies: [String]) -> [String] {
        var (inDegrees, toRecipes) = buildGraph(recipes, ingredients)
        var res = [String](), queue = supplies
        
        while !queue.isEmpty {
            let food = queue.removeFirst()
            
            for recipe in toRecipes[food] ?? [] {
                inDegrees[recipe]! -= 1
                
                if inDegrees[recipe] == 0 {
                    res.append(recipe)
                    queue.append(recipe)
                }
            }
        }
        
        return res
    }
    
    private func buildGraph(_ recipes: [String], _ ingredients: [[String]]) -> ([String: Int], [String: [String]]) {
        var inDegrees = [String: Int]()
        var toRecipes = [String: [String]]()
        
        for i in 0..<recipes.count {
            let (recipe, recipeIngredients) = (recipes[i], ingredients[i])
            
            for ingredient in recipeIngredients {
                inDegrees[recipe, default: 0] += 1
                toRecipes[ingredient, default: []].append(recipe)
            }
        }
        
        return (inDegrees, toRecipes)
    }
}