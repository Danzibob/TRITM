package;

import flixel.group.FlxSpriteGroup;
import flixel.group.FlxGroup;
import flixel.FlxSprite;
import flixel.FlxG;
import flixel.tile.*;
import objects.Object;

typedef WorldPoint = {
    var x:Int;
    var y:Int;
}

class World extends FlxTilemap
{
    var w: Int;
    var h: Int;
    var tiles:Array<Array<Int>>;
    // Objects go in the "group" spritegroup

    public function new()
    {
        super();
        loadTilesheet();
    }

    public function loadFromFile()
    {

    }

    private function loadTilesheet()
    {
        var tilesheetPath = "assets/images/ShittyTileMap.png";
        var mapData = "-1,0,1,2,3\n1,-1,2,-1,1\n1,-1,-1,3,1\n1,0,0,-1,1\n1,1,1,1,1";
        loadMapFromCSV(mapData, tilesheetPath, 32, 32);
    }
    
    override public function update(elapsed:Float):Void
    {
        super.update(elapsed);
    }
}

enum Tiles {
    WALL;
    DOOR(dir:Dir);
}

enum Dir {
    NORTH;
    EAST;
    SOUTH;
    WEST;
}

enum ObjTypes {
    PICKUP;
    STATIC;
}
