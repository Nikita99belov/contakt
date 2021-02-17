//
//  Model.swift
//  contakt
//
//  Created by Sofi on 17.02.2021.
//

import Foundation

struct DataManager {
    
    static var firstName: String {
        return firstNames.randomElement()!
    }
    
    static var lastName: String {
        return lastNames.randomElement()!
    }
    
    static var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    static var number: String {
        let numberRandom = numberr.randomElement()!
        return numberRandom
    }
    
    static var  emailDelimit = emailDelimiters.randomElement()!
    static var  emailDom = emailDomains.randomElement()!
    
}

extension DataManager {
    
    private static let firstNames = ["Judith", "Angelo", "Margarita", "Kerry", "Elaine", "Lorenzo", "Justice", "Doris", "Raul", "Liliana", "Kerry", "Elise", "Ciaran", "Johnny", "Moses", "Davion", "Penny", "Mohammed", "Harvey", "Sheryl", "Hudson", "Brendan", "Brooklynn", "Denis", "Sadie", "Trisha", "Jacquelyn", "Virgil", "Cindy", "Alexa", "Marianne", "Giselle", "Casey", "Alondra", "Angela", "Katherine", "Skyler", "Kyleigh", "Carly", "Abel", "Adrianna", "Luis", "Dominick", "Eoin", "Noel", "Ciara", "Roberto", "Skylar", "Brock", "Earl", "Dwayne", "Jackie", "Hamish", "Sienna", "Nolan", "Daren", "Jean", "Shirley", "Connor", "Geraldine", "Niall", "Kristi", "Monty", "Yvonne", "Tammie", "Zachariah", "Fatima", "Ruby", "Nadia", "Anahi", "Calum", "Peggy", "Alfredo", "Marybeth", "Bonnie", "Gordon", "Cara", "John", "Staci", "Samuel", "Carmen", "Rylee", "Yehudi", "Colm", "Beth", "Dulce", "Darius", "inley", "Javon", "Jason", "Perla", "Wayne", "Laila", "Kaleigh", "Maggie", "Don", "Quinn", "Collin", "Aniya", "Zoe", "Isabel", "Clint", "Leland", "Esmeralda", "Emma", "Madeline", "Byron", "Courtney", "Vanessa", "Terry", "Antoinette", "George", "Constance", "Preston", "Rolando", "Caleb", "Kenneth", "Lynette", "Carley", "Francesca", "Johnnie", "Jordyn", "Arturo", "Camila", "Skye", "Guy", "Ana", "Kaylin", "Nia", "Colton", "Bart", "Brendon", "Alvin", "Daryl", "Dirk", "Mya", "Pete", "Joann", "Uriel", "Alonzo", "Agnes", "Chris", "Alyson", "Paola", "Dora", "Elias", "Allen", "Jackie", "Eric", "Bonita", "Kelvin", "Emiliano", "Ashton", "Kyra", "Kailey", "Sonja", "Alberto", "Ty", "Summer", "Brayden", "Lori", "Kelly", "Tomas", "Joey", "Billie", "Katie", "Stephanie", "Danielle", "Alexis", "Jamal", "Kieran", "Lucinda", "Eliza", "Allyson", "Melinda", "Alma", "Piper", "Deana", "Harriet", "Bryce", "Eli", "Jadyn", "Rogelio", "Orlaith", "Janet", "Randal", "Toby", "Carla", "Lorie", "Caitlyn", "Annika", "Isabelle", "inn", "Ewan", "Maisie", "Michelle", "Grady", "Ida", "Reid", "Emely", "Tricia", "Beau", "Reese", "Vance", "Dalton", "Lexi", "Rafael", "Makenzie", "Mitzi", "Clinton", "Xena", "Angelina", "Kendrick", "Leslie", "Teddy", "Jerald", "Noelle", "Neil", "Marsha", "Gayle", "Omar", "Abigail", "Alexandra", "Phil", "Andre", "Billy", "Brenden", "Bianca", "Jared", "Gretchen", "Patrick", "Antonio", "Josephine", "Kyla", "Manuel", "Freya", "Kellie", "Tonia", "Jamie", "Sydney", "Andres", "Ruben", "Harrison", "Hector", "Clyde", "Wendell", "Kaden", "Ian", "Tracy", "Cathleen", "Shawn"]
    
