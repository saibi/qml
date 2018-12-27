import QtQuick 2.5

ShaderEffect {
	id: genieEffect
	width: 160
	height: width
	anchors.centerIn: parent
	property variant source
	mesh: GridMesh { resolution: Qt.size(10, 10) }
	property real minimize: 0.0
	property real bend: 0.0
	property bool minimized: false
	property real side: 0.5

	
	ParallelAnimation {
		id: animMinimize
		running: genieEffect.minimized

		SequentialAnimation {
			PauseAnimation { duration: 300 }
			NumberAnimation { 
				target: genieEffect
				property: 'minimize'
				to: 1
				duration: 700
				easing.type: Easing.InOutSine 
			}
			PauseAnimation { duration: 1000 }
		}
		SequentialAnimation {
			NumberAnimation { 
				target: genieEffect
				property: 'bend'
				to: 1
				duration: 700
				easing.type: Easing.InOutSine 
			}
			PauseAnimation { duration: 1300 }
		}
	}


	ParallelAnimation {
		id: animNormalize
		running: !genieEffect.minimized
		SequentialAnimation {
			NumberAnimation { 
				target: genieEffect
				property: 'minimize'
				to: 0 
				duration: 700
				easing.type: Easing.InOutSine 
			}
			PauseAnimation { duration: 1300 }
		}
		SequentialAnimation {
			PauseAnimation { duration: 300 }
			NumberAnimation { 
				target: genieEffect
				property: 'bend'
				to: 0 
				duration: 700
				easing.type: Easing.InOutSine 
			}
			PauseAnimation { duration: 1000 }
		}
	}

	vertexShader: "
		uniform highp mat4 qt_Matrix;
		attribute highp vec4 qt_Vertex;
		attribute highp vec2 qt_MultiTexCoord0;
		uniform highp float width;
		uniform highp float height;
		uniform highp float minimize;
		uniform highp float bend;
		uniform highp float side;
		varying highp vec2 qt_TexCoord0;

		void main() {
			qt_TexCoord0 = qt_MultiTexCoord0;
			highp vec4 pos = qt_Vertex;
			pos.y = mix(qt_Vertex.y, height, minimize);
			highp float t = pos.y / height;
			t = (3.0 - 2.0 * t) * t * t;
			pos.x = mix(qt_Vertex.x, side * width, t * bend);
			gl_Position = qt_Matrix * pos;
		}"


}

