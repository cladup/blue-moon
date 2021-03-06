import React, {Component} from 'react';
import {Entity, Scene} from 'aframe-react';

class SceneView extends Component {
    constructor(props) {
        super(props);
        this.state = {
            appRendered: false,
            selectedId: ''
        };

        this.downloadAllAssets = this.downloadAllAssets.bind(this);

    }

    // called right after render() in react lifecycle
    // --- why not componentWillMount()?? maybe test later. this way was suggested by aframe+next user from stackoverflow
    componentDidMount() {
        if (typeof window !== 'undefined') {
            require('aframe');
            require('aframe-environment-component');
            require('aframe-orbit-controls');

            require('../aframeComponents/init-product.js');
            require('../aframeComponents/enable-inspector-onload.js');

            require('../threejsComponents/Sky.js');
            require('../threejsComponents/Water.js');
            require('../aframeComponents/a-ada-ocean.js');

            this.setState({ appRendered: true })
        }
    }

    
    // download all the assets (files) "linked" to the current campaign
    // OBJECT_API_URL/product/graphic/{productId} <- productId: from Campaign API
    downloadAllAssets() {

        console.log("download assets for current campaign");

        let assets = [];
        let display_stands = this.props.campaign.display_stands;
        for (let i = 0; i < display_stands.length; i++) {
            let display_stand_id = display_stands[i].id;
            let products = display_stands[i].products;
            for (let j = 0; j < products.length; j++) {
                let product_id = products[j].id;
                let asset_url = this.props.OBJECT_API_URL+"/product/model/"+product_id;
                let asset_name = products[j].name;
                assets.push(<a-asset-item key={product_id} id={asset_name} src={asset_url} crossOrigin="anonymous" />);
            }
        }
        console.log(assets);

        return(
            <>
                {assets}
            </>
        );
    }   // end of downloadAllAssets()

    clickObject = (args) => {
        let target = args.target.parentElement;

        if(this.state.selectedId != target.getAttribute('id')) {
            let prevTarget = document.getElementById(this.state.selectedId);
            if(prevTarget != null) {
                this.deselectObject(prevTarget);
                prevTarget.setAttribute('wasd-controls', {enabled: 'false'});
            }
            this.state.selectedId = target.getAttribute('id');
            this.selectObject(target);
            target.setAttribute('wasd-controls', {enabled: 'true'});
        } else {
            this.state.selectedId = '';
            this.deselectObject(target);
            target.setAttribute('wasd-controls', {enabled: 'false'});
        }
    }
    
    selectObject = (target) => {
        this.props.highlightSelectedProduct(target.getAttribute('id'), target.getAttribute('is_display_stand'));
    }
    
