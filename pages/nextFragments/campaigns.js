import React, {Component} from 'react';
import Link from 'next/link';
import Campaign from './campaign';
import redirect from 'next-redirect';

const PostLink = (props) => (
    <Link as={`/Campaigns/${props.campaign_id}`} href={`/Campaigns/${props.campaign_id}`}>
        <a className="nav-link">{props.campaign_title}</a>
    </Link>
)

class Campaigns extends Component {
    constructor(props) {
        super(props);
        this.state = {
            CAMPAIGN_API_URL: props.campaign_api_url,
            OBJECT_API_URL: props.object_api_url,
            error: null,        // api server - get error
            isLoaded: false,    // api server - get flag
            campaigns: [],
        };
        // This binding is necessary to make `this` work in the callback
        this.createNewCampaign = this.createNewCampaign.bind(this);
    }
    
    componentDidMount() {
        //=====================================================================
        // get campaign list from api server
        const CAMPAIGN_LIST_API_URL = this.state.CAMPAIGN_API_URL;
        fetch(CAMPAIGN_LIST_API_URL)
        .then(res => res.json())
        .then(
            (result) => {
                this.setState({
                    isLoaded: true,
                    campaigns: result
                });
            },
            // Note: it's important to handle errors here
            // instead of a catch() block so that we don't swallow
            // exceptions from actual bugs in components.
            (error) => {
                    this.setState({
                    isLoaded: true,
                    error
                });
            }
        )
    }

