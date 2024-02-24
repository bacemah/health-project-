import * as React from "react";
import Avatar from "@mui/material/Avatar";
import Button from "@mui/material/Button";
import CssBaseline from "@mui/material/CssBaseline";
import TextField from "@mui/material/TextField";
import FormControlLabel from "@mui/material/FormControlLabel";
import Checkbox from "@mui/material/Checkbox";
import Grid from "@mui/material/Grid";
import Box from "@mui/material/Box";
import LockOutlinedIcon from "@mui/icons-material/LockOutlined";
import Typography from "@mui/material/Typography";
import Container from "@mui/material/Container";
import { useNavigate } from "react-router-dom";
import GoogleButton from "react-google-button";
import FacebookIcon from "@mui/icons-material/Facebook";
import GitHubIcon from "@mui/icons-material/GitHub";
import { useState } from "react";
import { apiURL } from "../../../../app.constants";

const Register = () => {

  const [firstName , SetFirstName] = useState('')
  const [lasetName , SetLastName] = useState('')
  const [email  , SetEmail] = useState('')
  const [password , SetPassword] = useState('')
  const [ConnfirmePassword , SetConfirmePassword] = useState('')
  const [error , setError] = useState("")
  const navigate = useNavigate()

  const handelfirstname = (text)=>{
    return SetFirstName(text.target.value)
  
  }
  const handellastname = (text)=>{
    return SetLastName(text.target.value)

  }
  const handelemail = (text)=>{
    return SetEmail(text.target.value)
  }
  const handelpassword = (text)=>{
    return SetPassword(text.target.value)
  }
  const handelConfirmePassword = (text)=>{
    return SetConfirmePassword(text.target.value)
  }
  const validateEmail = () => {
        return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
    }

  const clientCreate = async () =>{
      const response = await fetch(`${apiURL}/client/register`, {
            method: "POST",
            body: JSON.stringify({ 'first_name' : firstName , 'last_name' : lasetName , 'email' : email , 'password' : password}),
            headers: { 'Content-Type': 'Application/json' }
            }
          )
      const jsonResponse = await  response.json()
        if(jsonResponse.status == 400){
          return setError(jsonResponse.message)
        }
      return navigate('/login')
  }
  const handelregister = ()=>{
    if(firstName.trim().length === 0){
       return setError('First name invalid')
    }else if(lasetName.trim().length === 0 ){
       return setError('Last name invalid')
    }else if(!validateEmail() || email.trim().length === 0){
       return setError('check your email')
    }else if(password.trim().length < 8 || ConnfirmePassword != password ){
      return setError("check your password and your confirm password ")
    }

    return clientCreate()
  }


  return (
    <Container component="main" maxWidth="xs">
      <CssBaseline />
        <>
          <Box sx={{
              marginTop: 8,
              marginBottom: 8,
              display: "flex",
              flexDirection: "column",
              alignItems: "center",
            }}
          >
            <Avatar sx={{ m: 2, bgcolor: "primary.main" }}>
              <LockOutlinedIcon />
            </Avatar>
            <Typography component="h1" variant="h5">
              Sign up
            </Typography>

            {/* formulaire de register   */}
            <Box
              component="form"
              noValidate
              sx={{ mt: 3 }}
              style={{ justifyContent: "center" }}
            >
              <Grid container spacing={2}>
                <Grid item xs={12} sm={6}>
                  <TextField
                    autoComplete="given-name"
                    name="firstName"
                    required
                    fullWidth
                    id="firstName"
                    label="First Name"
                    onChange={handelfirstname}
                    value={firstName}
                    textHelper={'name inncorect'}

                  />
                </Grid>
                <Grid item xs={12} sm={6}>
                  <TextField
                    required
                    fullWidth
                    id="lastName"
                    label="Last Name"
                    name="lastName"
                    autoComplete="family-name"
                    value={lasetName}
                    onChange={handellastname}

                  />
                </Grid>
                <Grid item xs={12}>
                  <TextField
                    required
                    fullWidth
                    id="email"
                    label="Email Address"
                    name="email"
                    value={email}
                    onChange={handelemail}
                    autoComplete="email"
                  />
                </Grid>
                <Grid item xs={12}>
                  <TextField
                    required
                    fullWidth
                    name="password"
                    label="Password"
                    type="password"
                    value={password}
                    onChange={handelpassword}
                    id="password"
                    autoComplete="new-password"
                  />
                </Grid>
                <Grid item xs={12}>
                  <TextField
                    required
                    fullWidth
                    name="confirmPassword"
                    label="confirm Password"
                    type="password"
                    id="confirm Password"
                    value={ConnfirmePassword}
                    onChange={handelConfirmePassword}
                    autoComplete="new-password"
                  />
                </Grid>
                <Grid item xs={12}>
                  <Typography sx={{ p: 1 }} color="red">
                    {error}    
                  </Typography>

                  <FormControlLabel
                    control={
                      <Checkbox value="allowExtraEmails" color="primary" />
                    }
                    label="I want to receive inspiration, marketing promotions and updates via email."
                  />
                </Grid>
              </Grid>
              <Button
                fullWidth
                variant="contained"
                sx={{ mt: 3, mb: 2 }}
                onClick={handelregister}
              >
                Register
              </Button>

              {/* end form register */}



              {/* <Grid
                container
                justifyContent="flex-end"
                style={{ justifyContent: "center" }}
              >
                <Grid item>
                  <Button>
                    <Link
                      className="body-link-text-style"
                      to="/login"
                      variant="body2"
                    >
                      Already have an account? Logini
                    </Link>
                  </Button>
                </Grid>
              </Grid> */}
              <Typography>
                <Typography style={{ justifyContent: "center" }}>
                  <Grid
                    container
                    sx={{ mt: 2, mb: 3 }}
                    justifyContent="flex-end"
                    style={{ justifyContent: "center" }}
                  >
                    <Grid item>
                      <GoogleButton
                        className="google-btn"
                        type="dark" // can be light or dark
                      />
                    </Grid>
                  </Grid>
                  <Grid
                    container
                    sx={{ mb: 3 }}
                    justifyContent="flex-end"
                    style={{ justifyContent: "center" }}
                  >
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
                        style={{ justifyContent: "center" }}
                      >
                        <GitHubIcon /> GitHub
                      </Button>
                    </Grid>
                  </Grid>
                </Typography>
              </Typography>
            </Box>
          </Box>
        </>
    </Container>
  );
};

export default Register;
