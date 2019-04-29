import Qt3D.Core 2.0
import Qt3D.Render 2.0
import Qt3D.Extras 2.0

Entity {
	property alias position: transform.translation
	PhongMaterial {
		id: material
		diffuse: "red"
	}

	SphereMesh {
		id: mesh
	}

	Transform {
		id: transform
	}

	components: [material, mesh, transform]
}
