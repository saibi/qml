import QtQuick 2.5

Rectangle {
	id: root
	width: 480
	height: 240
	color: '#1e1e1e'

	Image {
		id: sourceImage
		width: 160
		height: width
		source: '../images/lighthouse.jpg'
		visible: false
	}

	Rectangle {
		anchors.centerIn: parent
		width: 160
		height: width
		color: '#333333'
	}

	ShaderEffect {
		id: genieEffect
		width: 160
		height: width
		anchors.centerIn: parent
		property variant source: sourceImage
		property bool minimized: false

		MouseArea {
			anchors.fill: parent
			onClicked: genieEffect.minimized = !genieEffect.minimized 
		}

		property real minimize: 0.0
		property real bend: 0.0


		SequentialAnimation on minimize {
			id: animMinimize
			running: genieEffect.minimized
			PauseAnimation { 
				duration: 300 
			}
			NumberAnimation { 
				to: 1
				duration: 700
				easing.type: Easing.InOutSine 
			}
			PauseAnimation { 
				duration: 1000 
			}
		}

		SequentialAnimation on minimize {
			id: animNormalize
			running: !genieEffect.minimized
			NumberAnimation { 
				to: 0 
				duration: 700
				easing.type: Easing.InOutSine 
			}
			PauseAnimation { 
				duration: 1300 
			}
		}

		vertexShader: "
			uniform highp mat4 qt_Matrix;
			attribute highp vec4 qt_Vertex;
			attribute highp vec2 qt_MultiTexCoord0;
			varying highp vec2 qt_TexCoord0;
			uniform highp float minimize;
			uniform highp float width;
			uniform highp float height;

			void main() {
				qt_TexCoord0 = qt_MultiTexCoord0;
				highp vec4 pos = qt_Vertex;
				pos.y = mix(qt_Vertex.y, height, minimize);
				highp float t = pos.y / height;
				pos.x = mix(qt_Vertex.x, width, t * minimize);
				gl_Position = qt_Matrix * pos;
			}"
	}
}
