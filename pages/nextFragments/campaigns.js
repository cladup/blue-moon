import React, {Component} from 'react'
import Link from 'next/link'
import Campaign from './campaign'
import redirect from 'next-redirect'

const PostLink = (props) => (
    <Link as={`/Campaigns/${props.campaignId}`} href={`/Campaigns/${props.campaignId}`}>
        <a className="nav-link">{props.campaignTitle}</a>
    </Link>
)

class Campaigns extends Component {
    constructor(props) {
        super(props);
        this.state = {
            error: null,        // api server - get error
            isLoaded: false,    // api server - get flag
            campaigns: [],
            isCampaignLoaded: false,
            campaign: null,
            isCampaignCreated: false,
            campaignFound: false
        };
        // This binding is necessary to make `this` work in the callback
        this.createNewCampaign = this.createNewCampaign.bind(this);
    }
    
    componentDidMount() {
        //=====================================================================
        // get all the campaign infomations from api server
        const CAMPAIGN_LIST_API_URL = 'http://stolenbyte.kr:8080/api/v1/campaigns/';
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
        
        //=====================================================================
        // get the selected campaign infomation from api server
        let campaignId = this.props.campaignId;
        if(!isNaN(campaignId)) {
            const CAMPAIGN_API_URL = 'http://stolenbyte.kr:8080/api/v1/campaigns/'+campaignId;

            fetch(CAMPAIGN_API_URL)
                .then(res => res.json())
                .then(
                (result) => {
                    if(result.detail == "Not found.") {
                        this.setState({
                            isCampaignLoaded: true,
                            campaign: result,
                        });
                    } else {
                        this.setState({
                            isCampaignLoaded: true,
                            campaign: result,
                            campaignFound: true
                        });
                    }
                },
                (error) => {
                    this.setState({
                        isLoaded: true,
                        error
                    });
                }
            )
        }
        //=====================================================================
    }

    createNewCampaign() {

        console.log("send create new campaign request");

        let defaultCampaign = 
        {
            "company": "YC",
            "title": "New Campaign",
            "position_x": "0.00",
            "position_y": "2.00",
            "position_z": "0.00",
            "rotation_x": "0.00",
            "rotation_y": "0.00",
            "rotation_z": "0.00",
            "display_stands": [
                {
                    "name": "demoTable",
                    "type": "displayStand",
                    "position_x": "0.40",
                    "position_y": "23.17",
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
        const CAMPAIGN_API_URL = 'http://stolenbyte.kr:8080/api/v1/campaigns/';
        fetch(CAMPAIGN_API_URL, {
            method: 'POST',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(defaultCampaign)
        })
        .then(res => {
            return res.json();
        })  
        .then(data => {
            console.log(data);
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
        const { error, isLoaded, campaigns, isCampaignLoaded, campaign, campaignFound } = this.state;
        const campaignId = this.props.campaignId;


        if (error) {
          return <div>Error: {error.message}</div>;
        } else if (!isLoaded) {
          return <div>Loading campaign list from api server...</div>;
        } else if(!isNaN(campaignId) && !isCampaignLoaded) {
            return <div>Loading campaign from api server...</div>;
        } else {
            return (
                <div className="row bg-light-gray height90">
                    <div className="col-2">
                        <div className="box-white">
                        <div className="row">
                            <div className="col-10">
                                <h5>All Campaigns</h5>
                            </div>
                            <div className="col-2">
                                <button className="btn btn-primary" onClick={this.createNewCampaign}>+</button>
                            </div>
                        </div>
                        </div>
                        <div className="box-white">
                            {campaigns.map((campaign) => {
                                return (<PostLink key={campaign.id} campaignId={campaign.id} campaignTitle={campaign.title} />)
                            })}
                        </div>
                        <div className="box-white text-center">(CLOUD STORAGE INFORMATION)</div>
                    </div>
                    <div className="col-10">
                        {
                            (isNaN(campaignId)) 
                            ? 'Please select a campaign from the list to the left'
                            : (campaignFound)
                                ? <Campaign campaignId={campaign.id} title={campaign.title} displayStands={campaign.display_stands} /> 
                                : <div>This campaign does not exist anymore</div>
                           
                        }
                    </div>
                </div>
            )
        }
    }
}

export default Campaigns