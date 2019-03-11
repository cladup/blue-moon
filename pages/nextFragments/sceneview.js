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

            require('../threejsComponents/Sky.js');
            require('../threejsComponents/Water.js');
            require('../aframeComponents/a-ada-ocean.js');

            this.setState({ appRendered: true })
        }
    }

    clickObject = (args) => {
        let target = args.target.parentElement;

        if(target.getAttribute('isSelected') == 'false') {
            target.setAttribute('wasd-controls', {enabled: 'true'});
            target.setAttribute('isSelected', true);
            this.selectObject(args);
        } else {
            target.setAttribute('wasd-controls', {enabled: 'false'});
            target.setAttribute('isSelected', false);
            this.deselectObject(args);
            // console.log("new position: "
            //             +   Number(Math.round(target.getAttribute('position').x+'e2')+'e-2')
            //             + ", " + Number(Math.round(target.getAttribute('position').y+'e2')+'e-2')
            //             + ", " + Number(Math.round(target.getAttribute('position').z+'e2')+'e-2'));
            this.props.sendProductTransform(target.getAttribute('id'), target.getAttribute('position'));
        }
    }
    
    selectObject = (args) => {
        let target = args.target.parentElement;
        this.props.selectedProduct(target.getAttribute('id'));
    }
    
    deselectObject = (args) => {
        let target = args.target.parentElement;
        this.props.selectedProduct(target.getAttribute('id'));
    }

    lockOrbitControls = (args) => {
        let mainCamera = document.getElementById('mainCamera');
        mainCamera.setAttribute('orbit-controls', {enableRotate: false, enableZoom: false});
    }

    unlockOrbitControls = (args) => {
        let mainCamera = document.getElementById('mainCamera');
        mainCamera.setAttribute('orbit-controls', {enableRotate: true, enableZoom: true});
    }

    // this has to be added to campaign architecture
    demoCampaignEnvironment() {
        return (
            <>
                <Entity id="ambientLight" light="type: ambient; intensity: 1; castShadow: false;" position="0 1 0" />
                <Entity id="spotLight" light="type: point; intensity: 3; castShadow: true; distance: 12" position="0 3 0" />

                <Entity environment="preset: forest; shadow: false; skyType: atmosphere; playArea: 1; grid: cross; fog: 0; ground: flat; groundColor: #304529; groundColor2: #374f2f; groundTexture: checkerboard; dressingAmount: 100" position="0 -2 0" />
                <Entity id="Env1" position="0.1 -0.78 -0.5" scale="1 1 1" src="#modern-building-iron-wall-obj" material="src: #iron-wall; repeat: 3 3; transparent:true;" shadow="receive: true;" />
                <Entity id="Env2" position="0.1 -0.78 -0.5" scale="1 1 1" src="#modern-building-water-circle-obj" material="src: #wood; repeat: 10 10;" shadow="receive: true;" />
                <Entity id="Env3" position="0.0 -0.30 -1.735" scale="1 1 1" src="#modern-building-window-obj" material="color: skyblue; repeat: 2 2;opacity: 0.4; transparent:true;" shadow="receive: true;" />
            </>
        )
    }

    // this has to be added to campaign architecture
    orriCampaignEnvironment() {
        return (
            <>
                <Entity light="type: spot; castShadow:false; angle: 70; color: #FFF; distance: 20; intensity: 2.0; penumbra: 0.5;" position="0 10 -2.5" rotation="-90 0 0" />
                <Entity light="type: ambient; intensity: 0.7; castShadow: false;" position="0 1 0" />
                <Entity id="lighttest1" light="type: directional; intensity: 1; castShadow: true;" position="0 1 0" />

                <Entity primitive='a-sky' src="#sky" position="0 -1 0" rotation="0 180 0" material="transparent: true" />
                {/* <Entity primitive='a-ada-ocean' src="#water-normal" position="0 0 0" opacity="0.95" width="10000" height="10000" oceanlight="#lighttest1" /> */}
                <Entity primitive='a-ada-ocean' position="0 0 0" opacity="0.95" width="10000" height="10000" oceanlight="#lighttest1" />

                <Entity primitive='a-box' position="0 0 -2.5" scale="1 2 1" />
                <Entity primitive='a-box' position="2 0 -2.5" scale="1 2 1" />
                <Entity primitive='a-box' position="-2 0 -2.5" scale="1 2 1" />

                <Entity id="Env1" position="0.4 31 -0.5" scale="150 150 150" gltf-model="#modern-building-gltf" shadow="receive: true; cast: true" />
            </>
        )
    }

    render() {
        const appRendered = this.state.appRendered;

        let campaign = this.props.campaign;
        let displayStands = campaign.display_stands;

        return (
            <div className="height80">
                {appRendered &&
                <Scene
                    embedded
                    vr-mode-ui="enabled: false;"
                    stats
                    disable-inspector
                >
                    <a-assets
                        //timeout="3000"    // default value: 3000
                    >
                        {/*  Images */}
                        <img id="iron-wall" src="/static/resources/environments/Enviroment/tiled_circle/iron_wall/iron_wall.png" />
                        <img id="wood" src="/static/resources/environments/Enviroment/tiled_circle/water_circle_wood/wood_floor.png" />
                        <img id="water-normal" src="/static/resources/img/waternormals.jpg" />
                        <img id="sky" src="/static/resources/environments/Enviroment/vp_sky_v3_015_2 (3).jpg" crossOrigin="anonymous" />
                        
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

                        <a-asset-item id="orri-handbag" src="/static/resources/models/orri/handbag/handbag2p2k.glb" />
                        <a-asset-item id="orri-handbag1" src="/static/resources/models/orri/handbag/handbag5p1k.glb" />
                        <a-asset-item id="orri-handbag2" src="/static/resources/models/orri/handbag/test.glb" />
                        <a-asset-item id="orri-handbag-01" src="/static/resources/models/orri/handbag/orri-handbag-wm-01.glb" />
                    </a-assets>
                    <Entity id="environments">
                        {(campaign.title == "Demo Campaign") ? this.demoCampaignEnvironment() : ''}
                        {(campaign.title == "New Campaign") ? this.demoCampaignEnvironment() : ''}
                        {(campaign.title == "ORRi Campaign") ? this.orriCampaignEnvironment() : ''}
                    </Entity>
                    <Entity id="display_stands">
                        {
                            displayStands.map((displayStand) => {
                                let position3 = displayStand.position_x + " " + displayStand.position_y + " " + displayStand.position_z;
                                let rotation3 = displayStand.rotation_x + " " + displayStand.rotation_y + " " + displayStand.rotation_z;
                                let scale3 = displayStand.scale + " " + displayStand.scale + " " + displayStand.scale;
                                let modelId = "#"+displayStand.name;
                                return (
                                    <Entity id={displayStand.name} key={displayStand.name} position={position3} rotation={rotation3} scale={scale3} gltf-model={modelId} shadow="receive: true; cast: true" />
                                )
                            })
                        }
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
                                                scale={scale3}
                                                isSelected={false}
                                            >
                                                <Entity
                                                    init-product
                                                    key={product.id}
                                                    gltf-model={gltfModel}
                                                    rotation={rotation3}
                                                    shadow="receive: true; cast: true" 
                                                    class="clickable-products"
                                                    events={{
                                                        //mouseenter: this.lockOrbitControls.bind(this),
                                                        //mouseleave: this.unlockOrbitControls.bind(this),
                                                        mousedown: this.lockOrbitControls.bind(this),
                                                        mouseup: this.unlockOrbitControls.bind(this),
                                                        click: this.clickObject.bind(this),
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
                    <Entity
                        primitive="a-camera"
                        id="mainCamera"
                        look-controls
                        orbit-controls="
                            minDistance: 0.5;
                            maxDistance: 50;
                            initialPosition: 0 3 5;
                            enablePan: false;
                        "
                    >
                        <Entity id="cursor" cursor="rayOrigin: mouse; fuse: false" raycaster="objects: .clickable-products;"/>
                    </Entity>
                </Scene>
                }
            </div>
        )
    }
}

export default SceneView
