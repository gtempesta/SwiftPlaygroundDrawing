# Swift Playground Drawing
Here are 3 custom UIViews that I have built in order to learn how to draw three simple elements: a circle, a square and a line in Swift 4.  
In order to keep everything simple, the border color is `UIColor.black.cgColor` and the fill color is `UIColor.darkGray.cgColor`. 

## Line
The `SimpleLine` class lets you specify the starting point and the ending point of a line.  
```swift
let firstLine = SimpleLine(from: CGPoint(x: 60, y: 40), to: CGPoint(x: 300, y: 300))
```

## Square
The `SimpleRectangle` class lets you specify the top left corner of the square you are drawing and its size.  
```swift
let firstRectangle = SimpleRectangle(topLeftCorner: CGPoint(x: 120, y:100), size: 80)
```

## Circle
The `SimpleCircle` class lets you specify the top left corner of the square where the circle is placed, and the size of the circle.  
```swift
let firstCircle = SimpleCircle(topLeftCorner: CGPoint(x: 80, y: 80), size: 80)
```
