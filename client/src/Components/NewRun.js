import {useEffect, useState} from "react"
import BoonList from "./BoonList"
import styled from "styled-components"
import ChosenBoons from "./ChosenBoons"

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
    },[]);

    function submitHandler(e){
        e.preventDefault();
        postRunAndBoons(clearedLevels, chosenBoons)
    };

    function postRunAndBoons(levels, boons){
        fetch("/escape", {
            method: "POST",
            headers: { "Content-Type": "application/json"},
            body: JSON.stringify({
                cleared_levels: levels,
                chosenBoons: boons
            })
        })
        .then(r=>r.json())
        .then(console.log)
    };

    function displayGodsBoons(e){
        fetch(`/gods/${e.target.id}/boons`)
        .then(r=>r.json())
        .then(boons => setBoonList(boons))
        // setBoonList(gods[e.target.id-1].boons)
    };

    function addBoons(e){
        // let boonIDs = boonList.map(b => b.id)
        let boonFilter = boonList.filter(b => b.id == e.target.id)
        // console.log(`boonIDs ${boonIDs}`)
        console.log(`boon filter ${boonFilter}`)
        // console.log(`target id ${e.target.id}`)
        setChosenBoons([...chosenBoons, boonFilter[0]])
        e.target.remove()
    };

    return(
        <div>
            <form onSubmit={submitHandler}>
                <Idwrapper id="levels">How far did you get?
                    <label for="1stlvl">Made it out of Tartarus</label>
                    <input type="button" id="1stlvl" onClick={()=>setClearedLevels(1)}></input>
                    <label for="2ndlvl">Boned the Bone Hydra</label>
                    <input type="button" id="2ndlvl" onClick={()=>setClearedLevels(2)}></input>
                    <label for="3rdlvl">Exited Elysium</label>
                    <input type="button" id="3rdlvl" onClick={()=>setClearedLevels(3)}></input>
                    <label for="4thlvl">Hades Down</label>
                    <input type="button" id="4thlvl" onClick={()=>setClearedLevels(4)}></input>
                </Idwrapper>
                <ChosenBoons chosenBoons={chosenBoons}></ChosenBoons>
            </form>
            <Runwrapper>
            {gods.map(god => 
                <div className="gods" id={god.id}> 
                    <h2>{god.name}</h2>
                    <img id={god.id} src={god.image} name={god.name} onClick={displayGodsBoons} alt= ""/>
                    <p>{god.title}</p>
                </div>
            )}
            
            </Runwrapper>
            <Boonwrapper>
            <BoonList boonList={boonList} addBoons={addBoons}></BoonList>
            </Boonwrapper>
        </div>
    )
}
const Runwrapper = styled.div`
background-image:linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)), url(https://i.pinimg.com/originals/a9/52/9a/a9529a5067aa1f2fc995679ac89f10ad.gif);
  background-size: cover;
  background-position: center;
  height: 100%;

display: flex;
flex-wrap: wrap;
justify-content: space-around;
align-content: center;
gap: 10px 20px;
& h2 {
    background-coor: brown;
  margin: 0;
  padding: 20px 40px;
  color: black;
  font-family: Chalkduster, fantasy;
  text-align: center;
  justify-content: center;
  font-size: 30px;
  text-shadow: 2px 4px 6px red;
}
& p{
    background-coor: brown;
    margin: 0;
    padding: 20px 40px;
    color: black;
    font-family: Chalkduster, fantasy;
    text-align: center;
    justify-content: center;
    font-size: 15px;
    text-shadow: 1px 2px 4px red;
}


.gods{
    
    color: red;
    width: 250px;
    margin: 10px;
    padding: 20px;
    background-color: white;
    box-shadow: 0 0 20px rgba(0,0,0,0.1), 0 0 60px rgba(0,0,0,0.12);
    & img{
    width: 100%;
    height: 70%;
    cursor: pointer;
    margin: 0;
    overflow: hidden;
    background-color: #000;
    }
}

`
const Idwrapper = styled.div`

    color: white;
    background-color: black;
    display: block;
    text-align: center;
    font-size: 50px;

`
const Boonwrapper = styled.div`

color: red;
background-color: white;
font-family: Chalkduster, fantasy;
text-align: center;
margin: 0;
text-decoration: none;
list-style-type: none;
font-size: 30px;
background-image:linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)), url(https://i.pinimg.com/originals/a9/52/9a/a9529a5067aa1f2fc995679ac89f10ad.gif);

`