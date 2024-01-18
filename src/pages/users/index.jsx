import { Button, Modal, Space, Table } from 'antd';
import { useNavigate } from 'react-router-dom';
import React, { useEffect, useState } from 'react';
import { useDispatch, useSelector } from 'react-redux';
import { adminLogout } from '../../store/slices/auth/login';
import { getUsersThunk } from '../../store/slices/user/user';


const Users= () => {

    const navigate = useNavigate();
    const dispatch = useDispatch();  

useEffect(()=>{
   dispatch(getUsersThunk())
},[])
   
    return (
        <>
        <Button title="Logout" onClick={()=>{dispatch(adminLogout())}} >Logout </Button>
            <h3>Hello User</h3>
           
        </>

    )
};

export default Users;