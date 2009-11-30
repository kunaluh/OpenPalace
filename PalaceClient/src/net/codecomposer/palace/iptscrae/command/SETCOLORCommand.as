package net.codecomposer.palace.iptscrae.command
{
	import net.codecomposer.palace.iptscrae.PalaceIptManager;
	
	import org.openpalace.iptscrae.IptCommand;
	import org.openpalace.iptscrae.IptExecutionContext;
	import org.openpalace.iptscrae.token.IntegerToken;
	
	public class SETCOLORCommand extends IptCommand
	{
		override public function execute(context:IptExecutionContext) : void {
			var color:IntegerToken = context.stack.popType(IntegerToken);
			PalaceIptManager(context.manager).pc.changeColor(color.data);
		}
	}
}