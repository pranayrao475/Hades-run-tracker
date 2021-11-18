import {useEffect, useState} from "react";
import RunDetails from "./RunDetails"

export default function LoggedRuns(){
    const [runsList, setRunsList] = useState([])
    const [chosenBoons, setChosenBoons] = useState([])

    useEffect(() =>{
        fetch("/runlog")
        .then((r)=>r.json())
        .then(runs => setRunsList(runs))},[]);
    
    function clickedRun(e){
        let selectedRun = runsList.find(run => run.id == e.target.id);
        // console.log(selectedRun.chosen_boons.map(b=>b.boon_name));
        setChosenBoons(selectedRun.chosen_boons.map(b=>b.boon_name))
    }
    return(
        <div>
            <h1>Logged Runs</h1>
            <ol id="runs list">
            {runsList.map(run => <li key={run.id-1} id={run.id} onClick={clickedRun}>Cleared level {run.cleared_levels} on {run.entered_on}</li>)}
            </ol>
            <RunDetails chosenBoons={chosenBoons}></RunDetails>
        </div>

    )
}