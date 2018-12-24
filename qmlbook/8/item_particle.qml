import QtQuick 2.5
import QtQuick.Particles 2.0

Rectangle {
	id: root

	width: 480 
	height: 400 
	color: "#1f1f1f"

	property var images: [
		'earth.jpeg',
		'mars.jpeg',
		'particle.png', 
		'star.png',
		'jupiter.jpeg',
		'mercury.jpeg',
		'venus.jpeg',
		'soccer_ball.png'
	]

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
		emitRate: 4
		lifeSpan: 2000
		lifeSpanVariation: 400
		size: 32

		velocity: TargetDirection {
			targetX: 100
			targetY: 0
			targetVariation: 100/6
			magnitude: 100
		}

	}

	ItemParticle {
		id: particle 
		system: particleSystem
		delegate: itemDelegate 
	}

	Component {
		id: itemDelegate
		Item {
			id: container
			width: 32 * Math.ceil( Math.random() * 3 ) 
			height: width

			Image {
				anchors.fill: parent 
				anchors.margins: 4
				source: '../images/' + images[ Math.floor(Math.random() * 8)]
			}
		}
	}
}
