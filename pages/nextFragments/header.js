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
            <header>
                <div className="row bg-primary text-light flex-shrink-0">
                    <div className="col-2 text-center">
                        <h1 className="font-weight-bold"><a className="nav-link text-light active" href="/">CladUp</a></h1>
                        <span className="small">New Future Virtual Shopping</span>
                    </div>
                    <div className="col-2">
                        <div className="align-middle">
                            <PostLink page="Campaigns" />
                            <PostLink page="Products" />
                        </div>
                    </div>
                    <div className="col-8">
                        <div className="align-middle">
                            HOME {(this.props.nav == undefined) ? '' : '> '+this.props.nav.toUpperCase()}
                        </div>
                    </div>
                </div>
            </header>
        )
    }
}

export default Header