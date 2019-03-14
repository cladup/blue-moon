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

        if(type == 'displayStand') {
            selected = document.getElementById('displayStand'+id);

        } else {
            selected= document.getElementById('product'+id);
        }

        if(selected.getAttribute("selected") == "false" || selected.getAttribute("selected") == null ) {
            selected.setAttribute("selected", "true");
            selected.classList.add("bg-primary");
        } else {
            selected.setAttribute("selected", "false");
            selected.classList.remove("bg-primary");
        }
    }

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

    updateCampaign() {
        let campaignId = this.state.campaign.id;
        console.log("send update campaign " + campaignId + " request");
        const CAMPAIGN_API_URL = this.state.CAMPAIGN_API_URL + campaignId;
        fetch(CAMPAIGN_API_URL, {
            method: 'PUT',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(this.state.campaign)
        })
        .then(data => {
            console.log("campaign " + campaignId + " updated.");
            // return redirect('', "/Campaigns/"+data.data.id);
            return redirect('', "/Campaigns/"+campaignId);
        })
    }

    // reset camera transform to campaign parameters 
    previewCampaign() {
        console.log("preview button clicked");
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
                    <div className="col-9">
                        <SceneView
                            campaign={campaign}
                            sendProductTransform={this.getProductTransform}
                            selectedProduct={this.highlightSelectedProduct}
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