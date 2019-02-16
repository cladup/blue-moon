import React from 'react';
import {Entity, Scene} from 'aframe-react';
import registerClickDrag from 'aframe-click-drag-component';

class SceneView extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            appRendered: false,
            color: 'red',
            spherePosX: 1,
            spherePosY: 1.5,
            spherePosZ: -3,
            boxPosX: -1,
            boxPosY: 1,
            boxPosZ: -3
        };
    }

    componentDidMount() {
        if (typeof window !== 'undefined') {
            var aframe = require('aframe')
            registerClickDrag(aframe);
            this.setState({ appRendered: true })
        }
    }

    moveToTheRight()
    {
        this.setState({
            spherePosX: this.state.spherePosX + 0.1
        });
        console.log("moveToTheRight");
    }

    render() {
        return (
        <div style={{ height: '100%', width: '100%' }}>
            {this.state.appRendered &&
            <Scene embedded>
                <a-assets>
                    <img id="groundTexture" src="https://cdn.aframe.io/a-painter/images/floor.jpg"/>
                    <img id="skyTexture" src="https://cdn.aframe.io/a-painter/images/sky.jpg"/>
                </a-assets>

                <Entity primitive="a-plane" src="#groundTexture" rotation="-90 0 0" height="100" width="100"/>
                <Entity primitive="a-light" type="ambient" intensity="2" color="white"/>
                <Entity primitive="a-light" type="point" intensity="4" color="white"/>
                <Entity primitive="a-sky" height="2048" radius="30" src="#skyTexture" theta-length="90" width="2048"/>
                <Entity text={{value: 'Click sphere to move to the right\nClick and Drag box to move', align: 'center'}} position={{x: 0, y: 2, z: -1}}/>
                
                <Entity
                    geometry={{primitive: 'sphere'}}
                    material={{color: 'red'}}
                    position={{x: this.state.spherePosX, y: this.state.spherePosY, z: this.state.spherePosZ}}
                    events={{click: this.moveToTheRight.bind(this)}}
                />
                <Entity
                    click-drag
                    primitive="a-box"
                    position={{x: this.state.boxPosX, y: this.state.boxPosY, z: this.state.boxPosZ}}
                    rotation="0 45 0"
                    color="#4CC3D9"
                />

                {/* <Entity geometry={{primitive: 'box'}} material={{color: 'red'}} position={{x: 0, y: 0, z: -5}}/> */}
                <Entity primitive="a-camera" wasd-controls-enabled="false" >
                    <Entity primitive="a-cursor" animation__click={{property: 'scale', startEvents: 'click', from: '0.1 0.1 0.1', to: '1 1 1', dur: 150}}/>
                </Entity>
            </Scene>
            }
        </div>
        )
    }
}

export default SceneView
