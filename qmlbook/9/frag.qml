import QtQuick 2.5

Rectangle {
	id: root
	width: 480
	height: 240
	color: '#1e1e1e'
	property int step: 4

	Grid {
		anchors.centerIn: parent
		spacing: 20

		rows: 2
		columns: 4

		Image {
			id: sourceImage
			width: 80
			height: width
			source: '../images/tulips.jpg'
		}

		ShaderEffect {
			id: effect
			width: 80
			height: width
			property variant source: sourceImage
			visible: root.step>1

			fragmentShader: "
				uniform lowp float qt_Opacity;
				void main() {
					gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0) * qt_Opacity;
				}"
		}

		ShaderEffect {
			id: effect2
			width: 80
			height: width
			property variant source: sourceImage
			visible: root.step>2

			fragmentShader: "
				varying highp vec2 qt_TexCoord0;
				uniform sampler2D source;
				uniform lowp float qt_Opacity;
				void main() {
					gl_FragColor = texture2D(source, qt_TexCoord0) * vec4(1.0, 0.0, 0.0, 1.0) * qt_Opacity;
				}"
		}

		ShaderEffect {
			id: effect3
			width: 80
			height: width
			property variant source: sourceImage
			property real redChannel: 0.3
			visible: root.step>2

			fragmentShader: "
				varying highp vec2 qt_TexCoord0;
				uniform sampler2D source;
				uniform lowp float qt_Opacity;
				uniform lowp float redChannel;
				void main() {
					gl_FragColor = texture2D(source, qt_TexCoord0) * vec4(redChannel, 1.0, 1.0, 1.0) * qt_Opacity;
				}"
		}

		ShaderEffect {
			id: effect4
			width: 80
			height: width
			property variant source: sourceImage
			property real redChannel: 0.3
			visible: root.step>3

			NumberAnimation on redChannel {
				from: 0.0
				to: 1.0
				loops: Animation.Infinite
				duration: 4000
			}

			fragmentShader: "
				varying highp vec2 qt_TexCoord0;
				uniform sampler2D source;
				uniform lowp float qt_Opacity;
				uniform lowp float redChannel;
				void main() {
					gl_FragColor = texture2D(source, qt_TexCoord0) * vec4(redChannel, 1.0, 1.0, 1.0) * qt_Opacity;
				}"
		}
	}
}
