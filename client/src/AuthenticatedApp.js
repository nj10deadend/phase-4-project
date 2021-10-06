import './App.css';
import Game from './Components/Game';
import { Switch, Route, NavLink, useHistory } from 'react-router-dom'

function AuthenticatedApp ({ currentUser, setCurrentUser }) {

    const history = useHistory()
  
    const handleLogout = () => {
        fetch('/logout', {
        method: 'DELETE',
        credentials: 'include'
        })
        .then(res => {
            if (res.ok) {
            setCurrentUser(null)
            history.push('/')
            }
        })
    }

    return (
        <div className="App">
          <nav>
            <span>
              {/* <NavLink to="/game">Game</NavLink>{" - "} */}
              {/* <NavLink to="/events">Events</NavLink> */}
            </span>
            <span>Logged in as {currentUser.username} <button onClick={handleLogout}>Logout</button></span>
          </nav>
          <Switch>
            <Route path="/game">
              <Game />
            </Route>
          </Switch>
        </div>
      );
}


export default AuthenticatedApp;