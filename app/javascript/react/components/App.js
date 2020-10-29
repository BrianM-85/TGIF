import React from "react"
import { Route, Switch, BrowserRouter} from "react-router-dom";
import MainIndex from "./MainIndex"
import ShowIndex from "./ShowIndex"
import ShowDetails from "./ShowDetails"
import About from "./About"
import HolidayFilter from "./HolidayFilter"

export const App = (props) => {
  return (
    <BrowserRouter>
    <Switch>
      <Route exact path="/" component={MainIndex} />
      <Route exact path="/shows" component={ShowIndex} />
      <Route exact path="/shows/:id" component={ShowDetails} />
      <Route exact path="/holidays" component={HolidayFilter} />
      <Route exact path="/about" component={About} />
    </Switch>
  </BrowserRouter>
  )
}

export default App
