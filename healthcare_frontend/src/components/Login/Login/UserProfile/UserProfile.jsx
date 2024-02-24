import { Avatar, Card, CardContent, Typography , Button } from '@mui/material';
import { Fingerprint } from "@mui/icons-material";
import { Box } from '@mui/system';
import { useNavigate} from 'react-router-dom'
import React from 'react';

const UserProfile = (props) => {
    const user = props.client ;
    const navigate = useNavigate()
    
    const handelLogout = ()=>{
        localStorage.clear()
        navigate('/home')
    }
    
    return (
        <Card sx={{ display: { xs: 'flex-wrap', md: 'flex' }, maxWidth: '600px', my: 8, mx: 'auto', p: 5 }}>
            <Box sx={{ display: 'flex', flexDirection: 'column' }}>
                <CardContent sx={{ flex: '1 0 auto' }}>
                    <Typography component="div" variant="h5">
                        Welcome to our Hospital, {user.first_name}
                    </Typography>
                    <Typography variant="subtitle1" color="text.secondary" component="div">
                        {user.email}
                    </Typography>
                </CardContent>
                <Box sx={{ display: 'flex', alignItems: 'center', pl: 1, pb: 1 }}>
                </Box>
                <Button
                    onClick={handelLogout}                    
                    fullWidth
                    variant="contained"
                    sx={{ mt: 3, mb: 2 }}
                  >
                    <Fingerprint /> Logout
                </Button>
            </Box>
            {/* <Avatar
                sx={{ mx: { xs: "auto", md: 1 }, border: 1, borderColor: '#f48fb1', boxShadow: 1, bgcolor: pink[500], width: 150, height: 150 }}
                alt={user.displayName}
                src={user.photoURL}
            /> */}
          
        </Card>
    );
};

export default UserProfile;