package 
{
	import flash.display.MovieClip;
	import flash.display.SimpleButton;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.TextEvent;
	import flash.text.TextField;
	import flash.text.TextFieldType;
	import flash.text.TextFormat;
	import flash.net;
	
	/**
	 * ...
	 * @author Collin Loot
	 */
	public class Main extends Sprite 
	{
		// Vars
		private var _bckgrnd:MovieClip = new bckGrnd();
		private var _lgnBut:SimpleButton = new lginBut();
		private var _rgsBut:SimpleButton = new rgstBut();
		
		private var _butHolder:MovieClip = new MovieClip();
		
		private var _usrnm:TextField = new TextField();
		private var _pswrd:TextField = new TextField();
		
		private var _textFmt:TextFormat = new TextFormat();
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			_butHolder.addEventListener(MouseEvent.CLICK, onClick);
			
			// Positioning.
			
			// Background
			_bckgrnd.x = 150;
			_bckgrnd.y = 150;
			addChild(_bckgrnd);
			
			// New text format.
			_textFmt.size = 26
			
			// Input boxes
			_usrnm.x = 350;
			_usrnm.y = 175;
			_usrnm.width = 200;
			_usrnm.height = 30;
			_usrnm.border = true;
			_usrnm.defaultTextFormat = _textFmt;
			_usrnm.type = TextFieldType.INPUT;
			addChild(_usrnm);
			
			_pswrd.x = 350;
			_pswrd.y = 225;
			_pswrd.width = 200;
			_pswrd.height = 30;
			_pswrd.border = true;
			_pswrd.defaultTextFormat = _textFmt;
			_pswrd.type = TextFieldType.INPUT;
			addChild(_pswrd);
			
			// Buttons
			_lgnBut.x = 175;
			_lgnBut.y = 295;
			_butHolder.addChild(_lgnBut);
			_rgsBut.x = 425;
			_rgsBut.y = 295;
			_butHolder.addChild(_rgsBut);
			
			// Add buttonholder
			addChild(_butHolder);
		}
		
		private function onClick(e:MouseEvent):void
		{
			switch (e.target) 
			{
				case _lgnBut:
					var test:String = _usrnm.text;
					trace(test);
				break;
				case _rgsBut:
					trace("Pressed Register");
				break;
			}
		}
		
		public function processLogin
		
	}
	
}