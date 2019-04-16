import QtQuick 2.5

Item {
	id: root

	Component.onCompleted: {
		var keys = Object.keys(root);

		for(var i = 0 ;  i < keys.length; i++ ) {
			var key = keys[i];

			console.log(key + ' : ' + root[key]);
		}
		
	}
}
