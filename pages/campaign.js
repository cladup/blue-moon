import React, {Component} from 'react'
import Product from './product'

class Campaign extends Component {
    constructor(props) {
        super(props);
        this.state = {
            value: '',
        };
    }

    render() {
        return (
            <div>
                <h5 className="box-white row">{this.props.name}</h5>
                <div className="row">
                    <div className="col-8 box-white virtual-env-scene-viewport"> Virtual Environment</div>
                    <div className="col-4 box-white">
                        <h6>Products</h6>
                        <Product name="product 1" />
                        <Product name="product 2" />
                        <Product name="product 3" />
                    </div>
                </div>
                <div className="row">
                    <div className="col-8 box-white">
                        <h6>Furnitures</h6>
                        <Product name="Furniture 1" />
                        <Product name="Furniture 2" />
                        <Product name="Furniture 3" />
                        <Product name="Furniture 4" />
                    </div>
                    <div className="col-4 text-center">(storage_info)</div>
                </div>
            </div>
        )
    }
}

export default Campaign