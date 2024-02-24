
import {Route} from 'react-router-dom'
import {Routes} from 'react-router-dom'
import "./App.css";
import About from "./components/About/About";
import Header from "./components/Header/Header/Header";
import Home from "./components/Home/Home";
import { ThemeProvider } from "@mui/material";
import { createTheme } from "@mui/material/styles";
import Notfound from "./components/Notfound/Notfound";
import Footer from "./components/Header/Footer/Footer";
import Login from "./components/Login/Login/Login";
import Register from "./components/Login/Login/Register/Register";
import Services from "./components/Services/Services";
import Doctors from "./components/Services/Doctors/Doctors";
import Appointment from "./components/Services/Appointment/Appointment";
import ServiceDetails from "./components/Services/ServiceDetails/ServiceDetails";
import PrivetRoute from "./PrivetRoute/PrivetRoute";

// custom style for this application
export const myTheme = createTheme({
  palette: {
    primary: {
      main: "#e91e63",
    },
    secondary: {
      main: "#f48fb1",
    },
    alternate: {
      main: "#fff",
    },
    text: {
      secondary: "#212121",
    },
  },
  typography: {
    fontFamily: "Quicksand",
    fontWeightLight: 400,
    fontWeightRegular: 500,
    fontWeightMedium: 600,
    fontWeightBold: 700,
  },
});

function App() {
  return(
    <>
        <ThemeProvider theme={myTheme}>
            <Header></Header>
            <Routes>
              <Route  path="/" element={<Home></Home>} />
              <Route path="/home" element={<Home></Home>} />
              <Route  path="/doctors" 
              element={
              <PrivetRoute path="/doctors">
                <Doctors></Doctors>
              </PrivetRoute>
              } />
              <Route path="/login"  element={<Login></Login>} />
              <Route path="/register" element={<Register></Register>} />                
              <Route path="/about" element={<About></About>}  />
              <Route path="/profile" element={<Login></Login>} />
              <Route path='/appointment' 
              element={
              <PrivetRoute path="/appointment">
                <Appointment></Appointment>
              </PrivetRoute>}
               />

              <Route  path="/services" element={<Services></Services>} />
              <Route path="/services/details/:servId" 
              element={
              <PrivetRoute exact path="/services/details/:servId">
                <ServiceDetails></ServiceDetails>
              </PrivetRoute>} />
              <Route path="*" element={<Notfound></Notfound>} />
            </Routes>      
            <Footer></Footer>
        </ThemeProvider>
    </>
  );
}

export default App;
