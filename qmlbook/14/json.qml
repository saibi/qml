import QtQuick 2.5

Item {
	id: root

	property var obj: {
		key: 'kkk'
	}


	Component.onCompleted: {
		console.log(obj);
		var data = JSON.stringify(obj);

		console.log(data);

		var o = JSON.parse(data);

		console.log(o);
	}
}
