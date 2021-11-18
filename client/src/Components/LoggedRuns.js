import {useEffect, useState} from "react"

export default function LoggedRuns(){
    const [runsList, setRunsList] = useState([])

    useEffect(() =>{
        fetch("/runlog")
        .then((r)=>r.json())
        .then(runs => setRunsList(runs))},[]);
    
    return(
        <div>
            <h1>Logged Runs</h1>
            <ol id="runs list">
            {runsList.map(run => <li>Cleared level {run.cleared_levels}</li>)}
            </ol>
        </div>

    )
}