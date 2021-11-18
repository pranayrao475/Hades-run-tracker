import {useEffect, useState} from "react"
import BoonList from "./BoonList"

export default function NewRunForm(){
    const [gods, setGods] = useState([])
    const [boonList, setBoonList] = useState([])
    const [chosenBoons, setChosenBoons] = useState([])
    const [clearedLevels, setClearedLevels] = useState(0)

    useEffect(() => {
        fetch("/gods")
        .then((r) => r.json())
        .then(g => {
            setGods(g)
        })
    },[])

    function submitHandler(e){
        e.preventDefault();
        fetch("/escape", {
            method: "POST",
            headers: { "Content-Type": "application/json"},
            body: JSON.stringify({
                cleared_levels: clearedLevels,
                chosenBoons
            })
        })
    }
    function displayGodsBoons(e){
        setBoonList(gods[e.target.id-1].boons)
    }
    
    function chooseBoon(e){

    }

    return(
        <div>
            <form onSubmit={submitHandler}>
                <div id="levels">How far did you get?
                    <button onClick={()=>setClearedLevels(1)}>Made it out of Tartarus</button>
                    <button onClick={()=>setClearedLevels(2)}>Boned the Bone Hydra</button>
                    <button onClick={()=>setClearedLevels(3)}>Exited Elysium</button>
                    <button onClick={()=>setClearedLevels(4)}>Hades Down</button>
                </div>
                <div id="boons">

                </div>
            </form>
            {gods.map(god => 
                <div id={god.id}> 
                    <h2>{god.name}</h2>
                    <img id={god.id} src={god.image} name={god.name} onClick={displayGodsBoons}/>
                    <p>{god.title}</p>
                </div>
            )}
            <BoonList boonList={boonList}></BoonList>
        </div>
    )
}