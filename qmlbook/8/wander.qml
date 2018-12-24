import QtQuick 2.5
import QtQuick.Particles 2.0

Rectangle {
	id: root

	width: 480 
	height: 320
	color: "#1f1f1f"

	ParticleSystem {
		id: particleSystem
	}

	Emitter {
		id: emitter
		anchors.left: parent.left 
		anchors.verticalCenter: parent.verticalCenter
		width: 1
		height: 1
		system: particleSystem
		lifeSpan: 6400
		lifeSpanVariation: 400
		size: 32

		velocity: AngleDirection {
			angle: 0
			angleVariation: 15
			magnitude: 100
			magnitudeVariation: 50
		}
	}

	ImageParticle {
		source: '../images/particle.png'
		system: particleSystem
		color: '#FFD700'
		colorVariation: 0.2
		rotation:15
		rotationVariation: 5
		rotationVelocity: 45
		rotationVelocityVariation: 15
		entryEffect: ImageParticle.Scale
	}

	Wander {
		anchors.horizontalCenter: parent.horizontalCenter
		width: 240
		height:120
		system: particleSystem
		affectedParameter: Wander.Position
		pace: 200
		yVariance: 240
		Tracer {}
	}
}
