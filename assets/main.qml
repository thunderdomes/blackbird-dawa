import bb.multimedia 1.0
import bb.cascades 1.0
// ...

Page {
    Container {
        // ...
        
        attachedObjects: [
            MediaPlayer {
                id: player
                sourceUrl: "http://198.105.220.12:9746/;stream.mp3&13740436417&duration=99999"
                
                // Set these properties for video
                videoOutput: VideoOutput.PrimaryDisplay
                windowId: fwcVideoSurface.windowId
                
                onMediaStateChanged: {
                    switch (player.mediaState) {
                        case MediaState.Unprepared:
                            break;
                        case MediaState.Prepared:
                            break;
                        case mediaState.Started:
                            btnPlay.text="Halo"
                            break 
                        // ...
                    }
                }
            }
        ]
        Button {
            id: btnPlay
            text: "Play"
            onClicked: {
                if (player.play() != MediaError.None) {
                    // Your error handling code here.
                }
            }
        }
        
        Button {
            id: btnStop
            text: "Stop"
            onClicked: {
                player.stop();
            }
        }
    
    }
}