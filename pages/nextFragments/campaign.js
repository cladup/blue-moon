import React, {Component} from 'react'
import SceneView from './sceneview';

class Campaign extends Component {
    constructor(props) {
        super(props);
        this.state = {
            value: '',
        };
    }

    render() {
        let displayStands = this.props.displayStands;

        return (
            <div>
                <div className="row">
                    <h5 className="box-white">{this.props.title}</h5>
                </div>
                <div className="row">
                    <div className="col-9 box-white">
                        <SceneView displayStands={displayStands} />
                    </div>
                    <div className="col-3">
                        <div className="box-white">
                            <div className="box-white">
                                <h6>Products</h6>
                            </div>
                            {displayStands.map((displayStand) => {
                                return (
                                    displayStand.products.map((product) => {
                                        console.log(product.name);
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