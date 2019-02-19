import React from 'react';
import {Entity, Scene} from 'aframe-react';

class SceneView extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            appRendered: false,
            selectedObjId: ''
        };
    }

    componentDidMount() {
        if (typeof window !== 'undefined') {
            var aframe = require('aframe')
            this.setState({ appRendered: true })
        }
        require('./drag-rotate-component')
    }

    selectObject = (args) => {
        let selectedObjId = args.target.id;
        if(selectedObjId != this.state.selectedObjId) {
            this.setState({
                selectedObjId: selectedObjId
            });
            console.log(args.target.getAttribute('position'));
        } else {
            this.setState({
                selectedObjId: ''
            });
        }
        let infoText = document.getElementById('infoText');
        console.log(infoText.getAttribute('text').value);
        infoText.setAttribute('text', {value:'currently selected object: '+this.state.selectedObjId});
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
                <Entity id="infoText" text={{value: 'Select an object to move.'}} position={{x: 0, y: 2, z: -1}}/>
                
                <Entity
                    id="redSphere"
                    geometry={{primitive: 'sphere', radius: 0.5}}
                    material={{color: 'red'}}
                    position={{x: 1, y: 1, z: -3}}
                    class="clickable"
                    events={{click: this.selectObject.bind(this)}}
                />
                <Entity
                    id="greenBox"
                    geometry={{primitive: 'box'}}
                    material={{color: 'green'}}
                    position={{x: -1, y: 1, z: -3}}
                    class="clickable"
                    events={{click: this.selectObject.bind(this)}}
                    // drag-rotate-component
                />

                <Entity primitive="a-camera" wasd-controls-enabled="false" look-controls="reverseMouseDrag: true;" mouse-cursor>
                    <Entity cursor="rayOrigin: mouse;" raycaster="objects: .clickable;" />
                </Entity>
            </Scene>
            }
        </div>
        )
    }
}

export default SceneView
