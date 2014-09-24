package mvc.view.mediators 
{
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	/**
	 * ...
	 * @author Adam
	 */
	public class MTPMainMediator extends Mediator 
	{
		public static const NAME:String = "MTPMAinMediator";
		
		
		
		public function MTPMainMediator( mtpMain:MTPMain ) 
		{
			super(NAME, mtpMain);
		}
		
		
		public function get mtpMain() :MTPMain
		{
			return viewComponent as MTPMain;
		}
		
	}

}