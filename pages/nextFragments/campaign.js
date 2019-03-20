import React, {Component} from 'react'
import SceneView from './sceneview';
import redirect from 'next-redirect'

class Campaign extends Component {
    constructor(props) {
        super(props);
        this.state = {
            CAMPAIGN_API_URL: props.campaignApiUrl,
            OBJECT_URL: props.objectUrl,
            campaign: props.campaign,
            selectedProductId: null
        };

        this.deleteCampaign = this.deleteCampaign.bind(this);
        this.updateCampaign = this.updateCampaign.bind(this);
        this.getProductTransform = this.getProductTransform.bind(this);
        this.highlightSelectedProduct = this.highlightSelectedProduct.bind(this);
    }

    highlightSelectedProduct(id, type) {
        if(id == null) return;
        let selected = '';

        if(type == 'displayStand')  { selected = document.getElementById('displayStand'+id); }
        else                        { selected= document.getElementById('product'+id); }

        if(selected.getAttribute("selected") == "false" || selected.getAttribute("selected") == null ) {
            selected.setAttribute("selected", "true");
            selected.classList.add("bg-primary");
        } else {
            selected.setAttribute("selected", "false");
            selected.classList.remove("bg-primary");
        }
    }

    // NOT USED ANYMORE
    // better version to be updated in updateCampaign()
    getProductTransform(productId, newPosition) {
        let ds_index, product_index;
        let displayStands = this.state.campaign['display_stands'];
        for(ds_index=0; ds_index<displayStands.length; ds_index++) {
            let products = displayStands[ds_index]['products'];
            for(product_index=0; product_index<products.length; product_index++) {
                if(products[product_index]['id'] == productId) {
                    products[product_index]['position_x'] = Number(Math.round(newPosition.x+'e2')+'e-2');
                    products[product_index]['position_y'] = Number(Math.round(newPosition.y+'e2')+'e-2');
                    products[product_index]['position_z'] = Number(Math.round(newPosition.z+'e2')+'e-2');
                }
            }
        }
    }

    deleteCampaign() {
        let campaignId = this.state.campaign.id;
        console.log("send delete campaign " + campaignId + " request");
        const CAMPAIGN_API_URL = this.state.CAMPAIGN_API_URL + campaignId;
        fetch(CAMPAIGN_API_URL, {
            method: 'DELETE'
        })
        .then(data => {
            console.log("campaign " + campaignId + " deleted.");
            return redirect('', '/')
        })
    }

