package org.openpalace.iptscrae.command
{
	import org.openpalace.iptscrae.IptExecutionContext;
	import org.openpalace.iptscrae.token.IntegerToken;
	import org.openpalace.iptscrae.IptCommand;

	public class IPTVERSIONCommand extends IptCommand
	{
		override public function execute(context:IptExecutionContext):void {
			context.stack.push(new IntegerToken(1));
		}
	}
}