package vlc;

import vlc.MP4Handler;

import openfl.events.Event;
import flixel.FlxG;

/**
 * Play a video using cpp.
 * Use bitmap to connect to a graphic or use `MP4Sprite`.
 */
class MP4Handler
{
	public var isDisposed:Bool = false;
	public var readyCallback:Void->Void;
	function onVLCOpening(){
		super.onVLCOpening();
		if (readyCallback != null)
			readyCallback();
	}

	override function dispose(){
		isDisposed = true;
		super.dispose();
	}

	public function finishVideo()
		onVLCEndReached();
	
}
