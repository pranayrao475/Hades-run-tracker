import {useEffect, useState} from "react";
import RunDetails from "./RunDetails"
import styled from "styled-components"

export default function LoggedRuns(){
    const [runsList, setRunsList] = useState([])
    const [chosenBoons, setChosenBoons] = useState([])

    useEffect(() =>{
        fetch("/runlog")
        .then((r)=>r.json())
        .then(runs => setRunsList(runs))},[]);
    
    function clickedRun(e){
        let selectedRun = runsList.find(run => run.id.toString() === e.target.id); 
        setChosenBoons(selectedRun.chosen_boons.map(b=>b.boon_name))
    }
    return(
        <Container>
            <h1>My Runs Tracker</h1>
        <Wrapper>
            <Runwrapper>
            <h1>Logged Runs</h1>
            <ol id="runslist">
            {runsList.map(run => <li key={run.id-1} id={run.id} onClick={clickedRun}>Cleared level {run.cleared_levels} on {run.entered_on}</li>)}
            </ol>
            </Runwrapper>
            <Boonwrapper>
            <RunDetails chosenBoons={chosenBoons}></RunDetails>
            </Boonwrapper>
        </Wrapper>
        </Container>

    )
}
const Container = styled.div`
background-color: brown;
  margin: 0;
  padding: 20px 40px;
  color: black;
  font-family: Chalkduster, fantasy;
  text-align: center;
  justify-content: center;
  font-size: 50px;
  text-shadow: 2px 4px 6px red;
  background-image:linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)), url(https://compass-ssl.xbox.com/assets/ed/66/ed669e9c-c071-4e2d-84d8-6ce7cf2a489c.jpg?n=667864_Gallery-0_1350x759_05.jpg);
  background-size: cover;
  background-position: center;
  height: 100vh;
`
const Wrapper= styled.div`
display: grid;
  grid: 100% / auto auto;
  grid-gap: 0;
  padding: 0;
  margin: 0;
`
const Runwrapper = styled.div`
font-size: 30px;
color: white;
border: 4px solid rgba(219, 241, 241, 0.20);
margin: 20px;
ol#runslist{
list-style-type: none;
}
// #runslist {
//     position: relative;
//     width: 80%;
//     height: 100%;
//     background-color: rgba(219, 241, 241, 0.20);
//     border-radius: 0% 0% 0% 0% / 0% 0% 0% 0% ;
//     box-shadow: 20px 20px rgba(0,0,1,.15);
//     transition: all .4s ease;
//   }
//   #runslist:hover {
//     border-radius: 0% 0% 50% 50% / 0% 0% 5% 5% ;
//     box-shadow: 10px 10px rgba(0,0,1,.25);
//   }
  
`

const Boonwrapper = styled.div `
font-size: 30px;
color: white;
border: 4px solid rgba(219, 241, 241, 0.20);
margin: 20px;
`
