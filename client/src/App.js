import { useEffect, useState } from 'react'
import { Link, BrowserRouter as Router, Routes, Route } from "react-router-dom"
import './App.css'
import Login from './pages/Login'
import Navbar from './components/Navbar'

import Home from './pages/Home'
import Groups from './pages/Groups'
import Group from './pages/Group'
import Error from './pages/Error'

function App() {
  const [user, setUser] = useState(null)
  console.log(user)

  useEffect(() => {
    // auto-login
    fetch("/me").then(res => {
      if (res.ok) {
        res.json().then(user => setUser(user))
      }
    })
  }, [])

  if (user) {
    return (
      <> {/* className="App" */}
        <Router>

        {/* <header className="App-header">
        <h1>🗪 chitchat</h1>
        <button>Logout</button>
      </header> */}
      {/* onClick={handleLogout} */}

          <nav>
            <Link to="/">🗪 chitchat</Link>
            <Link to="/groups">Groups</Link>
            {/* <Link to="/group">Logout</Link> */}
          </nav>
          <Routes>
            <Route path="/" element={<Home user={user} />} />
            <Route path="/groups" element={<Groups />} />
            {/* <Route path="/group" element={<Group />} /> */}
            <Route path="*" element={<Error />} />
          </Routes>
        </Router>

        {/* <Navbar onLogout={() => setUser(null)}/> */}
        {/* <h2>Welcome, {user.username}!</h2> */}
      </>
    )
  } else {
    return (
      <>
        {/* <Header />
        <Main /> */}



        <Login onLogin={user => setUser(user.id)} />
        {/* <Router>
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/groups" element={<Groups />} />
            <Route path="/group" element={<Group />} />
            <Route path="/error" element={<Error />} />
          </Routes>
        </Router> */}
      </>
    )
  }

}

export default App;
