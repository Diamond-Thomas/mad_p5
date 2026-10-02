### How did you configure your pubspec.yaml to register the images? What happens when you display a large image without container constraints, and how does BoxFit.cover handle scaling?

I put my images in two different folder nested so that if I wanted I could target the image folder itself instead of the individual images. One of the wat that the image changed when it had container restraints is that the image tried to display at its original size and BoxFit.cover helped with keeping the image clear withought it causing distortion and cropped it once it reached a certain size small.

### What happens if you remove Expanded from one of the three tiles in the Row? How does Expanded communicate size constraints down to your BradyTile?

When I removed expanded from one of the three tiles in the row the tile that is is removed from gets bigger to fit its original pixel size verses trying to size to fit so that all the images are the same size equally. This makes is so that expanded tiles only get the remaining size after the unexpanded tile is at full size.

### Describe how nesting Expanded widgets both vertically (inside the Column) and horizontally (inside each Row) enforces the “Golden Rule” of Flutter layout (“Constraints go down, Sizes go up”).

Because expanded widgets split up space the constraints comes down from the parent column then divides the space between each row equally.