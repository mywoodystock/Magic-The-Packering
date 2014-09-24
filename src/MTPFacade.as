package 
{
	import mvc.controller.commands.startup.StartupCommand;
	import mvc.controller.constants.MTPNotifications;
	import org.puremvc.as3.patterns.facade.Facade;
	
	/**
	 * ...
	 * @author Adam
	 */
	public class MTPFacade extends Facade 
	{
		private static var _instance:MTPFacade;
		
		
		public static function getInstance() :MTPFacade
		{
			if ( _instance == null)
			{
				_instance = new MTPFacade();
			}
			
			return _instance;
		}
		
		
		public function MTPFacade() 
		{
			super();
			
			
		}
		
		override protected function initializeController() :void
		{
			super.initializeController();
			
			registerCommand(MTPNotifications.STARTUP, StartupCommand);
		}
		
	}

}