package mvc.view.components.navigatiors 
{
	import flash.display.Sprite;
	import mvc.view.components.screens.menu.MenuScreen;
	import mvc.view.components.screens.MTPScreen;
	import utils.VectorUtils;
	
	/**
	 * ...
	 * @author Adam
	 */
	public class MTPScreenNavigator extends Sprite 
	{
		public static var _instance:MTPScreenNavigator;
		
		public static function getInstance() :MTPScreenNavigator
		{
			if (_instance == null)
			{
				_instance = new MTPScreenNavigator();
			}
			
			return _instance;
		}
		
		
		
		
		protected var _screens:Object;
		
		public function MTPScreenNavigator() 
		{
			initScreens();
		}
		
		
		protected function initScreens() :void
		{
			var menuScreen:MenuScreen = new MenuScreen();
			
			addScreen( menuScreen );
			
			
			
		}
		
		
		
		
		
		public function addScreen( screen:MTPScreen ) :void
		{
			log("addScreen " + screen.id, this);
			if (_screens[ screen.id ] == null)
			{
				_screens[ screen.id ] = screen;
			}
			else
				log("Screen already with id: " + screen.id, this);
		}
		
	}

}