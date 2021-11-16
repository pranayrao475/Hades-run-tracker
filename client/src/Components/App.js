import React, { useEffect, useState } from "react";
import { Routes, Route } from "react-router-dom";
import LandingPage from "./LandingPage"
import Signup from "./Signup"

function App() {
  const [user, setUser] = useState(null)

  useEffect(() => {
    // auto-login
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }, []);
  return (
    <main>
    <Routes>
        <Route index element={<LandingPage setUser={setUser}/>} />
        <Route path="/signup" element={<Signup setUser={setUser}/>}/>
    </Routes>
    </main>
  );
}

export default App;
