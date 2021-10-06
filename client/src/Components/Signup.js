// import Login from "./Login";
import { useHistory, Link } from 'react-router-dom'
import {useState} from 'react';



function Signup({setCurrentUser}) {
    
    
    const history = useHistory()
    const [username, setUsername] = useState('')
    const [password, setPassword] = useState('')
    const [passwordConfirmation, setPasswordConfirmation] = useState('')
  
    
    // const goToLogin = ()=> {
    //     history.push('/login')
    // }
    const handleSubmit = (event) => {
        event.preventDefault()
        fetch('/signup', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify({
            username,
            password,
            password_confirmation: passwordConfirmation
          })
        })
          .then(res => {
            if (res.ok) {
              res.json().then(user => {
                setCurrentUser(user)
                history.push('/game')
              })
            } else {
              setCurrentUser({ username: "Dakota" })
              history.push('/game')
              res.json().then(errors => {
                console.error(errors)
              })
            }
          })
      }

    
    return (
        <div className="authForm">
            
            <form onSubmit={handleSubmit}>
                <h1>Sign Up</h1>
                <p>
                <label 
                    htmlFor="username"
                >
                    Username
                </label>
                <input
                    type="text"
                    name="username"
                    value={username}
                    onChange={(e) => setUsername(e.target.value)}
                />
                </p>
                <p>
                <label 
                    htmlFor="password"
                >
                    Password
                </label>
                <input
                    type="password"
                    name=""
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                />
                </p>
                <p>
                <label 
                    htmlFor="password_confirmation"
                >
                    Password Confirmation
                </label>
                <input
                    type="password"
                    name="password_confirmation"
                    value={passwordConfirmation}
                    onChange={(e) => setPasswordConfirmation(e.target.value)}
                />
                </p>
                <p><button type="submit">Sign Up</button></p>
                <p>-- Already have an account? --</p>
                <p><Link to="/">Log In</Link></p>
            </form>
    
            

        </div>
    )
}

/// SHIT Code 


////////////////////////////////


// const [users, setUsers] = useState([])



// useEffect(getFetchUsers, [])


// const [signupInfo, setSignupInfo] = useState(
//     {
//     username: "",
//     password: ""
//     }
// )

// function handleSubmit(event) {
//     event.preventDefault()
//     fetch('/users', {
//         method: 'POST',
//         headers: {
//             'Accept': 'application/json',
//             'Content-Type': 'application/json'
//         },
//         body: JSON.stringify(signupInfo)
//     })
//     // .then((r)=> {r.json()})
//     // .then((credentials)=> {setSignupInfo(credentials)})

//     // return(
//     //     <p>Account created!</p>
//     // )
//     .then(response => response.json())
//     .then(allUsers => {
//         addUser(allUsers)
//         setSignupInfo(
//         {
//             username: "",
//             password: ""
//         })
        
//     })
// }

// function updateSignupInfo(field) {
//     let name = field.target.name
//     let value = field.target.value
//     setSignupInfo({...signupInfo, [name]:value})
// }
// function addUser(someUser) {
//     const newUser = [...users, someUser]
//     setUsers(newUser)
// }
export default Signup;