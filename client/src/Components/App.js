import React, { useEffect, useState } from "react";
import { Routes, Route } from "react-router-dom";
import Home from "./Home"
import Login from "./Login";
import NewRun from "./NewRun"
import LoggedRuns from "./LoggedRuns"

import Signup from "./Signup"


function App() {
  const [user, setUser] = useState(null)

  useEffect(() => {
    // auto-login if session[:user_id]
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }, []);
  return (
    <main>
    <Routes>
        <Route path="/" element={<Home user={user} setUser={setUser}/>}/>
        <Route path="/newrun" element={<NewRun/>}/>
        <Route path="/runlog" element={<LoggedRuns/>}/>
        <Route path="/signup" element={<Signup setUser={setUser}/>}/>
        <Route path="/login" element={<Login setUser={setUser}/>}/>
    </Routes>
    </main>
  );
}

export default App;
