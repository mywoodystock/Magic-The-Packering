package mvc.controller.commands.startup 
{
	import mvc.view.mediators.MTPMainMediator;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	
	/**
	 * ...
	 * @author Adam
	 */
	public class StartupCommand extends SimpleCommand 
	{
		
		override public function execute( notification:INotification ) :void
		{
			//fetch the document class
			var mtpMain:MTPMain = notification.getBody() as MTPMain;
			
			
			//register all global commands
			
			
			//register all global proxies
			
			//register all global mediators
			var mtpMediator:MTPMainMediator = new MTPMainMediator(mtpMain);
			facade.registerMediator(mtpMediator);
			
			//begin the packering
		}
		
	}
}