    private static let lastNames = ["Chung", "Chen", "Melton", "Hill", "Puckett", "Song", "Hamilton", "Bender", "Wagner", "McLaughlin", "McNamara", "Raynor", "Moon", "Woodard", "Desai", "Wallace", "Lawrence", "Griffin", "Dougherty", "Powers", "May", "Steele", "Teague", "Vick", "Gallagher", "Solomon", "Walsh", "Monroe", "Connolly", "Hawkins", "Middleton", "Goldstein", "Watts", "Johnston", "Weeks", "Wilkerson", "Barton", "Walton", "Hall", "Ross", "Chung", "Bender", "Woods", "Mangum", "Joseph", "Rosenthal", "Bowden", "Barton", "Underwood", "Jones", "Baker", "Merritt", "Cross", "Cooper", "Holmes", "Sharpe", "Morgan", "Hoyle", "Allen", "Rich", "Rich", "Grant", "Proctor", "Diaz", "Graham", "Watkins", "Hinton", "Marsh", "Hewitt", "Branch", "Walton", "O'Brien", "Case", "Watts", "Christensen", "Parks", "Hardin", "Lucas", "Eason", "Davidson", "Whitehead", "Rose", "Sparks", "Moore", "Pearson", "Rodgers", "Graves", "Scarborough", "Sutton", "Sinclair", "Bowman", "Olsen", "Love", "McLean", "Christian", "Lamb", "James", "Chandler", "Stout", "Cowan", "Golden", "Bowling", "Beasley", "Clapp", "Abrams", "Tilley", "Morse", "Boykin", "Sumner", "Cassidy", "Davidson", "Heath", "Blanchard", "McAllister", "McKenzie", "Byrne", "Schroeder", "Griffin", "Gross", "Perkins", "Robertson", "Palmer", "Brady", "Rowe", "Zhang", "Hodge", "Li", "Bowling", "Justice", "Glass", "Willis", "Hester", "Floyd", "Graves", "Fischer", "Norman", "Chan", "Hunt", "Byrd", "Lane", "Kaplan", "Heller", "May", "Jennings", "Hanna", "Locklear", "Holloway", "Jones", "Glover", "Vick", "O'Donnell", "Goldman", "McKenna", "Starr", "Stone", "McClure", "Watson", "Monroe", "Abbott", "Singer", "Hall", "Farrell", "Lucas", "Norman", "Atkins", "Monroe", "Robertson", "Sykes", "Reid", "Chandler", "Finch", "Hobbs", "Adkins", "Kinney", "Whitaker", "Alexander", "Conner", "Waters", "Becker", "Rollins", "Love", "Adkins", "Black", "Fox", "Hatcher", "Wu", "Lloyd", "Joyce", "Welch", "Matthews", "Chappell", "MacDonald", "Kane", "Butler", "Pickett", "Bowman", "Barton", "Kennedy", "Branch", "Thornton", "McNeill", "Weinstein", "Middleton", "Moss", "Lucas", "Rich", "Carlton", "Brady", "Schultz", "Nichols", "Harvey", "Stevenson", "Houston", "Dunn", "West", "O'Brien", "Barr", "Snyder", "Cain", "Heath", "Boswell", "Olsen", "Pittman", "Weiner", "Petersen", "Davis", "Coleman", "Terrell", "Norman", "Burch", "Weiner", "Parrott", "Henry", "Gray", "Chang", "McLean", "Eason", "Weeks", "Siegel", "Puckett", "Heath", "Hoyle", "Garrett", "Neal", "Baker", "Goldman", "Shaffer", "Choi", "Carver"]
    
    private static let emailDomains = ["gmail.com", "yahoo.com", "hotmail.com", "email.com", "live.com", "me.com", "mac.com", "aol.com", "fastmail.com", "mail.com"]
    
    private static let emailDelimiters = ["", ".", "-", "_"]
    
    private static let numberr = ["+7(495)975-40-46", "+7(495)007-69-77", "+7(495)415-33-03", "+7(495)953-29-93", "+7(495)793-73-97", "+7(495)050-03-73", "+7(495)990-29-48", "+7(495)020-01-49", "+7(495)326-62-41", "+7(495)326-62-41", "1(7039)735-39-37", "022(68)626-49-29", "2(00)494-13-05", "3(23)442-37-85", "34(259)695-19-02", "0(5418)722-95-08", "4(50)198-89-49", "522(080)689-81-94", "7(501)535-41-58", "5(379)696-27-61", "539(41)068-89-57", "0(1899)184-67-00", "05(9730)377-26-20", "299(99)079-74-07", "038(1100)878-59-83", "7(363)716-45-72", "76(776)716-40-24"]
}
