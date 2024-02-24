import React from 'react';
import { Navigate } from 'react-router-dom';

const PrivetRoute = ({ children }) => {
    const user = localStorage.getItem("client_email")
    return (
        <>
            {user? 
                children
                : <Navigate
                        to={{
                            pathname: "/login",
                        }}
                    />

            }
                    
        </>
    );
};

export default PrivetRoute;
