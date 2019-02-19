import React, {Component} from 'react'
import Link from 'next/link'

const NavLink = (props) => (
    <li className="nav-item">
        <Link href={`/?page=${props.page}`}>
            <a className="nav-link text-light active">{props.page}</a>
        </Link>
    </li>
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
            <div className="bg-dark text-light">
                <span className="small text-muted">CLOUD</span><br />
                <ul className="nav flex-column">
                    <NavLink page="Campaigns"/>
                    <NavLink page="Products"/>
                </ul>
            </div>
        )
    }
}

export default NavBar