import React, {Component} from 'react'
import Link from 'next/link'

const NavLink = (props) => (
    <Link href={`/?page=${props.page}`}>
        <a className="nav-link text-light active">{props.page}</a>
    </Link>
)

class NavBar extends Component {
    constructor(props) {
        super(props)
        this.state = {
            value: '',
        }
    }

    render() {
        return (
            <div className="text-light">
                <NavLink page="Campaigns"/>
                <NavLink page="Products"/>
            </div>
        )
    }
}

export default NavBar