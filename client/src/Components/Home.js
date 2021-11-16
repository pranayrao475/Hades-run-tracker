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
            <h1>Welcome, {user.username}!</h1>
            <button onClick={handleLogoutClick}>Logout</button>
        </div>
      )}
       else {
      return (
        <>
            <h1>Please Login or Sign Up</h1>
            <Link to="/signup">Signup</Link>
            <Link to="/login">Login</Link>
        </>
      )}
  }
  
  export default Home;