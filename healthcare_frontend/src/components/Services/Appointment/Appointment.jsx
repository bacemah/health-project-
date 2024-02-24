import { LocalizationProvider, MobileDateTimePicker } from '@mui/x-date-pickers';
import {
  Box,
  Button,
  Container,
  FormControl,
  InputLabel,
  MenuItem,
  Select,
  Stack,
  TextField,
  Typography,
} from "@mui/material";
import React from "react";
import { AdapterDateFns } from "@mui/x-date-pickers/AdapterDateFns";
import swal from "sweetalert";
import AddCircleIcon from "@mui/icons-material/AddCircle";
import{useState} from 'react'
import { apiURL } from '../../../app.constants';

const Appointment = () => {
  const user = localStorage.getItem("client_email")
  const userName = localStorage.getItem("client_name")
  const [value, setValue] = useState(new Date());

  // doctor name function
  const [docName, setDocName] = useState("");
  const [problem, setProblem] = useState("");



  //swal alert
  const swalAlert = async () => {
    const response = await fetch(`${apiURL}/appointments/add`, {
            method: "POST",
            body: JSON.stringify({ 'doc_name' : docName , 'client_name' : userName , 'email_client' : user , 'time' : value , 'problem' : problem}),
            headers: { 'Content-Type': 'Application/json' }
            }
          )
    const jsonResponse = await response.json()  
  return swal("Your Appointment is Done You will Receive a mail ASAP.", {
      button: false,
      icon: "success",
    });
  };
  return (
    <Box
      id="appointment"
      sx={{
        display: "flex",
        flexDirection: "column",
        minHeight: "100vh",
      }}
    >
      <Container maxWidth="xl">
        <Container style={{ justifyContent: "center" }}>
          <Typography
            variant="h5"
            sx={{
              mt: 5,
              mb: 5,
            }}
          >
            Select your time and data for Appointment
          </Typography>
        </Container>
        {/* set doctor name */}
        <FormControl sx={{ mb: 5, minWidth: "50%" }}>
          <InputLabel id="demo-simple-select-autowidth-label">
            Select Doctor Name
          </InputLabel>
          <Select
            labelId="demo-simple-select-autowidth-label"
            id="demo-simple-select-autowidth"
            onChange={(text)=>{
              return setDocName(text.target.value)

            }}
            value={docName}
            autoWidth
            label="Select Doctor Name"
          >
            <MenuItem value="">
              <em>None</em>
            </MenuItem>
            <MenuItem value={'Neha A Agrawal'}>Dr. Neha A Agrawal.</MenuItem>
            <MenuItem value={'Vrushali Naik'}>Dr. Vrushali Naik</MenuItem>
            <MenuItem value={'Tejaswini Manogna'}>Dr. Tejaswini Manogna</MenuItem>
            <MenuItem value={'Aditya Gupta'}>Dr. Aditya Gupta</MenuItem>
            <MenuItem value={'Vivek k Bansode'}>Dr. Vivek k Bansode</MenuItem>
            <MenuItem value={'Pratima J Singh'}>Dr. Pratima J Singh</MenuItem>
            <MenuItem value={'Amit Lanke'}>Dr. Amit Lanke</MenuItem>
            <MenuItem value={'Johnny Pandit'}>Dr. Johnny Pandit</MenuItem>
            <MenuItem value={'Sandip Nehe'}>Dr. Sandip Nehe</MenuItem>
            <MenuItem value={'Lee S. Williamson'}>Dr. Lee S. Williamson</MenuItem>
          </Select>
        </FormControl>
        <TextField
          sx={{ mb: 2 }}
          value={userName}
          fullWidth
          label="Your Name"
          id="fullWidth"
        />
        <TextField
          sx={{ mb: 2 }}
          value={user}
          fullWidth
          label="Your Mail"
          id="fullWidth"
        />

        <LocalizationProvider dateAdapter={AdapterDateFns}>
          <Stack spacing={3}>
            <MobileDateTimePicker
              value={value}
              onChange={(newValue) => {
                setValue(newValue);
              }}
              label="Appointment Date"
              onError={console.log}
              minDate={new Date("2024-01-01T00:00")}
              inputFormat="yyyy/MM/dd hh:mm a"
              mask="___/__/__ __:__ _M"
              renderInput={(params) => <TextField {...params} />}
            />
          </Stack>
        </LocalizationProvider>

        <TextField
          sx={{ mt: 2, mb: 2 }}
          fullWidth
          label="Problem type"
          onChange={(text)=>{
            return setProblem(text.target.value)

          }}
          id="fullWidth"
        />

        <Button
          sx={{ p: 1, mt: 2, mb: 5 }}
          onClick={swalAlert}
          fullWidth
          variant="contained"
        >
          <AddCircleIcon /> Confirm
        </Button>
      </Container>
    </Box>
  );
};

export default Appointment;
