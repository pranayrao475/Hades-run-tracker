import { Link } from "react-router-dom";
import styled from "styled-components"


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
           <Headercontainer>
            <h1>Welcome {user.username}!</h1>
            <Link to="/newrun"><button type="button">Log A Run</button></Link>
            <Link to="/runlog"><button type="button">My Runs</button></Link>
            <button onClick={handleLogoutClick}>Logout</button>
            </Headercontainer>
        </div>
      )}
       else {
      return (
      
        <Header>
          
            <h1> Welcome to the Underworld</h1>
            <h1>Hades Run Tracker</h1>
            <h4>Please Login or Sign Up</h4>
          
            <ButtonWrapper>
            <Link to="/login"><button type="button">Login</button></Link>
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
  background-image:linear-gradient(rgba(0, 0, 0, 0.3),rgba(0, 0, 0, 0.3)), url(https://cdn.cloudflare.steamstatic.com/steam/apps/1145360/capsule_616x353.jpg?t=1624463563);
  background-size: cover;
  background-position: center;
  height: 100vh;
  background-attachment: scroll;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
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
  const Headercontainer = styled.div`
  & h1{
  background-coor: brown;
  margin: 0;
  padding: 20px 40px;
  color: black;
  font-family: Chalkduster, fantasy;
  text-align: center;
  justify-content: center;
  font-size: 100px;
  text-shadow: 4px 6px 10px red;
  }
  background-image:linear-gradient(rgba(0, 0, 0, 0.5),rgba(0, 0, 0, 0.5)), url(https://cdn.cloudflare.steamstatic.com/steam/apps/1145360/ss_34e6660705cfe47d2b2f95189c37f7cb77f75ca6.1920x1080.jpg?t=1624463563);
  background-size: cover;
  background-position: center;
  height: 100vh;
  display: block;
  
  justify-content: center;
  
  
  & button{
    font-family: Chalkduster, fantasy;
    margin-left: 250px;
    margin-top: 2opx;
   color: red;
   background-color: black;
  cursor: pointer;
  font-size: 3rem;
  border: 2px solid transparent;
  border-radius: 30px;
  padding: 8px 16px;
  text-decoration: none;
  }
  
  `