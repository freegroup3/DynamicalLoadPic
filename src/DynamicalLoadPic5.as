package
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.net.URLRequest;
	
	public class DynamicalLoadPic5 extends Sprite
	{
		private var aryPic:String = new String("assets/20.png");
		private var picLoader:Loader = new Loader();
		private var bimap:Bitmap = new Bitmap();
		private var bimap2:Bitmap = new Bitmap();
		private var bimap3:Bitmap = new Bitmap();
		private var bitmapdata:BitmapData = new BitmapData(450,340);
		private var pivNum:uint = 0;

		public function DynamicalLoadPic5()
		{
			picLoader.load(new URLRequest(aryPic));
			picLoader.contentLoaderInfo.addEventListener( Event.COMPLETE, onLoaderCompleteHandler);
			bimap.x = 20;
			bimap.y = 20;
			bimap2.x = 400;
			bimap2.y = 20;
			bimap3.x = 20;
			bimap3.y = 200;
		}
		public function onLoaderCompleteHandler(e:Event):void
		{
			bitmapdata.draw(picLoader);
			bimap.bitmapData = bitmapdata;
			bimap2.bitmapData = bitmapdata;
			bimap3.bitmapData = bitmapdata;
			addChild(bimap);
			addChild(bimap2);
			addChild(bimap3);
		}
	}
}