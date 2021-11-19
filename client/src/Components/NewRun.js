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
        alert("Run logged!")
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
    };

    function addBoons(e){
        let selectedBoon = boonList.find(b => b.id.toString() === e.target.id)
        setChosenBoons((prevChosenBoons) =>[...prevChosenBoons, selectedBoon])
        console.log(e.target)
        e.target.remove() //this breaks page if user clicks a god after adding a boon
    };

    return(
        <div>
            <Formwrapper>
            <form onSubmit={submitHandler}>
            <Formwrapper>
                <Idwrapper id="levels"><h1>How far did you get?</h1>
                  
                    <label for="1stlvl">Made it out of Tartarus</label>
                    <input type="checkbox"  id="1stlvl" onClick={()=>setClearedLevels(1)}></input>
                    <label for="2ndlvl">Boned the Bone Hydra</label>
                    <input type="checkbox"  id="2ndlvl" onClick={()=>setClearedLevels(2)}></input>
                    <label for="3rdlvl">Exited Elysium</label>
                    <input type="checkbox"  id="3rdlvl" onClick={()=>setClearedLevels(3)}></input>
                    <label for="4thlvl">Hades Down</label>
                    <input type="checkbox"  id="4thlvl" onClick={()=>setClearedLevels(4)}></input>
                  
                </Idwrapper>
                </Formwrapper>
                <Choosenboonwrapper>

                <ChosenBoons chosenBoons={chosenBoons}></ChosenBoons>
                <button class="button_slide slide_right">Save Run</button>
                </Choosenboonwrapper>
            </form>
                    </Formwrapper>
            <Booncontainer>
            <Runwrapper className="item1">
            {gods.map(god => 
                <div className="gods" key={god.id}> 
                    <h2>{god.name}</h2>
                    <img id={god.id} src={god.image} name={god.name} onClick={displayGodsBoons} alt= ""/>
                    <p>{god.title}</p>
                </div>
            )}
            
            </Runwrapper>
            <Boonwrapper className="item2">
            <BoonList boonList={boonList} addBoons={addBoons}></BoonList>
            </Boonwrapper>
            </Booncontainer>
        </div>
    )
}
const Runwrapper = styled.div`
background-image:linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.3)), url(https://i.pinimg.com/originals/a9/52/9a/a9529a5067aa1f2fc995679ac89f10ad.gif);
  background-size: cover;
  background-position: center;
  height: 100%;
display: flex;
flex-wrap: wrap;
justify-content: flex-start;
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
    color: black;
    font-family: Chalkduster, fantasy;
    justify-content: center;
    text-shadow: 4px 4px 8px white;
    & h1{
        text-align: center;
        background-image:linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)), url(https://cdn.cloudflare.steamstatic.com/steam/apps/1145360/ss_34e6660705cfe47d2b2f95189c37f7cb77f75ca6.1920x1080.jpg?t=1624463563);
        margin: 0;
       
    }
    font-size: 50px;
`
const Formwrapper = styled.div`
color: white;
background-image:linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)), url(https://cdn.cloudflare.steamstatic.com/steam/apps/1145360/ss_34e6660705cfe47d2b2f95189c37f7cb77f75ca6.1920x1080.jpg?t=1624463563);

    background-color: black;
   
    
    & label{
text-align: center;
justify-content: center;
    color: white;
  font-family: Chalkduster, fantasy;
  text-shadow: 4px 4px 8px red;
  font-size: 2rem;
  font-weight: 700;
  margin: 20px;

    }
    & input{
     border-radius: 10px;
  border: 2px solid transparent;
  border-color: red;
  background-color:white;
  max-width: 15%;
  width: 2%;
  font-size: 5rem;
  line-height: 4;
  padding: 5px;
  height: 30px;
  width: 30px;
  background-color: red;
  

    }

`
const Boonwrapper = styled.div`

color: white;
text-shadow: 1px 2px 4px red;
background-color: white;
font-family: Chalkduster, fantasy;
ul#boon-container{
    list-style-type: none;
}
margin: 0;
text-decoration: none;
font-size: 30px;
background-image:linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)), url(https://i.pinimg.com/originals/a9/52/9a/a9529a5067aa1f2fc995679ac89f10ad.gif);
background-size: cover;
text-align: center;
cursor:pointer;

 
`
const Choosenboonwrapper = styled.div`
width: 100%;
height: auto;
font-size: 40px;
list-style-type: none;
line-height: 1.6;
color: white;
font-family: Chalkduser, fantasy;
justify-content: center;
text-shadow: 1px 2px 4px red;
margin-top: 0;
text-align: center;
background-image:linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)), url(https://www.heypoorplayer.com/wp-content/uploads/2020/12/Hades-Elysium-Combat.jpg);
background-repeat: no-repeat;
background-size: cover;
.button_slide {
    color: white;
    background-color:black ;
    text-shadow: 4px 4px 8px red;
    border: 2px solid black;
    border-radius: 50px;
    padding: 10px 25px;
    margin-top: 0px;
    margin-left: 40px;
    display: inline-block;
    font-family: Chalkduster, fantasy;
    font-size: 2rem;
    letter-spacing: 1px;
    cursor: pointer;
    box-shadow: inset 0 0 0 0 rgb(46,6,4);
    -webkit-transition: ease-out 0.5s;
    -moz-transition: ease-out 0.4s;
    transition: ease-out 0.4s;
  }
  .slide_right:hover {
    box-shadow: inset 400px 0 0 0 rgb(46,6,4);
  }
       

`

const Booncontainer = styled.div`
display: grid;
  grid: 100% / auto auto;
  grid-gap: 10px;
  padding: 0;
  margin: 0;
  background-color:black ;
`