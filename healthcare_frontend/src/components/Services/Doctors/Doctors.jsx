import {React , useEffect , useState} from 'react';
import { Avatar, Box, Button, Card, CardActionArea, CardActions, CardContent, Container, Grid, Typography } from '@mui/material';
import HomeIcon from '@mui/icons-material/Home';
import { HashLink } from 'react-router-hash-link';
import AddCircleIcon from '@mui/icons-material/AddCircle';
import LoadingScreen from '../../LoadingScreen/LoadingScreen';
import { apiURL } from '../../../app.constants';
import {useNavigate} from 'react-router-dom'
const Doctors = () => {
    const [doctors , setDoctors] = useState([]) ;
    const navigate = useNavigate()

    const getDoctors = async ()=>{
        
    const response = await fetch( `${apiURL}/doctors/all` , {
          method: "GET",
          headers: { 'Content-Type': 'Application/json' }
    })
    const jsonResponse = await response.json()

    return setDoctors(jsonResponse.doctors)

    }

    const swalAlert = async () => {
       navigate('/appointment')
    }

    useEffect(()=>{
        if(doctors?.length < 1){
            return getDoctors();
        }else{
            console.log("great")
        }

    },[doctors])



    return (
        <div id='doctors'>
            {doctors?.length !==0 ? <>
                <Box sx={{ bgcolor: '#fce4ec', color: 'primary.main', p: 2, mb: 2, mt: 6, textAlign: "center" }}>
                    <Container maxWidth="xl">
                        <Typography sx={{ mt: 2, mb: 2, fontWeight: 600 }}
                            variant='h5'
                        >Our team always ready to assist you
                        </Typography>

                        <Grid container spacing={3}>
                            {
                                doctors?.map((doctor) => (
                                    <Grid key={doctor.doc_id} item xs={12} sm={6} md={4} lg={3} sx={{ mx: 'auto' }}>
                                        <Card sx={{
                                            mx: 'auto',
                                            boxShadow: 10,
                                            maxWidth: 345, transition: '0.5s all ease-in-out', ':hover': {
                                                color: '#e91e63',
                                                boxShadow: 1
                                            }
                                            , 'img': { transition: '0.5s all ease-in-out' },
                                            ':hover img': {
                                                transform: 'scale(1.1)'
                                            }
                                        }}>
                                            <CardActionArea>

                                                <Avatar
                                                    alt="doctor image"
                                                    src={doctor?.doc_img}
                                                    sx={{
                                                        width: 256, height: 256, mx: 'auto'
                                                    }}
                                                />

                                                <CardContent sx={{ display: 'flex', mx: 'auto', my: 2 }}>

                                                    <Typography gutterBottom variant="h5" component="div">
                                                        Specialist in {doctor.specialize}
                                                    </Typography>
                                                </CardContent>
                                                <Typography gutterBottom variant="h6" component="div">
                                                    Dr. {doctor.name}
                                                </Typography>
                                            </CardActionArea>
                                            <CardActions sx={{ textAlign: "center" }} style={{justifyContent: 'center'}}>
                                                <Button onClick={swalAlert} sx={{ mt: 2, mb: 1 }} variant="contained" className="CheckButton">
                                                     Make an Appointment
                                                    <AddCircleIcon />
                                                </Button>
                                            </CardActions>
                                        </Card>



                                    </Grid>
                                ))
                            }


                        </Grid>

                        <HashLink smooth to="/home#home" className='text-style'> <Button variant="contained" startIcon={<HomeIcon />} sx={{ mb: 5, mt: 5 }}>
                            Back to Home
                        </Button></HashLink>

                    </Container>

                </Box> </> : <LoadingScreen></LoadingScreen>
            }
        </div>

    );
};

export default Doctors;