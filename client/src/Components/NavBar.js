import { NavLink } from "react-router-dom";

function NavBar() {
    return (
        <nav className="navBar">
            <NavLink exact to="/"> Home </NavLink>
            <NavLink to="/login"> Login </NavLink>
            <NavLink to="/game"> [Insert Game Title] </NavLink>
          
            
        </nav>
    )
}
export default NavBar;