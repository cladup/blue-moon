import '../style.css';
import Head from 'next/head';
import React, {Component} from 'react';
import {withRouter} from 'next/router';

import Header from './nextFragments/header';
import Campaigns from './nextFragments/campaigns';
import Products from './nextFragments/products';

class Index extends Component {
    constructor(props) {
        super(props);
        this.state = {
            CAMPAIGN_API_URL: 'http://stolenbyte.kr:8080/api/v1/campaigns/',
            //CAMPAIGN_API_URL: 'http://hyperion.clad-up.com/api/v1/campaigns/',
            OBJECT_API_URL: 'http://objection.clad-up.com/api/v1/objects',
            value: '',
        };
    }

    render() {
        let router_query = this.props.router.query;
        return (
            <div>
                <Head>
                    <meta charSet="utf-8" />
                    <meta name="viewport" content="width=device-width, initial-scale=1" />
                    <title>Clad Up</title>
                </Head>
                <div className="container-fluid d-flex h-100 flex-column">
                    <Header nav={router_query.page} />
                    <div className="row flex-fill d-flex justify-content-start overflow-auto">
                        <div className="col-12">
                            {(router_query.page == 'Campaigns')
                                ?
                                    <Campaigns
                                        campaign_id={router_query.campaign_id}
                                        campaign_api_url={this.state.CAMPAIGN_API_URL}
                                        object_api_url={this.state.OBJECT_API_URL}
                                    />
                                : ''
                            }
                            {(router_query.page == 'Products') ? <Products /> : ''}
                            {(router_query.page == undefined) ? '랜딩페이지!' : ''}
                        </div>
                    </div>
                </div>
            </div>
        )
    }
}

export default withRouter(Index)