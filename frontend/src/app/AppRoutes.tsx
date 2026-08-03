import { createBrowserRouter, RouterProvider } from 'react-router-dom';

import PublicLayout from '../layouts/PublicLayout';

import HomePage from '../pages/public/HomePage';
import LoginPage from '../pages/public/LoginPage';
import RegisterPage from '../pages/public/RegisterPage';

const router = createBrowserRouter([
    {
        element: <PublicLayout />,
        children: [
            {
                path: '/',
                element: <HomePage />,
            },
            {
                path: '/login',
                element: <LoginPage />,
            },
            {
                path: '/register',
                element: <RegisterPage />,
            },
        ],
    },
]);

function AppRoutes() {
    return <RouterProvider router={router} />;
}

export default AppRoutes;