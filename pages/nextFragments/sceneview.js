import React, {Component} from 'react'
import {Entity, Scene} from 'aframe-react';

class SceneView extends Component {

    constructor(props) {
        super(props);
        this.state = {
            appRendered: false
        };
    }

    componentDidMount() {
        if (typeof window !== 'undefined') {
            require('aframe');
            require('aframe-environment-component');
            require('aframe-orbit-controls');
            require('../aframeComponents/init-product.js');
            require('../aframeComponents/disable-inspector.js');
            this.setState({ appRendered: true })
        }
    }

    clickObject = (args) => {
        let target = args.target.parentElement;

        if(target.getAttribute('isSelected') == 'false') {
            target.setAttribute('wasd-controls', {enabled: 'true'});
            target.setAttribute('isSelected', true);
        } else {
            target.setAttribute('wasd-controls', {enabled: 'false'});
            target.setAttribute('isSelected', false);
            this.props.sendProductTransform(target.getAttribute('id'), target.getAttribute('position'));
        }
    }
    
    selectObject = (args) => {
        let target = args.target.parentElement;
        let mainCamera = document.getElementById('mainCamera');
        
        console.log(target.getAttribute('name') + " selected.");

        mainCamera.setAttribute('orbit-controls', {enabled: false});
        target.setAttribute('wasd-controls', {enabled: 'true'});
        this.props.selectedProduct(target.getAttribute('id'));
    }
    
    deselectObject = (args) => {
        let target = args.target.parentElement;
        let mainCamera = document.getElementById('mainCamera');

        console.log(target.getAttribute('name') + " deselected.");
        
        mainCamera.setAttribute('orbit-controls', {enabled: true});
        target.setAttribute('wasd-controls', {enabled: 'false'});
        this.props.selectedProduct(target.getAttribute('id'));

        console.log("new position: "
                    +   Number(Math.round(target.getAttribute('position').x+'e2')+'e-2')
                    + ", " + Number(Math.round(target.getAttribute('position').y+'e2')+'e-2')
                    + ", " + Number(Math.round(target.getAttribute('position').z+'e2')+'e-2'));
        this.props.sendProductTransform(target.getAttribute('id'), target.getAttribute('position'));
    }

