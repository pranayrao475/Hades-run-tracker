import {useEffect, useState} from "react"

export default function NewRunForm(){
    const [gods, setGods] = useState([])
    const [boonList, setBoonList] = useState([])

    useEffect(() => {
        fetch("/gods")
        .then((r) => r.json())
        .then(g => setGods(g))
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
        setBoonList(e.target.id)
    }


    return(
        <div>
            <form onSubmit={submitHandler}>
            {gods.map(god => 
                <div className="gods" key={god.id}> 
                    <h2>{god.name}</h2>
                    <img id={god.id} src={god.image} name={god.name} onClick={displayGodsBoons}/>
                    <p>{god.title}</p>
                </div>
            )}
            </form>
        </div>
    )
}