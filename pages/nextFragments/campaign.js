import React, {Component} from 'react'
import SceneView from './sceneview';
import redirect from 'next-redirect'

class Campaign extends Component {
    constructor(props) {
        super(props);
        this.state = {
            CAMPAIGN_API_URL: props.campaignApiUrl,
            OBJECT_URL: props.objectUrl,
            campaignId: props.campaignId,
            displayStands: props.displayStands,
            isCampaignDeleted: false
        };

        this.deleteCampaign = this.deleteCampaign.bind(this);
        this.getProductTransform = this.getProductTransform.bind(this);
    }

    getProductTransform(productId, newPosition) {
        console.log("productId: " + productId);
        console.log("newPosition: " + newPosition.x.toFixed(2) + " "  + newPosition.y.toFixed(2) + " " + newPosition.z.toFixed(2));
    }

    deleteCampaign() {
        console.log("send delete campaign " + this.state.campaignId + " request");
        
        let campaignId = this.props.campaignId;
        const CAMPAIGN_API_URL = this.state.CAMPAIGN_API_URL+campaignId;
        fetch(CAMPAIGN_API_URL, {
            method: 'DELETE'
        })
        .then(data => {
            console.log("campaign " + this.state.campaignId + " deleted.");
            return redirect('', '/')
        })
    }

    render() {
        let displayStands = this.state.displayStands;
        return (
            <div>
                <div className="row">
                    <div className="col-10">
                        <h5 className="box-white">
                            {this.props.title}
                        </h5>
                    </div>
                    <div className="col-1">
                        <div className="align-middle">
                            <button className="btn btn-primary" onClick={this.saveCampaign}>save</button>
                        </div>
                    </div>
                    <div className="col-1">
                        <div className="align-middle">
                            <button className="btn btn-primary" onClick={this.deleteCampaign}>delete</button>
                        </div>
                    </div>
                    
                </div>
                <div className="row">
                    <div className="col-9 box-white">
                        <SceneView displayStands={displayStands} sendProductTransform={this.getProductTransform} />
                    </div>
                    <div className="col-3">
                        <div className="box-white">
                            <div className="box-white">
                                <h6>Products</h6>
                            </div>
                            {displayStands.map((displayStand) => {
                                return (
                                    displayStand.products.map((product) => {
                                        return (<div key={product.id} className="box-white">{product.name}</div>)
                                }))
                            })}
                        </div>
                        <div className="box-white">
                            <div className="box-white">
                                <h6>Display Stands</h6>
                            </div>
                            {displayStands.map((displayStand) => {
                                return (<div key={displayStand.id} className="box-white">{displayStand.name}</div>)
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