    render() {
        const appRendered = this.state.appRendered;
        let displayStands = this.props.campaign.display_stands;
    
        return (
            <div className="height80">
                {appRendered &&
                <Scene
                    embedded
                    stats
                    vr-mode-ui="enabled: false;"
                    disable-inspector
                >
                    <a-assets timeout="3000">
                        {/*  Images */}
                        <img id="wallBack" src="/static/resources/img/SonyCenter_360panorama.jpg" />
                        <img id="bag-sample-picture" src="/static/resources/img/bag-sample-01.jpg" />
                        <img id="panel-background" src="/static/resources/img/background.png" />
                        <img id="cancel-img" src="/static/resources/img/cancel.png" />
                        <img id="iron-wall" src="/static/resources/environments/Enviroment/tiled_circle/iron_wall/iron_wall.png" />
                        <img id="wood" src="/static/resources/environments/Enviroment/tiled_circle/water_circle_wood/wood_floor.png" />

                        {/*  Environment */}
                        <a-asset-item id="demoTable" src="/static/resources/environments/Enviroment/enviroment_non_glass.glb" />
                        <a-asset-item id="modern-building-gltf" src="/static/resources/environments/Enviroment/enviroment_non_glass.glb" />
                        <a-asset-item id="modern-building-iron-wall-obj" src="/static/resources/environments/Enviroment/tiled_circle/iron_wall/tiled_circle_iron_wall_exterior.obj" />
                        <a-asset-item id="modern-building-water-circle-obj" src="/static/resources/environments/Enviroment/tiled_circle/water_circle_wood/outer_water_circle.obj" />
                        <a-asset-item id="modern-building-window-obj" src="/static/resources/environments/Enviroment/glass/glass_no_transparency.obj" />

                        {/*  3D Object */}
                        <a-asset-item id="bag-sample-2" src="/static/resources/models/beach_bag/beach_bag.glb" />
                        <a-asset-item id="demoShirt" src="/static/resources/models/beach_bag/beach_bag.glb" />
                        <a-asset-item id="demoBag" src="/static/resources/scanned/handbag2p2k.glb" />
                        <a-asset-item id="demoShoe" src="/static/resources/scanned/vans_blue_shoe.glb" />

                    </a-assets>
                    <Entity id="environment">
                        <Entity id="ambientLight" light="type: ambient; intensity: 1; castShadow: false;" position="0 1 0" />
                        <Entity id="spotLight" light="type: point; intensity: 3; castShadow: true; distance: 12" position="0 3 0" />

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

                        {
                            displayStands.map((displayStand) => {
                                let position3 = displayStand.position_x + " " + displayStand.position_y + " " + displayStand.position_z;
                                let rotation3 = displayStand.rotation_x + " " + displayStand.rotation_y + " " + displayStand.rotation_z;
                                let scale3 = displayStand.scale + " " + displayStand.scale + " " + displayStand.scale;
                                let modelId = "#"+displayStand.name;
                                return (
                                    <Entity id={displayStand.name} key={displayStand.name} position={position3} rotation={rotation3} scale={scale3} gltf-model={modelId} shadow="receive: true;" /    >
                                )
                            })
                        }
                        <a-obj-model id="Env1-2" position="0.1 -0.78 -0.5" scale="1 1 1" src="#modern-building-iron-wall-obj" material="src: #iron-wall; repeat: 3 3; transparent:true;" shadow="receive: true;" />
                        <a-obj-model id="Env1-3" position="0.1 -0.78 -0.5" scale="1 1 1" src="#modern-building-water-circle-obj" material="src: #wood; repeat: 10 10;" shadow="receive: true;" />
                        <a-obj-model id="Env1-4" position="0.0 -0.30 -1.735" scale="1 1 1" src="#modern-building-window-obj" material="color: skyblue; repeat: 2 2;opacity: 0.4; transparent:true;" shadow="receive: true;" />
                    </Entity>

                    <Entity id="products" className="product-section">
                        {
                            displayStands.map((displayStand) => {
                                return (
                                    displayStand.products.map((product) => {
                                        let position3 = product.position_x + " " + product.position_y + " " + product.position_z;
                                        let rotation3 = product.rotation_x + " " + product.rotation_y + " " + product.rotation_z;
                                        let scale3 = product.scale + " " + product.scale + " " + product.scale;
                                        let gltfModel = "#"+product.name;
                                        return (
                                            <Entity
                                                key={product.id}
                                                id={product.id}
                                                name={product.name}
                                                position={position3}
                                                rotation={rotation3}
                                                scale={scale3}
                                                isSelected={false}
                                            >
                                                <Entity
                                                    init-product
                                                    key={product.id}
                                                    gltf-model={gltfModel}
                                                    shadow="receive: true; cast: true" 
                                                    class="clickable-products"
                                                    events={{
                                                        mousedown: this.selectObject.bind(this),
                                                        mouseup: this.deselectObject.bind(this),
                                                        //click: this.clickObject.bind(this),
                                                    }}
                                                />
                                            </Entity>
                                        )
                                    })
                                )
                            })
                        }
                    </Entity>

                    {/* <Entity primitive="a-camera" id="mainCamera" position="0 2 0" rotation="0 180 0" look-controls="reverseTouchDrag: true; reverseMouseDrag: true; touchEnabled: true;"> */}
                    <Entity primitive="a-camera" id="mainCamera" look-controls orbit-controls="enableKeys: false; minDistance: 0.5; maxDistance: 20; initialPosition: 0 5 5">
                        <Entity id="cursor" cursor="rayOrigin: mouse; fuse: false" raycaster="objects: .clickable-products;"/>
                    </Entity>
                </Scene>
                }
            </div>
        )
    }
}

export default SceneView
