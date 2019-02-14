import React, {Component} from 'react'
import Campaign from './campaign'

class Campaigns extends Component {
    constructor(props) {
        super(props);
        this.state = {
            value: '',
        };
    }

    render() {
        return (
            <div className="col row no-padding bg-light-gray">
                <div className="col-2">
                    <div className="box-white">
                        <h5>All Campaigns</h5>
                        <div className="box-white">Campaign 1</div>
                        <div className="box-white">Campaign 2</div>
                        <div className="box-white">Campaign 3</div>
                        <div className="box-white">Campaign 4</div>
                        <div className="box-white">Campaign 5</div>
                        <div className="box-white">Campaign 6</div>
                    </div>
                </div>
                <div className="col">
                    <Campaign name="Campaign 1" />
                </div>
            </div>

        )
    }
}

export default Campaigns