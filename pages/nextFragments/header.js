import React, {Component} from 'react'
import NavBar from './navbar'

class Header extends Component {
    constructor(props) {
        super(props);
        this.state = {
            value: '',
        };
    }

    render() {
        return (
            <header className="row bg-primary text-light flex-shrink-0">
                {/* logo */}
                <div className="col-2 text-center">
                    <h1 className="font-weight-bold"><a className="nav-link text-light active" href="./">CladUp</a></h1>
                    <span className="small">New Future Virtual Shopping</span>
                </div>
                <div className="col-8 row">
                    {/* current page indicator */}
                    <div className="col-4 d-flex flex-row bd-highlight mb-3">
                        <div className="bd-highlight align-middle">HOME {(this.props.nav == undefined) ? '' : '> '+this.props.nav.toUpperCase()}</div>
                        <NavBar />
                    </div>
                    {/* utilities */}
                    <div className="col-8 d-flex flex-row-reverse bd-highlight">
                        <div className="bd-highlight align-middle">(icon3)</div>
                        <div className="bd-highlight align-middle">(icon2)</div>
                        <div className="bd-highlight align-middle">(icon1)</div>
                        <div className="bd-highlight align-middle">
                            <form className="form-inline input-group">
                                <input className="form-control" type="search" placeholder="Search" />
                                <div className="input-group-append"><button className="btn btn-outline-success" type="submit">Search</button></div>
                            </form>
                        </div>
                    </div>
                </div>
                {/* account */}
                <div className="col-2">
                    <span className="align-middle">(account_img)(account_name)(dropdown_icon)</span>
                </div>
            </header>

        )
    }
}

export default Header