import UIKit

// Properties
struct Person {
    var clothes: String
    var shoes: String
    
    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let mariush = Person(clothes: "shorts", shoes: "flip flops")

taylor.describe()
mariush.describe()


struct Person2 {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }
        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor2 = Person2(clothes: "T-shirts")
taylor2.clothes = "short skirts"


struct Person3 {
    var age: Int
    
    var ageInDogYears: Int {
        get{
            return age * 7
        }
    }
}

var dariush = Person3(age: 25)
print(dariush.ageInDogYears)


// Static properties and methods
struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"
    
    var name: String
    var age: Int
}

let fan = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)


// Access control
class TaylorFan2 {
    private var name: String?
    fileprivate var age: Int?
}

// Polymorphism and typecasting
class Album {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}

class StudioALbum: Album {
    var studio: String
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
}

class LiveAlbum: Album {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    
    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}

var taylorSwift = StudioALbum(name: "Taylor Swift", studio: "The Castles Studio")
var fearless = StudioALbum(name: "Fearless", studio: "The Castles Studio")
var iTunesLive = LiveAlbum(name: "i Tunes Live from SoHo", location: "NY")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

for album in allAlbums {
    print(album.getPerformance())
    
    if let studioAlbum = album as? StudioALbum {
        print(studioAlbum.studio)
    } else if let liveAlbum = album as? LiveAlbum {
        print(liveAlbum.location)
    }
}

var allAlbums2: [Album] = [taylorSwift, fearless]

for album in allAlbums2 {
    print(album.getPerformance())
    
    let studioAlbum = album as! StudioALbum
    print(studioAlbum.studio )
}


var allAlbums3: [Album] = [taylorSwift, fearless]

for album in allAlbums2 as! [StudioALbum]{
    print(album.studio )
}


let number = 5
let text = String(number)
print(text)

// Closures
let vw = UIView()

UIView.animate(withDuration: 0.5, animations: {
    vw.alpha = 0
})

UIView.animate(withDuration: 0.5) {
    vw.alpha = 0
}
