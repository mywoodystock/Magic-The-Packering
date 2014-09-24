package mvc.view.components.screens 
{
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Adam
	 */
	public class MTPScreen extends Sprite 
	{
		protected var _id:String;
		
		public function MTPScreen(id:String) 
		{
			_id = id;
		}
		
		public function get id() :String
		{
			return _id;
		}
		
	}

}