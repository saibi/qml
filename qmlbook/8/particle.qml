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
		anchors.centerIn: parent
		width: 160
		height: 80
		system: particleSystem
		emitRate: 10
		lifeSpan: 1000
		lifeSpanVariation: 500
		size: 16 
		endSize: 32

		Tracer {
			color: 'green'
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