    createNewCampaign() {
        console.log("send create new campaign request");
        let defaultCampaign = 
        {
            "company": "YC",
            "title": "New Campaign",
            "position_x": "0.00",
            "position_y": "3.00",
            "position_z": "5.00",
            "rotation_x": "0.00",
            "rotation_y": "0.00",
            "rotation_z": "0.00",
            "display_stands": [
                {
                    "name": "demoTable",
                    "type": "displayStand",
                    "position_x": "0.40",
                    "position_y": "-2",
                    "position_z": "-0.50",
                    "rotation_x": "0.00",
                    "rotation_y": "0.00",
                    "rotation_z": "0.00",
                    "scale": "100.00",
                    "format": "default",
                    "click_event": "none",
                    "animation": "none",
                    "products": []
                }
            ]
        };
        let orriCampaign =
        {
            "company": "ORRi",
            "title": "ORRi Campaign",
            "position_x": "0.00",
            "position_y": "3.00",
            "position_z": "5.00",
            "rotation_x": "0.00",
            "rotation_y": "0.00",
            "rotation_z": "0.00",
            "display_stands": [
               {
                  "name": "a-box",
                  "type": "a-box",
                  "position_x": "0.00",
                  "position_y": "0.50",
                  "position_z": "-2.50",
                  "rotation_x": "0.00",
                  "rotation_y": "0.00",
                  "rotation_z": "0.00",
                  "scale": "1",
                  "format": "default",
                  "click_event": "none",
                  "animation": "none",
                  "products": [
                     {
                        "name": "orri-handbag-01",
                        "type": "glb",
                        "position_x": "0.00",
                        "position_y": "1.06",
                        "position_z": "-2.50",
                        "rotation_x": "0.00",
                        "rotation_y": "-90.00",
                        "rotation_z": "0.00",
                        "scale": "0.16",
                        "format": "default",
                        "click_event": "none",
                        "animation": "none"
                     }
                  ]
               },
               {
                  "name": "a-box",
                  "type": "a-box",
                  "position_x": "2.00",
                  "position_y": "0.50",
                  "position_z": "-2.50",
                  "rotation_x": "0.00",
                  "rotation_y": "0.00",
                  "rotation_z": "0.00",
                  "scale": "1",
                  "format": "default",
                  "click_event": "none",
                  "animation": "none",
                  "products": [
                     {
                        "name": "orri-handbag2",
                        "type": "glb",
                        "position_x": "2.00",
                        "position_y": "1.06",
                        "position_z": "-2.50",
                        "rotation_x": "0.00",
                        "rotation_y": "0.00",
                        "rotation_z": "0.00",
                        "scale": "0.16",
                        "format": "default",
                        "click_event": "none",
                        "animation": "none"
                     }
                  ]
               },
               {
                  "name": "a-box",
                  "type": "a-box",
                  "position_x": "-2.00",
                  "position_y": "0.50",
                  "position_z": "-2.50",
                  "rotation_x": "0.00",
                  "rotation_y": "0.00",
                  "rotation_z": "0.00",
                  "scale": "1",
                  "format": "default",
                  "click_event": "none",
                  "animation": "none",
                  "products": [
                     {
                        "name": "orri-handbag",
                        "type": "glb",
                        "position_x": "-2.00",
                        "position_y": "1.06",
                        "position_z": "-2.50",
                        "rotation_x": "0.00",
                        "rotation_y": "0.00",
                        "rotation_z": "0.00",
                        "scale": "0.16",
                        "format": "default",
                        "click_event": "none",
                        "animation": "none"
                     }
                  ]
               }
            ]
         };

        let orriCampaign2 =
        {
            "company": "ORRi",
            "title": "ORRi Campaign 2",
            "position_x": "0.00",
            "position_y": "3.00",
            "position_z": "5.00",
            "rotation_x": "0.00",
            "rotation_y": "0.00",
            "rotation_z": "0.00",
            "display_stands":
            [
                {
                    "name": "a-box",
                    "type": "a-box",
                    "position_x": "0.00",
                    "position_y": "0.50",
                    "position_z": "-2.50",
                    "rotation_x": "0.00",
                    "rotation_y": "0.00",
                    "rotation_z": "0.00",
                    "scale": "1",
                    "format": "default",
                    "click_event": "none",
                    "animation": "none",
                    "products": [
                        {
                            "name": "orri-handbag-01",
                            "type": "glb",
                            "position_x": "0.00",
                            "position_y": "1.06",
                            "position_z": "-2.50",
                            "rotation_x": "0.00",
                            "rotation_y": "-90.00",
                            "rotation_z": "0.00",
                            "scale": "0.16",
                            "format": "default",
                            "click_event": "none",
                            "animation": "none"
                        }
                    ]
                },
                {
                    "name": "a-box",
                    "type": "a-box",
                    "position_x": "2.00",
                    "position_y": "0.50",
                    "position_z": "-2.50",
                    "rotation_x": "0.00",
                    "rotation_y": "0.00",
                    "rotation_z": "0.00",
                    "scale": "1",
                    "format": "default",
                    "click_event": "none",
                    "animation": "none",
                    "products": [
                        {
                            "name": "orri-handbag2",
                            "type": "glb",
                            "position_x": "2.00",
                            "position_y": "1.06",
                            "position_z": "-2.50",
                            "rotation_x": "0.00",
                            "rotation_y": "0.00",
                            "rotation_z": "0.00",
                            "scale": "0.2",
                            "format": "default",
                            "click_event": "none",
                            "animation": "none"
                        }
                    ]
                },
                {
                    "name": "a-box",
                    "type": "a-box",
                    "position_x": "-2.00",
                    "position_y": "0.50",
                    "position_z": "-2.50",
                    "rotation_x": "0.00",
                    "rotation_y": "0.00",
                    "rotation_z": "0.00",
                    "scale": "1",
                    "format": "default",
                    "click_event": "none",
                    "animation": "none",
                    "products": [
                        {
                            "name": "orri-handbag",
                            "type": "glb",
                            "position_x": "-2.00",
                            "position_y": "1.06",
                            "position_z": "-2.50",
                            "rotation_x": "0.00",
                            "rotation_y": "0.00",
                            "rotation_z": "0.00",
                            "scale": "0.2",
                            "format": "default",
                            "click_event": "none",
                            "animation": "none"
                        } 
                    ]
                }
            ]
        };

        const CAMPAIGN_API_URL = this.state.CAMPAIGN_API_URL;
        fetch(CAMPAIGN_API_URL, {
            method: 'POST',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json',
            },
            // body: JSON.stringify(defaultCampaign)
            body: JSON.stringify(orriCampaign)
            // body: JSON.stringify(orriCampaign2)
        })
        .then(res => {
            return res.json();
        })  
        .then(data => {
            if(data.result == "success")
            {
                console.log("new campaign created");
                return redirect('', "/Campaigns/"+data.data.id);
            }
        }) 
        .catch(err => {
            console.log(err);
        });
    }

    render() {
        const { error, isLoaded, campaigns, isCampaignLoaded } = this.state;
        const campaign_id = this.props.campaign_id;


        if (error) {
          return <div>Error: {error.message}</div>;
        } else if (!isLoaded) {
          return <div>Loading campaign list from api server...</div>;
        } else {
            return (
                <div className="row bg-light-gray height90">
                    <div className="col-2">
                        <div className="box-white">
                            <div className="row">
                                <div className="col-8">
                                    <h5 className="align-middle">All Campaigns</h5>
                                </div>
                                <div className="col-4">
                                    <button className="btn btn-primary" onClick={this.createNewCampaign}>+</button>
                                </div>
                            </div>
                        </div>
                        <div className="box-white">
                            {campaigns.map((campaign) => {
                                return (<PostLink key={campaign.id} campaign_id={campaign.id} campaign_title={campaign.title} />)
                            })}
                        </div>
                        <div className="box-white text-center">(CLOUD STORAGE INFORMATION)</div>
                    </div>
                    <div className="col-10">
                        {
                            (isNaN(campaign_id)) 
                            ? 'Please select a campaign from the list to the left'
                            : 
                                <Campaign
                                    campaign_api_url={this.state.CAMPAIGN_API_URL}
                                    object_api_url={this.state.OBJECT_API_URL}
                                    campaign_id={campaign_id}
                                /> 
                           
                        }
                    </div>
                </div>
            )
        }
    }
}

export default Campaigns