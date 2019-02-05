package;

import flixel.FlxState;
import neko.vm.Thread;
import flixel.FlxG;
import flixel.tile.FlxTilemap;

class PlayState extends FlxState
{
	var t1:Thread;
	override public function create():Void
	{
		super.create();
		t1 = Thread.create(handleInput);
		t1.sendMessage(Thread.current());

		var level = new World();
		add(level);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		var msg:String = Thread.readMessage(false);
		if (msg != null){
			trace(msg);
		}
	}

	static function handleInput()
	{
		var main:Thread = Thread.readMessage(true);
		while(true){
			if(FlxG.keys.justPressed.SPACE){
				main.sendMessage("SPACE");
				trace("SENDING");
			}
		}
	}
}
