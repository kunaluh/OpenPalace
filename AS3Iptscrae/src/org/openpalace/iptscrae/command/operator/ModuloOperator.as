package org.openpalace.iptscrae.command.operator
{
	import org.openpalace.iptscrae.IptExecutionContext;
	import org.openpalace.iptscrae.IptCommand;
	import org.openpalace.iptscrae.token.IntegerToken;
	
	public class ModuloOperator extends IptCommand
	{
		override public function execute(context:IptExecutionContext):void {
			var a2:IntegerToken = context.stack.popType(IntegerToken);
			var a1:IntegerToken = context.stack.popType(IntegerToken);
			context.stack.push(new IntegerToken(a1.data % a2.data));
		}
	}
}