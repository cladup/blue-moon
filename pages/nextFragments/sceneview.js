import {Entity, Scene} from 'aframe-react';
import React, {Component} from 'react'

class SceneView extends Component {
    constructor(props) {
        super(props);

        let displayStands = [];
        let products = [];
        props.displayStands.forEach(function(displayStand) {
            displayStands = [...displayStands,
                {
                    name: displayStand.name,
                    pos_x: displayStand.position_x,
                    pos_y: displayStand.position_y,
                    pos_z: displayStand.position_z,
                    rot_x: displayStand.rotation_x,
                    rot_y: displayStand.rotation_y,
                    rot_z: displayStand.rotation_z,
                    scale: displayStand.scale
                }
            ];

            displayStand.products.forEach(function(product) {
                products = [...products, 
                    {
                        name: product.name,
                        pos_x: product.position_x,
                        pos_y: product.position_y,
                        pos_z: product.position_z,
                        rot_x: product.rotation_x,
                        rot_y: product.rotation_y,
                        rot_z: product.rotation_z,
                        scale: product.scale
                    }
                ];
            });
        });

        this.state = {
            appRendered: false,
            displayStands: displayStands,
            products: products
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
        const appRendered = this.state.appRendered;
        const products = this.state.products;
        
        return (
            <div className="height80" style={{ height: '100%', width: '100%' }}>
                {appRendered &&
                <Scene embedded vr-mode-ui="enabled: false;" shadow="type: pcf;">
                    <a-assets timeout="3000">
                        {/*  Images */}
                        <img id="wallBack" src="/static/resources/img/SonyCenter_360panorama.jpg" />
                        <img id="bag-sample-picture" src="/static/resources/img/bag-sample-01.jpg" />
                        <img id="panel-background" src="/static/resources/img/background.png" />
                        <img id="cancel-img" src="/static/resources/img/cancel.png" />
                        <img id="iron-wall" src="/static/resources/environments/Enviroment/tiled_circle/iron_wall/iron_wall.png" />
                        <img id="wood" src="/static/resources/environments/Enviroment/tiled_circle/water_circle_wood/wood_floor.png" />

                        {/*  Environment */}
                        <a-asset-item id="modern-building-gltf" src="/static/resources/environments/Enviroment/enviroment_non_glass.glb" />
                        <a-asset-item id="modern-building-iron-wall-obj" src="/static/resources/environments/Enviroment/tiled_circle/iron_wall/tiled_circle_iron_wall_exterior.obj" />
                        <a-asset-item id="modern-building-water-circle-obj" src="/static/resources/environments/Enviroment/tiled_circle/water_circle_wood/outer_water_circle.obj" />
                        <a-asset-item id="modern-building-window-obj" src="/static/resources/environments/Enviroment/glass/glass_no_transparency.obj" />

                        {/*  3D Object */}
                        {/* <a-asset-item id="beach-bag" src="/static/resources/models/beach_bag/beach_bag.glb" /> */}
                        <a-asset-item id="demoShirt" src="/static/resources/models/beach_bag/beach_bag.glb" />
                        <a-asset-item id="demoBag" src="/static/resources/scanned/handbag2p2k.glb" />
                        <a-asset-item id="demoShoe" src="/static/resources/scanned/vans_blue_shoe.glb" />

                    </a-assets>
                    <Entity id="environment">
                        {/*  Lights */}
                        {/* <Entity light="type: spot; castShadow:false; angle: 70; color: #FFFFFF; distance: 20; intensity: 3; penumbra: 0.5;" position="0 10 0" rotation="-90 0 0"></Entity> */}
                        <Entity id="ambientLight" light="type: ambient; intensity: 1; castShadow: false;" position="0 1 0" />
                        <Entity id="spotLight" light="type: point; intensity: 2; castShadow: true; distance: 10" position="0 3 0" />
                        {/* <Entity light="type: directional; intensity: 0.5; castShadow: true; shadowCameraTop: 10; shadowCameraRight: 10; shadowCameraBottom: -10; shadowCameraLeft: -10" position="-14 40 0" /> */}

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
                        {
                            products.map((product) => {
                                let position3 = product.pos_x + " " + product.pos_y + " " + product.pos_z;
                                let rotation3 = product.rot_x + " " + product.rot_y + " " + product.rot_z;
                                let scale3 = product.scale + " " + product.scale + " " + product.scale;
                                let gltfModel = "#"+product.name;
                                return (
                                    <Entity
                                        init-product
                                        key={product.name}
                                        id={product.name}
                                        position={position3}
                                        rotation={rotation3}
                                        scale={scale3}
                                        gltf-model={gltfModel}
                                        class="clickable"
                                        events={{
                                            mousedown: this.selectObject.bind(this),
                                            mouseup: this.deselectObject.bind(this)
                                        }}
                                    />
                                )
                            })
                        }
                    </Entity>

                    <Entity primitive="a-camera"  id="player" position="0 2 0" rotation="0 180 0" wasd-controls="enabled: false" look-controls="reverseTouchDrag: true; reverseMouseDrag: true; touchEnabled: true;" raycaster="objects: .clickable;" cursor="rayOrigin: mouse; fuse: false" />
                </Scene>
                }
            </div>
        )
    }
}

export default SceneView
