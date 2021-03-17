### Haxe externs and tools for complex ServiceNow scripting
A man can dream!

Externs built with dts2hx by haxiomic from typings created by Arnoud Kooi for sn-scriptsync.

Zero thanks to ServiceNow themselves, who said straight up "no" to offering d.ts files for public consumption.


```Haxe
package;
import GlideGlobal.*;

class Main {
	public static function main() {
		var gr = new GlideRecord('incident');
		gr.addQuery('foo', 'bar');
		gr.query();
		while (gr.next()) {
			gs.addInfoMessage("Oh hi " + gr.getValue('number'));
		}
	}
}

```