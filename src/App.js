import React,{useState} from 'react'
import ReactDOM from 'react-dom'
import "./style.css"

const App=()=> {

    let [score, setScore] =useState(0)

    return (
    <div>
        <h1>This is a counter App built using ReactJS</h1>
        <h2> Your count is {score}</h2>
        
        <button className="btn" onClick={()=>score<25 ? setScore(score+1): "" }>Increement</button>
        <button className="btn" onClick={()=>score>0 ? setScore(score-1): ""}>Decrement</button>
        <button className="btn" onClick={()=>{setScore(0)} }>Reset</button>
        
    </div>
    )
}

export default App