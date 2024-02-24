import {React , useState , useEffect} from "react";
import { Avatar, Box,  Button,Container , CssBaseline, Grid, TextField, Typography,  } from "@mui/material";
import GoogleButton from "react-google-button";
import "./Login.css";
import UserProfile from "./UserProfile/UserProfile";
import LoginIcon from "@mui/icons-material/Login";
import { Link } from "react-router-dom";
import { Fingerprint } from "@mui/icons-material";
import FacebookIcon from "@mui/icons-material/Facebook";
import GitHubIcon from "@mui/icons-material/GitHub";
import { useLocation } from "react-router-dom";
import { apiURL } from "../../../app.constants";

const Login = () => {

  //location is use for privet route
  const location = useLocation();
  const redirect_url = location.state?.from || "/profile";
  const [user , setUser] = useState({email : localStorage.getItem('client_email') , first_name : localStorage.getItem('client_name')});
  const [mail , setMail]= useState('')
  const [password , SetPassword] = useState('')
  const [error , setError] = useState('')
  const [disabaled , setDisabeld] = useState(true)
  const [islogin , setislogin] = useState(false)

   const validateEmail = () => {
        return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(mail);
    }
  const handelMail = (text)=>{
    setMail(text.target.value)
  }
  const controlleMail = ()=>{
     if(!validateEmail() || mail.trim().length == 0){
      setDisabeld(true)
      return setError('Email invalid')

    }else{
        setError('')
      return true
    }
  }
  const handelpassword = (text)=>{
    SetPassword(text.target.value)
    
  }
  const controllePassword = ()=>{
    if(password.trim().length == 0 || password.trim().length == 0){
        setDisabeld(true)
      return setError('Password invalid')
    }else if (controlleMail()) {
        setError('')
      return setDisabeld(false)
    }
  }

  const handelLogin = async () => {
    const response = await fetch(`${apiURL}/client/login` , {
            method: "POST",
            body: JSON.stringify({'email' : mail , 'password' : password}),
            headers: { 'Content-Type': 'Application/json' }
    })
    const jsonResponse = await response.json()
    if(jsonResponse.status == 404){
      return setError(jsonResponse.message)
    }else if ( jsonResponse.status == 400 ){
      return setError(jsonResponse.message)
    }
    else{
      localStorage.clear()
      localStorage.setItem('client_email' , jsonResponse.client.email  ) ;
      localStorage.setItem('client_name' , jsonResponse.client.first_name  ) ;
      localStorage.setItem('token' , jsonResponse.token  ) ;
      setUser(jsonResponse.client)
    }

    
  }


  return (
    <Box sx={{display: "flex",flexDirection: "column",minHeight: "100vh",}}>
      <Container id="login" maxWidth="xl">
        {user.email? 
          <>
            <UserProfile  client={user}/>
          </>
          : 
          <>
            {/* if user is logout */}
            <Container component="main" maxWidth="xs">
              <CssBaseline />

              <Box
                sx={{
                  marginTop: 15,
                  marginBottom: 8,
                  display: "flex",
                  flexDirection: "column",
                  alignItems: "center",
                }}
              >
                <Avatar sx={{ m: 1, bgcolor: "primary.main" }}>
                  <LoginIcon />
                </Avatar>
                <Typography component="h1" variant="h5">
                  Sign In
                </Typography>
                <Box component="div" noValidate sx={{ mt: 3 }}>
                  <Grid container spacing={2}>
                    <Grid item xs={12}>
                      <TextField
                        onChange={handelMail}
                        onBlur={controlleMail}
                        required
                        fullWidth
                        id="email"
                        label="Email Address"
                        name="email"
                        autoComplete="email"
                      />
                    </Grid>
                    <Grid item xs={12}>
                      <TextField
                        onChange={handelpassword}
                        onBlur={controllePassword}                        
                        required
                        fullWidth
                        name="password"
                        label="Password"
                        type="password"
                        id="password"
                        autoComplete="new-password"
                      />
                      <Typography sx={{ p: 1 }} color="red">
                        {error}                        
                      </Typography>
                    </Grid>
                  </Grid>
                  <Button
                    onClick={handelLogin}                    
                    fullWidth
                    variant="contained"
                    sx={{ mt: 3, mb: 2 }}
                    disabled={disabaled}
                  >
                    <Fingerprint /> Login
                  </Button>
                </Box>
                <Grid
                  container
                  justifyContent="flex-end"
                  style={{ justifyContent: "center" }}
                >
                  <Grid item>
                    <Button>
                      <Link
                        className="body-link-text-style"
                        to="/register"
                        variant="body2"
                      >
                        New here? Register
                      </Link>
                    </Button>
                  </Grid>
                </Grid>
                {/* google btn */}

                <Typography style={{ justifyContent: "center" }}>
                  <Grid
                    container
                    sx={{ mt: 2, mb: 3 }}
                    justifyContent="flex-end"
                  >
                    <Grid item>
                      <GoogleButton
                        className="google-btn"
                        type="dark" // can be light or dark                        
                      />
                    </Grid>
                  </Grid>

                  <Grid container sx={{ mb: 3 }} justifyContent="flex-end">
                    {/* Facebook btn */}
                    <Grid item>
                      <Button                        
                        variant="contained"
                        sx={{ p: 1, bgcolor: "#4267B2" }}
                      >
                        <FacebookIcon />
                        Facebook
                      </Button>
                    </Grid>
                    <Typography textAlign="center" sx={{ p: 2 }}>
                      Or
                    </Typography>
                    {/* GitHUB btn */}
                    <Grid item>
                      <Button                
                        variant="contained"
                        sx={{ p: 1, mb: 2, bgcolor: "#171515" }}
                      >
                        <GitHubIcon /> GitHub
                      </Button>
                    </Grid>
                  </Grid>
                </Typography>
              </Box>
            </Container>
          </>
        }
      </Container>
    </Box>
  );
};

export default Login;
