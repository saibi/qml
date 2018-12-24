import QtQuick 2.5
import QtQuick.Particles 2.0

Rectangle {
	id: root

	width: 480 
	height: 160
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
		emitRate: 10
		lifeSpan: 6400
		lifeSpanVariation: 400
		size: 32

		velocity: AngleDirection {
			angle: -45
			angleVariation: 0
			magnitude: 100
		}

		acceleration: AngleDirection {
			angle: 90
			magnitude: 25
		}
	}

	ImageParticle {
		source: '../images/star.png' // '../images/particle.png'
		system: particleSystem
		color: '#FFD700'
		colorVariation: 0.2
		rotation:15
		rotationVariation: 5
		rotationVelocity: 45
		rotationVelocityVariation: 15
		entryEffect: ImageParticle.Scale
	}
}
