import Qt3D.Core 2.0
import Qt3D.Render 2.0
import Qt3D.Extras 2.0

Entity {
	id: sceneRoot

	RenderSettings {
		id: frameGraph
		activeFrameGraph: ForwardRenderer {
			clearColor: Qt.rgba(0, 0, 0, 1)
		}
	}

	Apple {
		id: apple 
		position: Qt.vector3d(3.0, 0.0, 2.0)
	}

	components: [frameGraph]

}
