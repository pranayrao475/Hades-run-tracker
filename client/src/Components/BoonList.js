export default function BoonList({boonList}){


    return (
        <ul>
            {boonList ? boonList.map(boon => <li id={boon.id}>{boon.boon_name}</li>)
            : <h2>Choose a God to see their boons</h2>}
        </ul>
    )
}