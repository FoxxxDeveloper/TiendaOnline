
import { BrowserRouter, Route,Routes } from 'react-router-dom';
import {home, login, register, listaproductos, producto, adminfinanzas, adminusuarios, adminproductos} from "./Routes/myRoutes"
import Home from './Pages/Home'
import ListaProductos from './Pages/ListaProductos'
import Login from './Pages/Login';
import Register from './Pages/Register';
import Producto from './Pages/Producto';
import AdminFinanzas from './Pages/AdminFinanzas';
import AdminProductos from './Pages/AdminProductos';
import AdminUsuarios from './Pages/AdminUsuarios';

function App() {
  return (
    <BrowserRouter>
    <Routes>
    <Route path={home} element={<Home/>} />
    <Route path={login}  element={<Login/>} />
    <Route path={register} element={<Register/>} />
    <Route path={listaproductos} element={<ListaProductos/>} />
    <Route path={producto} element={<Producto/>} />
    <Route path={adminfinanzas} element={<AdminFinanzas/>} />
    <Route path={adminproductos} element={<AdminProductos/>} />
    <Route path={adminusuarios} element={<AdminUsuarios/>} />
    </Routes>
  </BrowserRouter>
  );
}

export default App;