import React, {Component} from 'react'
import Campaign from './campaign'

class Campaigns extends Component {
    constructor(props) {
        super(props);
        this.state = {
            error: null,
            isLoaded: false,
            campaigns: []
        };
                
    }
    
    componentDidMount() {
        const CAMPAIGN_API_URL = 'http://stolenbyte.kr:8080/api/campaign/get';
        fetch(CAMPAIGN_API_URL)
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

    render() {
        const { error, isLoaded, campaigns } = this.state;

        if (error) {
          return <div>Error: {error.message}</div>;
        } else if (!isLoaded) {
          return <div>Loading campaigns from stolenbyte...</div>;
        }
        return (
            <div className="row no-padding bg-light-gray">
                <div className="col-2 no-padding">
                    <div className="box-white">
                        <h5>All Campaigns</h5>
                        <div className="box-white">
                            {campaigns.map((campaign) => {     
                                return campaign.title
                            })}
                        </div>
                    </div>
                </div>
                <div className="col">
                    <Campaign name={campaigns[0].title} displayStands={campaigns[0].display_stands} />
                </div>
            </div>

        )
    }
}

export default Campaigns