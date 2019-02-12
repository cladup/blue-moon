import '../style.css'
import {withRouter} from 'next/router'
import Header from './header'
import NavBar from './nav'
import Campaigns from './campaigns'
import Products from './products'

const Index = withRouter((props) => (
    <div className="container-fluid d-flex h-100 flex-column">
        <Header nav={props.router.query.page} />
        
        {/*
            main body
            I want this row height to fill the remaining height
        */}
        <div className="row flex-fill d-flex justify-content-start overflow-auto">
            {/* vertical nav bar */}
            <NavBar />
            {(props.router.query.page == 'Campaigns') ? <Campaigns /> :''}
            {(props.router.query.page == 'Products') ? <Products /> : ''}
        </div>
    </div>
))

export default Index