import axios from "axios";

const api = axios.create({
  baseURL: `${process.env.REACT_APP_MERCHANT_MODULE_URL}/api`,
});
console.log(process.env.CLIENT_SERVICE_SERVICE_PORT)
console.log(process.env.MERCHANT_MODULE_SERVICE_SERVICE_HOST)
console.log(process.env.REACT_APP_MERCHANT_MODULE_URL)
export default api;