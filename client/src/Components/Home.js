import { Link } from "react-router-dom";
import styled from "styled-components"
import {Button} from "../styles"


function Home({ user, setUser}) {
    
    function handleLogoutClick() {
        fetch("/logout", { method: "DELETE" }).then((r) => {
          if (r.ok) {
            setUser(null);
          }
        });
      }
      
    if (user) {
      return (
        <div>
            <button onClick={handleLogoutClick}>Logout</button>
            <h1>Welcome, {user.username}!</h1>
            <Link to="/newrun">Log a run</Link>
            <Link to="/runlog">My runs</Link>
        </div>
      )}
       else {
      return (
        <Header>
          <h1> Welcome to the Underworld</h1>
          <h1>Hades Run Tracker</h1>
            <h4>Please Login or Sign Up</h4>
            <ButtonWrapper>
            <Link to="/login"> <button type="button">Login</button></Link>
            <Link to="/signup"><button type="button">Signup</button></Link>
            </ButtonWrapper>
        
      
        </Header>
        
       
        
      )}
  }
  
  export default Home;

  const Header = styled.div`
  
  color: white;
  font-family: Chalkduster, fantasy;
  text-align: center;
  justify-content: center;
  font-size: 50px;
  text-shadow: 4px 4px 8px red;
  
  background-image:linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)), url(https://cdn.cloudflare.steamstatic.com/steam/apps/1145360/capsule_616x353.jpg?t=1624463563);
    background-size: cover;
    background-position: center;
    height: 100vh;
    background-attachment: scroll;
    margin-top: 0px;
  `
  const ButtonWrapper = styled.div`
  & button {
    background-color:#ffffff;
    color: red;
    cursor: pointer;
    font-size: 3rem;
    border: 2px solid transparent;
    border-radius: 30px;
  padding: 8px 16px;
  text-decoration: none;
  margin-left: 40px;
  text-align: center;
  justify-content: center;
  &:hover {
    opacity: 0.8;
  }
  }
  
 

  
  `