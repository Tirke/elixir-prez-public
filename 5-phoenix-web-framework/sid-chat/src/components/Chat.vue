<template>
  <section class="section">
    <section class="chat-box" ref="chatBox">
      <article class="media"
               v-for="message in messages">
        <figure class="media-left">
          <p class="image is-48x48">
            <img class="round-image" src="https://bulma.io/images/placeholders/48x48.png">
          </p>
        </figure>
        <div class="media-content">
          <div class="content">
            <p>
              <small>
                <timeago :auto-update="60"
                         :since="message.date"></timeago>
              </small>
              <br>
              {{message.body}}
            </p>
          </div>
        </div>
      </article>
    </section>

    <form @submit.prevent="postMessage"
          class="message-box">
      <div class="field">
        <div class="control has-icons-right">
          <input class="input"
                 v-model="message"
                 placeholder="Un joli petit message ...">
          <span class="icon is-small is-right">
          <i class="material-icons">send</i>
        </span>
        </div>
      </div>
    </form>
  </section>
</template>

<script>
  import channel from '@/services/socket'

  export default {
    name: 'Home',
    mounted () {
      channel.on('new_msg', ({body}) => {
        this.messages.push({date: Date.now(), body})
        
        this.$nextTick(() => {
          this.$refs.chatBox.scrollTop = this.$refs.chatBox.scrollHeight
        })
      })
    },
    data () {
      return {
        message: '',
        messages: []
      }
    },
    methods: {
      postMessage () {
        if (this.message.trim()) {
          channel.push('new_msg', {body: this.message})
          this.message = ''
        }
      }
    }
  }
</script>


<style lang="scss" scoped>
  .section {
   padding: 2rem 1.5rem 3rem 1.5rem 
  }
  .chat-box {
    max-height: calc(100vh - 3rem - 80px);
    overflow-y: scroll;
  }

  .message-box {
    background-color: hsl(0, 0%, 96%);
    position: fixed;
    bottom: 0;
    right: 0;
    width: 100%;
    padding: 1rem;
  }

  .round-image {
    border-radius: 100%;
  }
</style>
