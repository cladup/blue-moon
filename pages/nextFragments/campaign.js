import React, {Component} from 'react'
import Product from './product'
import SceneView from './sceneview';

class Campaign extends Component {
    constructor(props) {
        super(props);
        this.state = {
            value: '',
        };
    }

    render() {
        const displayStands = this.props.displayStands;
        return (
            <div>
                <h5 className="box-white row">{this.props.name}</h5>
                <div className="row">
                    <div className="col-9 box-white virtual-env-scene-viewport">
                        <SceneView />
                    </div>
                    <div className="col box-white">
                        <h6>Products</h6>
                            {displayStands.map((displayStand) => {     
                                return (<Product key={displayStand.products[0].id} name={displayStand.products[0].name} />)
                            })}
                    </div>
                </div>
                <div className="row">
                    <div className="col-9 box-white">
                        <h6>Furnitures</h6>
                            {displayStands.map((displayStand) => {     
                                return (<Product key={displayStand.products[0].id} name={displayStand.products[0].type} />)
                            })}
                    </div>
                    <div className="col text-center">(storage_info)</div>
                </div>
            </div>
        )
    }
}

export default Campaign