    deselectObject = (target) => {
        this.props.highlightSelectedProduct(target.getAttribute('id'),  target.getAttribute('is_display_stand'));
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
                <Entity primitive='a-ada-ocean' src="#water-normal" position="0 0 0" opacity="0.95" width="10000" height="10000" oceanlight="#lighttest1" />

                <Entity id="Env1" position="0.4 31 -0.5" scale="150 150 150" gltf-model="#modern-building-gltf" shadow="receive: true; cast: true" />
            </>
        )
    }

    
    // this has to be added to campaign architecture
    orriCampaign2Environment() {
        return (
            <>
                <Entity light="type: spot; castShadow:false; angle: 70; color: #FFF; distance: 20; intensity: 0.5; penumbra: 0.5;" position="0 10 -2.5" rotation="-90 0 0" />
                <Entity light="type: ambient; intensity: 0.7; castShadow: false;" position="0 1 0" />
                <Entity id="lighttest1" light="type: directional; intensity: 0.1; castShadow: true;" position="0 1 0" />
                <Entity id="lighttest2" light="type: directional; intensity: 0.6; castShadow: true; color:#e4b895;" position="-3 9 15"/>

                <Entity primitive='a-sky' color="#FFFFFF" />
  
                <Entity primitive='a-ada-ocean' position="0 0 0" src="#water-normal" distortionScale="1" opacity="0.95" width="25" height="15" oceanlight="#lighttest1" />
                <Entity primitive='a-ada-ocean' position="0 1 -5.7" rotation="90 0 0" src="#water-normal" opacity="0.95" width="25" height="15" oceanlight="#lighttest1" />
            
                <Entity id="Env1-1" position="0 -1.9 -6" scale="1 1 1" obj-model="obj: #orri-building-02-obj" material="color: #e1dfe0; repeat: 2 2;"  shadow="receive: true;" />
            </>
        )
    }

    TestCampaignEnvironment() {
        return (
            <Entity
                init-product
                id="from_objection"
                //gltf-model="http://objection.clad-up.com/api/v1/objects/product/model/63"
                gltf-model="https://storage.googleapis.com/cladup-objects/Gsq1eZVY7wXg3pvn2X8KCrZVLuetSITS_1553668841752860.glb?GoogleAccessId=objection%40cladup-232707.iam.gserviceaccount.com&Expires=1553834056&Signature=cv7gXlJDtgx%2Fk5Fixm0abj3cmyHVY8VmUR%2B53FxAgbgINl8PJcJ07XVFO%2BWRmlVuh9yj0wKV2pSRLB8VfPAkCf4htd%2FH8RLlXk8l%2F3ySAKEpC8BewuLI3yUFVPZfT%2BI6cniKa68bMQ%2B1RJIyckQaA0ruAHQBF%2BgLFiPIFVyio%2FYd96UKves5ChhO8BC%2BX%2FgsLegIzcz4%2FhvPChz%2BRWIaw2Pfa0KPTYyZvwkOr8sbi3hcdFG19hgGloIGB8VLM6pCOLOvInCBtv66WhqF6oxkgww%2FvtVDchf9zZjU9rnBwDYCrZkf5GQKZ4htWd6D1wnjtjjkUZ4v5sLUrmR%2F6y5XpA%3D%3D"
                crossOrigin="anonymous"
                position=".25 1 -2.5"
                scale="3 3 3"
                rotation="0 45 0"
            />
        )
    }

    render() {
        const appRendered = this.state.appRendered;

        let campaign = this.props.campaign;
        let displayStands = campaign.display_stands;

        let cameraPos = campaign.position_x + " " + campaign.position_y + " " + campaign.position_z;
        let orbitControlsSetUp ="minDistance: 0.5; maxDistance: 50; initialPosition: "+cameraPos+"; enablePan: false;";

        return (
            <div id="sceneviewDiv" className="height80">
                {appRendered &&
                <Scene
                    id="aframe_scene"
                    //stats
                    embedded
                    vr-mode-ui="enabled: false;"
                    enable-inspector-onload
                >
                    <a-assets
                        timeout="30000"    // default value: 3000
                    >
                        {/*  Images */}
                        <img id="iron-wall" src="/static/resources/environments/Enviroment/tiled_circle/iron_wall/iron_wall.png" />
                        <img id="wood" src="/static/resources/environments/Enviroment/tiled_circle/water_circle_wood/wood_floor.png" />
                        <img id="water-normal" src="/static/resources/img/waternormals.jpg" />
                        <img id="sky" src="/static/resources/environments/Enviroment/vp_sky_v3_015_2 (3).jpg" />
                        
                        {/*  Environment */}
                        <a-asset-item id="demoTable" src="/static/resources/environments/Enviroment/enviroment_non_glass.glb" />
                        <a-asset-item id="modern-building-gltf" src="/static/resources/environments/Enviroment/enviroment_non_glass.glb" />
                        <a-asset-item id="modern-building-iron-wall-obj" src="/static/resources/environments/Enviroment/tiled_circle/iron_wall/tiled_circle_iron_wall_exterior.obj" />
                        <a-asset-item id="modern-building-water-circle-obj" src="/static/resources/environments/Enviroment/tiled_circle/water_circle_wood/outer_water_circle.obj" />
                        <a-asset-item id="modern-building-window-obj" src="/static/resources/environments/Enviroment/glass/glass_no_transparency.obj" />

                        <a-asset-item id="orri-building-02-obj" src="/static/resources/environments/orri-design-02/buildingmodel.obj" />

                        {/*  3D Object */}
                        <a-asset-item id="bag-sample-2" src="/static/resources/models/beach_bag/beach_bag.glb" />
                        <a-asset-item id="demoBag" src="/static/resources/scanned/handbag2p2k.glb" />

                        <a-asset-item id="orri-handbag" src="/static/resources/models/orri/handbag/handbag2p2k.glb" />
                        <a-asset-item id="orri-handbag1" src="/static/resources/models/orri/handbag/handbag5p1k.glb" />
                        <a-asset-item id="orri-handbag2" src="/static/resources/models/orri/handbag/test.glb" />
                        <a-asset-item id="orri-handbag-01" src="/static/resources/models/orri/handbag/orri-handbag-wm-01.glb" />

                        {/* {this.downloadAllAssets()} */}

                    </a-assets>
                    <Entity id="environments">
                        {(campaign.title == "Demo Campaign") ? this.demoCampaignEnvironment() : ''}
                        {(campaign.title == "ORRi Campaign") ? this.orriCampaignEnvironment() : ''}
                        {(campaign.title == "ORRi Campaign 2") ? this.orriCampaign2Environment() : ''}
                    </Entity>
                    <Entity id="display_stands">
                        {
                            (campaign.title == "Test Campaign") ? this.TestCampaignEnvironment() : 
                            
                            displayStands.map((displayStand) => {
                                let dp_position3 = displayStand.position_x + " " + displayStand.position_y + " " + displayStand.position_z;
                                let rotation3 = displayStand.rotation_x + " " + displayStand.rotation_y + " " + displayStand.rotation_z;
                                let scale3 = displayStand.scale + " " + displayStand.scale + " " + displayStand.scale;
                                let modelId = "#"+displayStand.name;
                                let dp_key = displayStand.id + displayStand.name;
                                let dp_products_id = displayStand.id + displayStand.name + "_products";
                                return (
                                    <Entity
                                        id={displayStand.id}
                                        key={dp_key}
                                        position={dp_position3}
                                        name={displayStand.name}
                                        type={displayStand.type}
                                        format={displayStand.format}
                                        click_event={displayStand.click_event}
                                        dp_animation={displayStand.animation}
                                        isSelected={false}
                                        is_display_stand={true}
                                    >
                                        <Entity
                                            init-product
                                            {...((displayStand.name.startsWith("a-")) ? {primitive: displayStand.name} : {/*gltf-model: modelId*/} )}
                                            gltf-model={modelId}
                                            scale={scale3}
                                            rotation={rotation3}
                                            shadow="receive: true; cast: true" 
                                            class="clickable-products"
                                            events={{
                                                //mousedown: this.lockOrbitControls.bind(this),
                                                //mouseup: this.unlockOrbitControls.bind(this),
                                                click: this.clickObject.bind(this)
                                            }}
                                        />
                                        <Entity id={dp_products_id} className="product-section">
                                        {
                                            displayStand.products.map((product) => {
                                                let product_position3 = (product.position_x - displayStand.position_x) + " "
                                                                        + (product.position_y - displayStand.position_y ) + " "
                                                                        + (product.position_z - displayStand.position_z );
                                                let rotation3 = product.rotation_x + " " + product.rotation_y + " " + product.rotation_z;
                                                let scale3 = product.scale + " " + product.scale + " " + product.scale;
                                                let gltfModel = "#"+product.name;
                                                let product_key = product.id + product.name;

                                                return (
                                                    <Entity
                                                        key={product_key}
                                                        id={product.id}
                                                        name={product.name}
                                                        type={product.type}
                                                        position={product_position3}
                                                        format={product.format}
                                                        click_event={product.click_event}
                                                        product_animation={product.animation}
                                                        isSelected={false}
                                                        is_display_stand={false}
                                                    >
                                                        <Entity
                                                            init-product
                                                            gltf-model={gltfModel}
                                                            rotation={rotation3}
                                                            scale={scale3}
                                                            shadow="receive: true; cast: true" 
                                                            class="clickable-products"
                                                            events={{
                                                                //mousedown: this.lockOrbitControls.bind(this),
                                                                //mouseup: this.unlockOrbitControls.bind(this),
                                                                click: this.clickObject.bind(this)
                                                            }}
                                                        />
                                                    </Entity>
                                                )
                                            })
                                        }
                                        </Entity>
                                    </Entity>
                                )
                            })
                        }
                    </Entity>


                    <Entity
                        primitive="a-camera"
                        id="mainCamera"
                        position={cameraPos}
                        wasd-controls="false"
                        //orbit-controls={orbitControlsSetUp}
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
