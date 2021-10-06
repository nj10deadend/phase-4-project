import './App.css';
// import { Route, Switch } from 'react-router-dom';
// import NavBar from './Components/NavBar';
// import Game from './Components/Game';
import React, { useState, useEffect } from 'react'
import AuthenticatedApp from './AuthenticatedApp'
import UnauthenticatedApp from './UnauthenticatedApp'
import { BrowserRouter as Router } from 'react-router-dom'




function App() {

  const [currentUser, setCurrentUser] = useState(null)
  const [authChecked, setAuthChecked] = useState(false)

  useEffect(() => {
    fetch('/me', {
      credentials: 'include'
    })
      .then(res => {
        if (res.ok) {
          res.json().then((user) => {
            setCurrentUser(user)
            setAuthChecked(true)
          })
        } else {
          setAuthChecked(true)
        }
      })
  }, [])

  if(!authChecked) {
    return (
      <div></div>
    )
  } 


  return (
    <Router>
      {currentUser ? (
          <AuthenticatedApp
            setCurrentUser={setCurrentUser}
            currentUser={currentUser}
          />
        ) : (
          <UnauthenticatedApp
            setCurrentUser={setCurrentUser}
          />
        )
      }
    </Router>
  
    
    );
  }

  export default App;
  
  // <div className="App">
  //   <NavBar />
  //   <Switch>
      // <Route path="/game">
      //   <Game />
      // </Route>
  //     <Route path="/login">
  //       <Login />
  //     </Route>

  //     <Route exact path="/">
  //       <Signup />
  //     </Route>
  //   </Switch>
  // </div>