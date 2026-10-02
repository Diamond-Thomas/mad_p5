### How did you configure your pubspec.yaml to register the images? What happens when you display a large image without container constraints, and how does BoxFit.cover handle scaling?

I put my images in two different folder nested so that if I wanted I could target the image folder itself instead of the individual images. One of the wat that the image changed when it had container restraints is that the image tried to display at its original size and BoxFit.cover helped with keeping the image clear withought it causing distortion and cropped it once it reached a certain size small.

### What happens if you remove Expanded from one of the three tiles in the Row? How does Expanded communicate size constraints down to your BradyTile?

When I removed expanded from one of the three tiles in the row the tile that is is removed from gets bigger to fit its original pixel size verses trying to size to fit so that all the images are the same size equally. This makes is so that expanded tiles only get the remaining size after the unexpanded tile is at full size.

### Describe how nesting Expanded widgets both vertically (inside the Column) and horizontally (inside each Row) enforces the “Golden Rule” of Flutter layout (“Constraints go down, Sizes go up”).

Because expanded widgets split up space the constraints comes down from the parent column then divides the space between each row equally.

### Compare building a 3x3 grid using nested Row/Column with Expanded versus using GridView.count(crossAxisCount: 3). What are the trade-offs between the two approaches in terms of constraint control, code simplicity, and flexibility?

One of the things I noteced between using rows and columns versus using grid cound was that with gride the photos didn't resize vertically when the screen got smaller or bigger it instead traded off for a scroll. Grid was also significantly easier with code simplicity since their was only one grid instead of three rows wrapped in a column which made the code harder to read. The grid also would make it easy to change how many photos you want in a row.