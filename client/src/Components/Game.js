import {useState, useEffect} from 'react';

function Game () {

    
    
    const [allScripts, setAllScripts] = useState([])
    console.log(allScripts)
    const [currentLvl, setCurrentLvl] = useState({})
    const [currentChoice, setCurrentChoice] = useState("Start")
    const [loading, setLoading] = useState(true)

    function getallLvls () {

        fetch('/scripts')
        .then((response) => response.json())
        .then((fetchedScripts) => {
            // console.log(fetchedScripts)
            setAllScripts(fetchedScripts)
        })
    }
    
    useEffect(getallLvls, [])

    

    return (



        <div>
            <h1>Welcome to the Game</h1>

            {/* { loading ? (
            getCurrentLvl()
            ):
            (
            <></>
            )
            } */}
        </div>
    )
}
export default Game;