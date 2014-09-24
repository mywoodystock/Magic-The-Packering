package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import mvc.controller.constants.MTPNotifications;
	import mvc.view.components.navigatiors.MTPScreenNavigator;
	import org.puremvc.as3.patterns.facade.Facade;
	
	/**
	 * ...
	 * @author Adam
	 */
	public class MTPMain extends Sprite 
	{
		protected var _facade:MTPFacade;
		
		protected var _screenNavigator:MTPScreenNavigator;
		
		public function MTPMain():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			//initialise the facade
			_facade = MTPFacade.getInstance();
			_facade.sendNotification(MTPNotifications.STARTUP, this);
			
			
			//create the screen navigator;
			_screenNavigator = MTPScreenNavigator.getInstance();
			this.addChild(_screenNavigator);
		}
	}
	
}