// boundary positionCheck backup
/*
void checkPosition() {
    // check boundary/container and tile boundary
    if (x < containerX) x = containerX; //for my x side
    if (x > containerX + containerSize - tileSize) x = containerX + containerSize;// stay in tile and cont.
    if (y < containerY) y = containerY;// for my Y side
    if (y > containerY + containerSize - tileSize) y = containerY + containerSize; // < 700 (or 720) same as X

    //check if it's not walkable 700x700 container! or 720
    if (x >= boundaryX && x <= boundaryX + boundaryWidth
      && y >= boundaryY && y <= boundaryY + boundaryY + boundaryHeight) {
      // need to find a stop, dont redo position
      x = containerX + startCol * tileSize; // bring me back to org tile
      y =  containerY + startRow * tileSize;
    }// end of boundary
  }//end of checkPosition
  /*
