import Link from 'next/link'

const NavLink = (props) => (
    <li className="nav-item">
        <Link href={`/?page=${props.page}`}>
            <a className="nav-link text-light active">{props.page}</a>
        </Link>
    </li>
)

const NavBar = () => (
    <div className="col-2 bg-dark text-light">
        <span className="small text-muted">CLOUD</span><br />
        <ul className="nav flex-column">
            <NavLink page="Campaigns"/>
            <NavLink page="Products"/>
        </ul>
    </div>
)

export default NavBar