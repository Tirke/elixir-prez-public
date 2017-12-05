import axios from 'axios'

const basicConfig = {
  baseURL: 'http://0.0.0.0:4000/api/',
  headers: {},
  params: {}
}

export default axios.create(basicConfig)
