package objects;

import flixel.group.FlxSpriteGroup;
import flixel.group.FlxGroup;
import flixel.FlxSprite;
import flixel.FlxG;

class Object extends FlxSprite
{
    var name:String;
    var desc:String;

    public function new(objName:String, objDesc:String)
    {
        name = objName;
        desc = objDesc;
        super();
    }
    
    override public function update(elapsed:Float):Void
    {
        super.update(elapsed);
    }
}