    // go through the campaign elements to re-create the whole campaign json - NEED TO DO THIS
    // then pass the new campaign to server
    updateCampaign() {
        let currentCampaign = this.state.campaign;
        let new_campaign = {
            "id": currentCampaign.id,
            "company": currentCampaign.company,
            "title": currentCampaign.title,
            "position_x": Number(Math.round(currentCampaign.position_x+'e2')+'e-2'),
            "position_y": Number(Math.round(currentCampaign.position_y+'e2')+'e-2'),
            "position_z": Number(Math.round(currentCampaign.position_z+'e2')+'e-2'),
            "rotation_x": Number(Math.round(currentCampaign.rotation_x+'e2')+'e-2'),
            "rotation_y": Number(Math.round(currentCampaign.rotation_y+'e2')+'e-2'),
            "rotation_z": Number(Math.round(currentCampaign.rotation_z+'e2')+'e-2'),
            "display_stands":[]
        };

        let display_stands = document.getElementById('display_stands');
        
        for(let i = 0; i < display_stands.childElementCount; i++) {
            let display_stand = display_stands.childNodes[i];
            let display_stand_model = display_stand.childNodes[0];

            let new_display_stand = {
                "id": display_stand.getAttribute("id"),
                "name": display_stand.getAttribute("name"),
                "type": display_stand.getAttribute("type"),
                "position_x": Number(Math.round(display_stand.object3D.position.x+'e2')+'e-2'),
                "position_y": Number(Math.round(display_stand.object3D.position.y+'e2')+'e-2'),
                "position_z": Number(Math.round(display_stand.object3D.position.z+'e2')+'e-2'),
                // obejct3D.rotation returns euler value (0, 2PI)
                // getAttribute("rotation") returns degree value (0, 360)
                "rotation_x": Number(Math.round(display_stand_model.getAttribute("rotation").x+'e2')+'e-2'),
                "rotation_y": Number(Math.round(display_stand_model.getAttribute("rotation").y+'e2')+'e-2'),
                "rotation_z": Number(Math.round(display_stand_model.getAttribute("rotation").z+'e2')+'e-2'),
                "scale": Number(Math.round(display_stand_model.getAttribute("scale").x+'e2')+'e-2'),
                "format": display_stand.getAttribute("format"),
                "click_event": display_stand.getAttribute("click_event"),
                "animation": display_stand.getAttribute("dp_animation"),
                "products": []
            }

            for(let j=0; j<display_stand.childNodes[1].childElementCount; j++) {
                let product = display_stand.childNodes[1].childNodes[j];
                let product_model = product.childNodes[0];

                let translated_pos = {
                    x: product_model.object3D.position.x - product_model.init_pos.x,
                    y: product_model.object3D.position.y - product_model.init_pos.y,
                    z: product_model.object3D.position.z - product_model.init_pos.z
                }

                let product_world_pos = {
                    x: display_stand.object3D.position.x + product.object3D.position.x + translated_pos.x,
                    y: display_stand.object3D.position.y + product.object3D.position.y + translated_pos.y,
                    z: display_stand.object3D.position.z + product.object3D.position.z + translated_pos.z
                }

                let new_product = {
                   "id": product.getAttribute("id"),
                   "name": product.getAttribute("name"),
                   "type": product.getAttribute("type"),
                   "position_x": Number(Math.round(product_world_pos.x+'e2')+'e-2'),
                   "position_y": Number(Math.round(product_world_pos.y+'e2')+'e-2'),
                   "position_z": Number(Math.round(product_world_pos.z+'e2')+'e-2'),
                   "rotation_x": Number(Math.round(product_model.getAttribute("rotation").x+'e2')+'e-2'),
                   "rotation_y": Number(Math.round(product_model.getAttribute("rotation").y+'e2')+'e-2'),
                   "rotation_z": Number(Math.round(product_model.getAttribute("rotation").z+'e2')+'e-2'),
                   "scale": Number(Math.round(product_model.getAttribute("scale").x+'e2')+'e-2'),
                   "format": product.getAttribute("format"),
                   "click_event": product.getAttribute("click_event"),
                   "animation": product.getAttribute("product_animation")
                }
                new_display_stand.products.push(new_product);
            }

            new_campaign.display_stands.push(new_display_stand);
        }

        // console.log(JSON.stringify(new_campaign));
        console.log(new_campaign);

        let campaignId = currentCampaign.id;
        console.log("send update campaign " + campaignId + " request");
        const CAMPAIGN_API_URL = this.state.CAMPAIGN_API_URL + campaignId;
        fetch(CAMPAIGN_API_URL, {
            method: 'PUT',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(new_campaign)
        })
        .then(data => {
            console.log("campaign " + campaignId + " updated.");
            return redirect('', "/Campaigns/"+campaignId);
        })
    }

    // pop-up a new window to show end-user view
    previewCampaign() {
        console.log("preview button clicked.");
    }

    render() {
        let campaign = this.state.campaign;
        let displayStands = campaign.display_stands;

        return (
            <div>
                <div className="box-white row">
                    <div className="col-9">
                        <h5 className="align-middle">{this.state.campaign.title}</h5>
                    </div>
                    <div className="col-1">
                        <button className="btn btn-primary" onClick={this.previewCampaign}>preview</button>
                    </div>
                    <div className="col-1">
                        <button className="btn btn-primary" onClick={this.updateCampaign}>update</button>
                    </div>
                    <div className="col-1">
                        <button className="btn btn-primary" onClick={this.deleteCampaign}>delete</button>
                    </div>
                </div>
                <div className="row">
                    <div className="col-9 no-padding">
                        <SceneView
                            campaign={campaign}
                            highlightSelectedProduct={this.highlightSelectedProduct}
                        />
                    </div>
                    <div className="col-3">
                        <div className="box-white">
                            <div className="box-white">
                                <h6>Products</h6>
                            </div>
                            {displayStands.map((displayStand) => {
                                return (
                                    displayStand.products.map((product) => {
                                        return (<div key={product.id} id={'product'+product.id} className="box-white">{product.name}</div>)
                                }))
                            })}
                        </div>
                        <div className="box-white">
                            <div className="box-white">
                                <h6>Display Stands</h6>
                            </div>
                            {displayStands.map((displayStand) => {
                                return (<div key={displayStand.id} id={"displayStand"+displayStand.id} className="box-white">{displayStand.name}</div>)
                            })}
                        </div>
                    </div>
                </div>
                <div className="row">
                </div>
            </div>
        )
    }
}

export default Campaign