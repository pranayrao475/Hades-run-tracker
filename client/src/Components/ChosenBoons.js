export default function ChosenBoons({chosenBoons}){

    return (
        <div id="chosen boons">
            {chosenBoons.map(boon => 
                <li id={boon.id} key={boon.id}>{boon.boon_name} - {boon.description}</li>)}
        </div>
    )
}