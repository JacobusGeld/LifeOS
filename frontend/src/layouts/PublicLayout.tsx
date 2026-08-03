import { Outlet } from 'react-router-dom';

import NavigationBar from '../components/navigation/NavigationBar';

import publicNavigation from '../app/navigation/publicNavigation';

function PublicLayout() {
    return (
        <>
            <header>
                <h1>Life OS</h1>

                <NavigationBar routes={publicNavigation} />
            </header>

            <main>
                <Outlet />
            </main>
        </>
    );
}

export default PublicLayout;