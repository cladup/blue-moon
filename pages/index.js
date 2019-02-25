// import '../popup.css'
import '../style.css'
import Head from 'next/head'
import React, {Component} from 'react'
import {withRouter} from 'next/router'

import Header from './nextFragments/header'
import Campaigns from './nextFragments/campaigns'
import Products from './nextFragments/products'


class Index extends Component {
    constructor(props) {
        super(props);
        this.state = {
            value: '',
        };
    }

    render() {
        // console.log(this.props.router.query);
        return (
            <div>
                <Head>
                    <meta charSet="utf-8" />
                    <meta name="viewport" content="width=device-width, initial-scale=1" />
                    <title>Clad Up</title>
                </Head>
                <div className="container-fluid d-flex h-100 flex-column">
                    <Header nav={this.props.router.query.page} />
                    <div className="row flex-fill d-flex justify-content-start overflow-auto">
                        <div className="col-12 no-padding">
                            {(this.props.router.query.page == 'Campaigns') ? <Campaigns campaignId={this.props.router.query.campaignId} /> :''}
                            {(this.props.router.query.page == 'Products') ? <Products /> : ''}
                            {(this.props.router.query.page == undefined) ? '랜딩페이지!' : ''}
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}

export default withRouter(Index)