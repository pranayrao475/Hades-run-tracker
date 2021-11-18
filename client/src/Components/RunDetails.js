export default function RunDetails({chosenBoons}){
    return(
     <div id="run-details-container">
         <h1 id="run-details-title">Run Details</h1>
         <h3 id="boons-used">Boons used:{chosenBoons.map(b=> <li key={b.id}>{b}</li>)} </h3>
     </div>
    )
}