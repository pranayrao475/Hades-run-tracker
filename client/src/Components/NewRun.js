import {useEffect, useState} from "react"
import BoonList from "./BoonList"

export default function NewRunForm(){
    const [gods, setGods] = useState([])
    const [boonList, setBoonList] = useState([])
    const [clearedLevels, setClearedLevels] = useState([])

    useEffect(() => {
        fetch("/gods")
        .then((r) => r.json())
        .then(g => {
            setGods(g)
        })
    },[])

    function submitHandler(e){
        e.preventDefault();
        // fetch("/escape", {
        //     method: "POST",
        //     headers: { "Content-Type": "application/json"},
        //     body: JSON.stringify({
        //         cleared_levels
        //     })
        // })
    }
    function displayGodsBoons(e){
        setBoonList(gods[e.target.id-1].boons)
    }


    return(
        <div>
            <form onSubmit={submitHandler}>
                <div id="levels">Level Cleared</div>

            </form>
            {gods.map(god => 
                <div className="gods"> 
                    <h2>{god.name}</h2>
                    <img id={god.id} src={god.image} name={god.name} onClick={displayGodsBoons}/>
                    <p>{god.title}</p>
                </div>
            )}
            <BoonList boonList={boonList}></BoonList>
        </div>
    )
}