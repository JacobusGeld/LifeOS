import { NavLink } from 'react-router-dom';

import type { NavigationRoute } from './NavigationRoute';

interface NavigationBarProps {
    routes: NavigationRoute[];
}

function NavigationBar({ routes }: NavigationBarProps) {
    return (
        <nav>
            {routes.map((route) => (
                <NavLink
                    key={route.path}
                    to={route.path}
                    style={{ marginRight: '1rem' }}
                >
                    {route.label}
                </NavLink>
            ))}
        </nav>
    );
}

export default NavigationBar;