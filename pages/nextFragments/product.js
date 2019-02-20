import React, {Component} from 'react'

class Product extends Component {
    constructor(props) {
        super(props)
        this.state = {
            value: '',
        }
    }
    render() {
        return (
            <div className="box-white">{this.props.name}</div>

        )
    }
}

export default Product