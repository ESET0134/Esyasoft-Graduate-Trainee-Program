import React, { useState } from "react";

function LoginFormComponent() {
    const [username, setUserName] = useState("")
    const [password, setPassword] = useState("")

    const onLoginHandler = () =>{
        console.log("Username: ", username)
        console.log("Password: ", password)

        if(username !=='username'){
            alert("Invald Username")
            return;
        }
        if(password !=='password'){
            alert("Invald Password")
            return;
        }
        alert("Login Successful")
    };

    return (
        <form onSubmit={onLoginHandler}>
            <input type="text" value = {username} onChange={(e) => {setUserName(e.target.value)}} placeholder="Enter Your Username"/>
            <input type="password" value = {password} onChange={(e) => {setPassword(e.target.value)}} placeholder="Enter your Password"/>
            <button type="submit">Submit</button>
            <button type="reset">Reset</button>
        </form>
    )
}

export default LoginFormComponent;