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
