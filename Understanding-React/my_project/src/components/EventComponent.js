import React from "react";

const dummyjson = {
    "firstame":"Shruti",
    "lastName":"Singhania",
    "target":{
        "value":"ddd"
    }
};


function EventComponent(){
    const onChangeHandler = (myObject) => {
        console.log(myObject.target.value)
    }
    return(
        <>
        Welcome to Event!
        <button onClick={() => { console.log("Button Clicked!"); }}>
            Click Me!
        </button>
        <div style={{background:'#4a6ac2', padding:'50px'}} onMouseEnter={() => {console.log("Mouse Entered the Div.")}}>
            This is Div.
        </div>
        <input type="text" onChange={onChangeHandler}></input>
        </>
    )
}

export default EventComponent;