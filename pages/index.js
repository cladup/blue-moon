import '../style.css'
import React, {Component} from 'react'
import {withRouter} from 'next/router'
import Header from './header'
import NavBar from './navlink'
import Campaigns from './campaigns'
import Products from './products'

class Index extends Component {
    constructor(props) {
        super(props);
        this.state = {
            value: '',
        };
    }

    render() {
        return (
            <div className="container-fluid d-flex h-100 flex-column">
                <Header nav={this.props.router.query.page} />
                
                {/*
                    main body
                    I want this row height to fill the remaining height
                */}
                <div className="row flex-fill d-flex justify-content-start overflow-auto">
                    {/* vertical nav bar */}
                    <NavBar />
                    {(this.props.router.query.page == 'Campaigns') ? <Campaigns /> :''}
                    {(this.props.router.query.page == 'Products') ? <Products /> : ''}
                    {(this.props.router.query.page == undefined) ? '랜딩페이지!' : ''}
                </div>
            </div>
        )
    }
}
export default withRouter(Index)