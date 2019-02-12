import '../style.css'
import Link from 'next/link'
import {withRouter} from 'next/router'
import Campaign from './campaign'
import Product from './product'

const PostLink = (props) => (
    <Link href={`/?nav=${props.nav}`}>
        <a className="nav-link text-light active">{props.nav}</a>
    </Link>
)

const Index = withRouter((props) => (
    <div className="container-fluid d-flex h-100 flex-column">
        {/* top bar */}
        <div className="row bg-primary text-light flex-shrink-0">
            <div className="col-2 text-center">
                <h1 className="font-weight-bold"><a className="nav-link text-light active" href="./">CladUp</a></h1>
                <span className="small">New Future Virtual Shopping</span>
            </div>
            <div className="col-8 row">
                <div className="col-4 d-flex flex-row bd-highlight mb-3">
                    <div className="bd-highlight align-middle">HOME {(props.router.query.nav == undefined) ? '' : '> '+props.router.query.nav.toUpperCase()}</div>
                </div>
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
            <div className="col-2">
                <span className="align-middle">(account_img)(account_name)(dropdown_icon)</span>
            </div>
        </div>
        
        {/*
            main body
            I want this row height to filled the remaining height
        */}
        <div className="row flex-fill d-flex justify-content-start overflow-auto">
            {/* vertical nav bar */}
            <div className="col-2 bg-dark text-light">
                <span className="small text-muted">CLOUD</span><br />
                <ul className="nav flex-column">
                    <li className="nav-item">
                        <Link href="./?nav=Campaigns">
                            <PostLink nav="Campaigns"/>
                        </Link>
                    </li>
                    <li className="nav-item">
                        <Link href="./?nav=Products">
                            <PostLink nav="Products"/>
                        </Link>
                    </li>
                </ul>
            </div>
            {(props.router.query.nav == 'Campaigns') ? <Campaign /> :''}
            {(props.router.query.nav == 'Products') ? <Product /> : ''}
        </div>
    </div>
))

export default Index