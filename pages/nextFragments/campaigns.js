import React, {Component} from 'react'
import Link from 'next/link'
import Campaign from './campaign'

const PostLink = (props) => (
    //<Link as={`/Campaigns/${props.campaignId}`} href={`/index?page=Campaigns&campaignId=${props.campaignId}`}>
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
            campaign: null
        };
    }
    
    componentDidMount() {
        //=====================================================================
        // get all the campaign infomations from api server
        const CAMPAIGN_LIST_API_URL = 'http://stolenbyte.kr:8080/api/campaign/get/';
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
        // get the selected campaign infomation from api server------------------------------------------------------------------------여기가 안됨. campaign이 안불림.왜!?
        let campaignId = this.props.campaignId;
        if(!isNaN(campaignId)) {
            const CAMPAIGN_API_URL = 'http://stolenbyte.kr:8080/api/campaign/get/'+campaignId;

            console.log(CAMPAIGN_API_URL);

            fetch(CAMPAIGN_API_URL)
                .then(res => res.json())
                .then(
                (result) => {
                    this.setState({
                        isLoaded: true,
                        campaign: result
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
        //=====================================================================
    }

    render() {
        const { error, isLoaded, campaigns, campaign } = this.state;
        const campaignId = this.props.campaignId;

        console.log(this.state);

        if (error) {
          return <div>Error: {error.message}</div>;
        } else if (!isLoaded) {
          return <div>Loading campaigns from api server...</div>;
        }
        return (
            <div className="row bg-light-gray height90">
                <div className="col-2">
                    <div className="box-white">
                        <h5>All Campaigns</h5>
                    </div>
                    <div className="box-white">
                        {campaigns.map((campaign) => {
                            return (<PostLink key={campaign.id} campaignId={campaign.id} campaignTitle={campaign.title}/>)
                        })}
                    </div>
                    <div className="box-white text-center">(CLOUD STORAGE INFORMATION)</div>
                </div>
                <div className="col-10">
                    {
                        (isNaN(campaignId)) 
                        ? 'Please select a campaign from the list to the left'
                        : <Campaign title={campaign.title} displayStands={campaign.display_stands} /> 
                    }
                </div>
            </div>

        )
    }
}

export default Campaigns