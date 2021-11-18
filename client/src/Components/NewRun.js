import {useEffect, useState} from "react"
import BoonList from "./BoonList"
import styled from "styled-components"

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
                <Idwrapper id="levels">Level Cleared</Idwrapper>
            </form>
            <Runwrapper>
            {gods.map(god => 
                <div className="gods"> 
                    <h2>{god.name}</h2>
                    <img id={god.id} src={god.image} name={god.name} onClick={displayGodsBoons} alt= ""/>
                    <p>{god.title}</p>
                </div>
            )}
            
            </Runwrapper>
            <Boonwrapper>
            <BoonList boonList={boonList}></BoonList>
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