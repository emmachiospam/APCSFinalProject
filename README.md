# APCSFinalProject
Group Name: Vegtris

Group Members: Emma Chio, Angela Cai

Brief Project Descripition:
Tetris is a game that involves different blocks made up of four individuals tiles and filling the rows using these different blocks. Users can turn these tiles up, down, left, and right to better fit in the way they want.

Google Docs Link:
https://docs.google.com/document/d/1lMI12PImqNcg-z6ZqDGoK4aqGeMcMWb08jGhdtmxXLs/edit?usp=sharing

Emma (5/25): planned for spawning, wrote constructor and display for grid and game file itself

Angela(5-25): added a seventh game piece and started working on pieces by adding constructor + display.

Angela (5-26): switched up the approach of how we're storing the piece coordinates. Instead of coordinates of the GRAPH, we scaled it as the coordinates of the GRID. Top left corner of grid is 0,0 and right is x++ and down is y++ like normal. keyPresssed direction moves (right, left, down) works, however, having trouble with bounding it. Next goals is to fix that and get the automatic falling motion of the pieces working.

Emma (5-27): made sure the pieces could only move within the grid

Angela (5-27): falling motion of the pieces work. can control pace of motion

Angela (5-28): started transitioning the six smaller classes into a single big one. Also was able to create a rotate method that had a designated rotation point for CCW or CW pieces. For the convenience and design, we chose to stick with CW though we can add an extra CCW option too.

Emma (5-29): worked on coloring each block and making sure that the pieces rotate within the grid

Angela (6-2): successfully bounded next rotations of pieces.

Angela (6-3): while on zoom call with emma, we sucessfully created new spawn when a piece falls on the very bottom of the grid. However, we tried and failed to create a new spawn a piece falls on a neighbor piece. For the demo, we kept it at spawning when piece is at bottom

Emma (6-3): went on call with Angela and worked on spawning a new piece once the current piece landed. Originally there was trouble about only being able to move the first piece that was spawned but managed to move that control to the current piece that last spawned. Transitioned pieces into an arraylist. However, while working have no yet been able to get pieces to stop moving at neighbors.

Angela (6-4): neighbor detection works and pieces stop when there's a neighbor piece.

Emma (6-4): worked on neighbor detection on the side

Emma (6-5): worked on spacebar falling all the way down

Emma (6-6): added comments to make the code easier to read

Emma (6-7): got rid of an unnecessary file as well as showing future pieces.

Emma (6-10): worked on turning the board into an array that would be able to display the pieces. Additionally, implemented the breaking of the row when it was filled

Angela (6-10): worked on breaking rows of the pieces. However, to do this, we had to change how we implemented our other methods including neighbor detection where we had some trouble.
