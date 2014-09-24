package
{
	/**
	 * ...
	 * @author Adam
	 */
	public function log( message:String, sender:Object = null) :void 
	{
		if (message != null)
		{
			var fullMessage:String = "";
			
			/*if (sender != null)
			{
				fullMessage += sender.prototype + " | ";
			}*/
			
			fullMessage += message;
			
			trace(fullMessage);
			
		}
		else
		{
			// INVALID LOG
		}
		
	}
}