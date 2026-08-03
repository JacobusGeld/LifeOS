import { Outlet } from 'react-router-dom';

function PublicLayout() {
    return (
        <>
            <header>
                <h1>Life OS</h1>
            </header>

            <main>
                <Outlet />
            </main>
        </>
    );
}

export default PublicLayout;