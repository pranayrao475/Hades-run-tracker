export default function ChosenBoons({chosenBoons}){

    return (
        <div id="chosen boons">
        <ul>
            {chosenBoons.map(boon => 
                <li id={boon.id}>{boon.boon_name} - {boon.description}</li>)}
        </ul>
    </div>
    )
}