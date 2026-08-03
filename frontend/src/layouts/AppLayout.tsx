import { Outlet } from 'react-router-dom';

import NavigationBar from '../components/navigation/NavigationBar';

import appNavigation from '../app/navigation/appNavigation';

function AppLayout() {
    return (
        <>
            <header>
                <h1>Life OS</h1>

                <NavigationBar routes={appNavigation} />
            </header>

            <main>
                <Outlet />
            </main>
        </>
    );
}

export default AppLayout;