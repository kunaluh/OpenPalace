package net.codecomposer.palace.iptscrae.command
{
	import net.codecomposer.palace.iptscrae.PalaceController;
	import net.codecomposer.palace.iptscrae.PalaceIptManager;
	
	import org.openpalace.iptscrae.IptCommand;
	import org.openpalace.iptscrae.IptExecutionContext;
	import org.openpalace.iptscrae.token.IntegerToken;
	
	public class ISLOCKEDCommand extends IptCommand
	{
		override public function execute(context:IptExecutionContext):void {
			var pc:PalaceController = PalaceIptManager(context.manager).pc;
			var spotId:IntegerToken = context.stack.popType(IntegerToken);
			context.stack.push(new IntegerToken( pc.isLocked(spotId.data) ? 1 : 0 ));				
		}
	}
}