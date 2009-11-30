package net.codecomposer.palace.iptscrae.command
{
	import net.codecomposer.palace.iptscrae.PalaceController;
	import net.codecomposer.palace.iptscrae.PalaceIptManager;
	
	import org.openpalace.iptscrae.IptCommand;
	import org.openpalace.iptscrae.IptError;
	import org.openpalace.iptscrae.IptExecutionContext;
	import org.openpalace.iptscrae.IptToken;
	import org.openpalace.iptscrae.IptUtil;
	import org.openpalace.iptscrae.token.IntegerToken;
	import org.openpalace.iptscrae.token.StringToken;
	
	public class DONPROPCommand extends IptCommand
	{
		override public function execute(context:IptExecutionContext) : void {
			var pc:PalaceController = PalaceIptManager(context.manager).pc;
			var token:IptToken = context.stack.pop().dereference();
			if (token is IntegerToken) {
				pc.donPropById(IntegerToken(token).data);
			}
			else if (token is StringToken) {
				pc.donPropByName(StringToken(token).data);
			}
			else {
				throw new IptError("Unsupported data type: " + IptUtil.className(token));
			}
		}
	}
}