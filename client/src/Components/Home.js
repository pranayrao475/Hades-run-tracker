import { Link } from "react-router-dom";


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
        <>
            <h1>Welcome To The Hades Run Tracker</h1>
            <h2>Please Login or Sign Up</h2>
            <Link to="/signup">Signup</Link>
            <Link to="/login">Login</Link>
        </>
      )}
  }
  
  export default Home;