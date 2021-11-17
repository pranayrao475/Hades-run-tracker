import { useNavigate } from "react-router-dom"
import {useState} from "react"
import { Input, FormField, Label } from "../styles";
import styled from "styled-components";

function Login({setUser, user}){
    const [username, setUsername] = useState("");
    const [password, setPassword] = useState("");
    let navigate = useNavigate();

    function handleSubmit(e) {
        e.preventDefault();
        fetch("/login", {
          method: "POST", //creating session
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify({ username, password }),
        }).then((r) => {
          if (r.ok) {
            r.json().then((user) => setUser(user));
            navigate("/")
          } else {alert("Invalid username or password")}

        });
      }
    if (user) {
        return (
            <h1>Welcome, {user.username}!</h1>
    )}
      return (
        <div>
         <Wrapper>
          <form onSubmit={handleSubmit}>
            <FormField>
            <h1>Login</h1>
            </FormField>
            
            <Label htmlFor="username">Username</Label>
            <Input
              type="text"
              id="username"
              autoComplete="off"
              value={username}
              onChange={(e) => setUsername(e.target.value)}
            />
            <FormField>
            <Label htmlFor="password">Password</Label>
            <Input
              type="password"
              id="password"
              autoComplete="current-password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
            />
            </FormField>
            <Button type="submit">Login</Button>
          </form>
          </Wrapper>
        </div>
      )
}

export default Login;
const Wrapper = styled.div `
text-align: center;
& h1{
  font-family: Chalkduster, fantasy;
  text-align: center;
  justify-content: center;
  margin-top: 0px;
  font-size: 100px;
  color: white;
  text-shadow: 4px 4px 8px red;

}
background-image:linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)), url(https://cdn1.epicgames.com/min/offer/2560x1440-2560x1440-5e710b93049cbd2125cf0261dcfbf943.jpg);
background-size: cover;
    background-position: center;
    height: 100vh;
    background-attachment: fixed;
    margin: 0px;

`
const Button = styled.button`
cursor: pointer;
background-color: brown;
  font-size: 2rem;
  border: 2px solid transparent;
  display: inline-block;
  padding: 1px 25px;
  text-decoration: none;
  margin-left: 30px;
  margin-top: 20px;
  border-radius: 10px;
  
`