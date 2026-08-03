import { createBrowserRouter, RouterProvider } from 'react-router-dom';

import PublicLayout from '../layouts/PublicLayout';

import HomePage from '../pages/public/HomePage';

const router = createBrowserRouter([
    {
        element: <PublicLayout />,
        children: [
            {
                path: '/',
                element: <HomePage />,
            },
        ],
    },
]);

function AppRoutes() {
    return <RouterProvider router={router} />;
}

export default AppRoutes;