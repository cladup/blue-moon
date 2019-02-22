import React from 'react';
import {Entity, Scene} from 'aframe-react';

class SceneView extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            appRendered: false,
        };
    }

    componentDidMount() {
        if (typeof window !== 'undefined') {
            require('aframe');
            require('aframe-environment-component');
            require('./init-product.js');
            this.setState({ appRendered: true })
        }

    }

    selectObject = (args) => {
        args.target.setAttribute('wasd-controls', {enabled: 'true'});
    }
    
    deselectObject = (args) => {
        args.target.setAttribute('wasd-controls', {enabled: 'false'});
    }

    render() {
        return (
            <div style={{ height: '100%', width: '100%' }}>
                {this.state.appRendered &&
                <Scene embedded vr-mode-ui="enabled: false;" shadow="type: pcf;">
                    <a-assets timeout="3000">
                        {/*  Images */}
                        <img id="wallBack" src="/static/resources/img/SonyCenter_360panorama.jpg" />
                        <img id="bag-sample-picture" src="/static/resources/img/bag-sample-01.jpg" />
                        <img id="panel-background" src="/static/resources/img/background.png" />
                        <img id="cancel-img" src="/static/resources/img/cancel.png" />
                        <img id="iron-wall" src="/static/resources/environments/Enviroment/tiled_circle/iron_wall/iron_wall.png" />
                        <img id="wood" src="/static/resources/environments/Enviroment/tiled_circle/water_circle_wood/wood_floor.png" />

                        {/*  3D Object */}
                        <a-asset-item id="beach-bag" src="/static/resources/models/beach_bag/beach_bag.glb" />

                        {/*  Environment */}
                        <a-asset-item id="modern-building-gltf" src="/static/resources/environments/Enviroment/enviroment_non_glass.glb" />
                        <a-asset-item id="modern-building-iron-wall-obj" src="/static/resources/environments/Enviroment/tiled_circle/iron_wall/tiled_circle_iron_wall_exterior.obj" />
                        <a-asset-item id="modern-building-water-circle-obj" src="/static/resources/environments/Enviroment/tiled_circle/water_circle_wood/outer_water_circle.obj" />
                        <a-asset-item id="modern-building-window-obj" src="/static/resources/environments/Enviroment/glass/glass_no_transparency.obj" />

                    </a-assets>
                    <Entity id="environment">
                        {/*  Lights */}
                        <Entity light="type: spot; castShadow:false; angle: 70; color: #fdb31a; distance: 20; intensity: 1.5; penumbra: 0.5;" position="0 10 0" rotation="-90 0 0"></Entity>
                        <Entity light="type: ambient; intensity: 0.5; castShadow: false;" position="0 1 0" />
                        <Entity light="type: directional; intensity: 0.5; castShadow: true; shadowCameraTop: 10; shadowCameraRight: 10; shadowCameraBottom: -10; shadowCameraLeft: -10" position="-14 40 0" />

                        {/* <Entity id="floor" geometry="primitive: plane; height: 25; width: 25"
                            material="repeat: 50 50; src: #grayCarpetfloor; width: 25"
                            rotation="-90 0 0" position="0 0 0"></Entity>
                        <Entity geometry="primitive: cylinder; openEnded: true; radius: 10; height: 10" material="side: double"
                            position="0 3.5 0"></Entity>
                        <a-curvedimage src="#wallBack" height="40" radius="40" theta-length="360" shader="flat"
                        rotation="0 0 0" position="0 10 0"></a-curvedimage> 
                        <a-sky src="#wallBack" radius="60" position="0 -5 0"></a-sky> */}
                        <Entity environment="   preset: forest; 
                                                shadow: false; 
                                                skyType: atmosphere; 
                                                playArea: 1; 
                                                grid: cross; 
                                                fog: 0; 
                                                ground: flat; 
                                                groundColor: #304529;
                                                groundColor2: #374f2f;
                                                groundTexture: checkerboard;
                                                dressingAmount: 100" 
                                position="0 -2 0"
                        />

                        {/*  3D Model */}
                        <Entity id="Env1-1" position="0.4 23.17 -0.5" scale="100 100 100" gltf-model="#modern-building-gltf" shadow="receive: true;" />
                        <a-obj-model id="Env1-2" position="0.1 -0.78 -0.5" scale="1 1 1" src="#modern-building-iron-wall-obj" material="src: #iron-wall; repeat: 3 3; transparent:true;" shadow="receive: true;" />
                        <a-obj-model id="Env1-3" position="0.1 -0.78 -0.5" scale="1 1 1" src="#modern-building-water-circle-obj" material="src: #wood; repeat: 10 10;" shadow="receive: true;" />
                        <a-obj-model id="Env1-4" position="0.0 -0.30 -1.735" scale="1 1 1" src="#modern-building-window-obj" material="color: skyblue; repeat: 2 2;opacity: 0.4; transparent:true;" shadow="receive: true;" />
                    </Entity>

                    <Entity id="products" className="3d-sample-section">
                        <Entity
                            init-product
                            id="bag-sample-1"
                            position="0 1.06 -2.63"
                            rotation="0 0 0"
                            scale="100 100 100"
                            gltf-model="#beach-bag"
                            class="clickable"
                            events={{
                                mousedown: this.selectObject.bind(this),
                                mouseup: this.deselectObject.bind(this)
                            }}
                        />
                    </Entity>

                    {/* camera */}
                    <Entity primitive="a-camera"  id="player" position="0 2 0" rotation="0 180 0" wasd-controls="enabled: false" look-controls="reverseTouchDrag: true; reverseMouseDrag: true;" raycaster="objects: .clickable;" cursor="rayOrigin: mouse; fuse: false" look-controls="touchEnabled: true;" />
                </Scene>
                }
            </div>
        )
    }
}

export default SceneView
