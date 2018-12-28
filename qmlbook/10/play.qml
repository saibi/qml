import QtQuick 2.5
import QtMultimedia 5.6

Item {
	width: 800
	height: 600

	MediaPlayer {
		id: player
		source: '/home/saibi/saibi-mini9/hdd/w64/movie/201812/베놈 Venom, 2018.1080p.WEB-DL.H264.AAC-H2O.mp4'
	}

	VideoOutput {
		id: outputArea
		anchors.left: parent.left
		anchors.right: parent.right 
		anchors.top: parent.top
		
		height: parent.height - 40

		source: player

		MouseArea {
			anchors.fill: parent

			onClicked: {
				if ( player.playbackState == MediaPlayer.PlayingState ) {
					player.pause();
				} else {
					player.play();
				}
			}
		}
	}

	Component.onCompleted: {
		player.play();
	}


	Rectangle {
		id: progressBar

		anchors.left: parent.left
		anchors.right: parent.right
		anchors.bottom: parent.bottom
		//anchors.margins: 100
		height: 30

		color: "lightGray"

		Rectangle {
			anchors.left: parent.left
			anchors.top: parent.top
			anchors.bottom: parent.bottom

			width: player.duration > 0 ? parent.width * player.position / player.duration : 0
			color: "darkGray"

		}
		
		MouseArea {
			anchors.fill: parent

			onClicked: {
				if (player.seekable) {
					player.seek(player.duration * mouse.x / width);
				}
			}
		}
	}

	Connections {
		target: player
		onMediaObjectChanged: {
			if (player.mediaObject) {
				player.mediaObject.notifyInterval = 50;
			}
		}
	}

}
