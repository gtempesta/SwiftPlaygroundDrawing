# Swift Playground Drawing
Basic Drawing in Swift Playgrounds.  
Here are 3 custom UIViews that I have build in order to learn how to draw three simple elements: a circle, a square and a line.
In order to keep everything simple, the border color is black and the fill color is of `UIColor.darkGray.cgColor` gray. 

## Line
The `SimpleLine` class lets you specify the starting point and the ending point of a line. 
Ex: `let firstLine = SimpleLine(from: CGPoint(x: 60, y: 40), to: CGPoint(x: 300, y: 300))`. 

## Square
The `SimpleRectangle` class lets you specify the top left corner of the square you are drawing and its size. 
Ex: `let firstRectangle = SimpleRectangle(topLeftCorner: CGPoint(x: 120, y:100), size: 80)`. 

## Circle
The `SimpleCircle` class lets you specify the top left corner of the square where the circle is placed, and the size of the circle. 
Ex: `let firstCircle = SimpleCircle(topLeftCorner: CGPoint(x: 80, y: 80), size: 80)`. 
