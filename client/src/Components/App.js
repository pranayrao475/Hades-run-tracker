import React, { useEffect, useState } from "react";
import { Routes, Route } from "react-router-dom";
import Home from "./Home"
import Login from "./Login";

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
        <Route index element={<Home user={user} setUser={setUser}/>} />
        <Route path="/signup" element={<Signup setUser={setUser}/>}/>
        <Route path="/login" element={<Login setUser={setUser}/>}/>
    </Routes>
    </main>
  );
}

export default App;
