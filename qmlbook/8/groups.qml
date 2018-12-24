import QtQuick 2.5
import QtQuick.Particles 2.0

Rectangle {

	id: root
	width: 480
	height: 240

	color: "#1f1f1f"
	property bool tracer: true

	ParticleSystem {
		id: particleSystem
	}

	ImageParticle {
		id: smokePainter
		system: particleSystem
		groups: ['smoke']
		source: "../images/particle.png"
		alpha: 0.3
		//entryEffect: ImageParticle.None
	}
	ImageParticle {
		id: rocketPainter
		system: particleSystem
		groups: ['rocket']
		source: "../images/rocket.png"
		alpha: 0.3
		entryEffect: ImageParticle.Fade
	}

	Emitter {
		id: rocketEmitter
		anchors.bottom: parent.bottom
		width: parent.width;
		height: 40
		system: particleSystem
		group: 'rocket'
		emitRate: 0.8
		maximumEmitted: 5
		lifeSpan: 6000
		lifeSpanVariation: 400
		size: 64 
		velocity: AngleDirection {
			angle: 270
			magnitude: 150
			magnitudeVariation: 10
		}
		acceleration: AngleDirection {
			angle: 90
			magnitude: 50
		}

		Tracer { 
			color: 'red'
			visible: root.tracer 
		}
	}

	TrailEmitter {
		id: smokeEmitter 
		system: particleSystem 
		//emitHeight: 1
		//emitWidth: 4
		group: 'smoke'
		follow: 'rocket'
		size: 16
		sizeVariation: 8
		emitRatePerParticle: 16
		velocity: AngleDirection {
			angle: 90
			magnitude: 100
			angleVariation: 15
		}
		lifeSpan: 200
		//endSize: 0
	}

	Friction {
		groups: ['rocket']
		anchors.top: parent.top
		width: parent.width
		height: 80
		system: particleSystem 
		threshold: 5
		factor: 0.9
	}

	Turbulence {
		groups: ['rocket']
		anchors.bottom: parent.bottom
		width: parent.width
		height: 160
		system: particleSystem 
		strength: 25

		Tracer {
			color: 'green'
			visible: root.tracer 
		}
	}

	ImageParticle {
		id: sparklePainter
		system: particleSystem 
		groups: ['sparkle']
		color: 'red'
		colorVariation: 0.6
		source: '../images/star.png'
		alpha: 0.3
	}


	GroupGoal {
		id: rocketChanger
		anchors.top: parent.top 
		width: parent.width
		height: 80
		system: particleSystem 
		groups: ['rocket']
		goalState: 'explosion' 
		jump: true 
		Tracer { 
			color: 'blue'
			visible: root.tracer 
		}
	}

	ParticleGroup {
		name: 'explosion'
		system: particleSystem

		TrailEmitter {
			id: explosionEmitter
			anchors.fill: parent 
			group: 'sparkle'
			follow: 'rocket'
			lifeSpan: 750
			emitRatePerParticle: 200 
			size: 32
			velocity: AngleDirection {
				angle: -90
				angleVariation: 180
				magnitude: 50
			}
		}

		TrailEmitter {
			id: explosion2Emitter
			anchors.fill: parent
			group: 'sparkle' 
			follow: 'rocket' 
			lifeSpan: 250
			emitRatePerParticle: 100 
			size: 32

			velocity: AngleDirection {
				angle: 90
				angleVariation: 15
				magnitude: 400
			}
		}
	}



}
