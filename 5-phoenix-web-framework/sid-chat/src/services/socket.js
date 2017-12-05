import { Socket } from 'phoenix'

let socket = new Socket('ws://localhost:4000/socket', {
  logger: (kind, msg, data) => {
    console.log(`${kind}: ${msg}`, data)
  }
})

socket.connect()
let channel = socket.channel('room:lobby', {})
channel
  .join()
  .receive('ignore', resp => {
    console.log('Auth error', resp)
  })
  .receive('ok', resp => {
    console.log('Joined successfully', resp)
  })
  .receive('error', resp => {
    console.log('Unable to join', resp)
  })

export default channel
