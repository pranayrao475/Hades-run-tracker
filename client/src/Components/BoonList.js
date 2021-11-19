// import styled from "styled-components"
export default function BoonList({boonList, addBoons}){
    

    return (
        <ul id="boon-container">
           
            {boonList ? boonList.map(boon => <li key={boon.id} onClick={addBoons} id={boon.id}>{boon.boon_name}</li>)
            : <h2>Choose a God to see their boons</h2>}
        </ul>
      
    )
}
