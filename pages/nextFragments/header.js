import React, {Component} from 'react'
import Link from 'next/link'

const PostLink = (props) => (
    <Link as={`/${props.page}`} href={`/?page=${props.page}`}>
        <a className="nav-link text-light active">{props.page}</a>
    </Link>
)

class Header extends Component {
    constructor(props) {
        super(props);
        this.state = {
            value: '',
        };
    }

    render() {
        return (
            <header className="height10">
                <div className="row bg-primary text-light flex-shrink-0">
                    <div className="col-2 text-center">
                        <h1 className="font-weight-bold"><a className="nav-link text-light active" href="/">CladUp</a></h1>
                        <span className="small">New Future Virtual Shopping</span>
                    </div>
                    <div className="col-1">
                        <div className="align-middle">
                            <PostLink page="Campaigns" />
                        </div>
                    </div>
                    <div className="col-1">
                        <div className="align-middle">
                            <PostLink page="Products" />
                        </div>
                    </div>
                    <div className="col-3" />
                    <div className="col-3">
                        <div className="text-right align-middle">
                            <div className="input-group">
                                <input type="text" className="form-control" placeholder="Search" />
                                <div className="input-group-append">
                                    <button className="btn btn-outline-light" type="button">Search</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div className="col-2">
                        <div className="text-center align-middle">
                            Account
                        </div>
                    </div>
                </div>
                
                {/* <div className="align-middle">
                    HOME {(this.props.nav == undefined) ? '' : '> '+this.props.nav.toUpperCase()}
                </div> */}
            </header>
        )
    }
}

export default Header