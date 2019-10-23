import axios from 'axios'

export default {
  name: 'home',
  components: {},
  props: [],
  data() {
    return {
      jwtToken: ''
    }
  },
  computed: {

  },
  mounted() {

  },
  create() {
  },
  methods: {
    createAuthorizationTokenHeader() {
      var token = localStorage.getItem("jwtToken");
      if (token) {
        return { "content-type": "application/x-www-form-urlencoded", "Authorization": "Bearer " + token };
      } else {
        return {};
      }
    },
    onClick() {
      const pmt = 'saeng';

      const jwtToken = localStorage.jwtToken;
      console.log(this.createAuthorizationTokenHeader());
      axios({
        method: 'post',
        url: 'http://localhost:8081/rest/user/username',
        headers: {
          "Content-type": "application/json; charset=utf-8",
          "Authorization": "Bearer " + jwtToken
        },
        data: pmt
      }).then(function (response) {
        console.log(response);

      });
    },
    onSave() {
      const params = {
        id: null,
        userName: 'saeng',
        password: '1234',
        firstName: 'Kraipob',
        lastName: 'Saeng',
        created: null
      };

      const jwtToken = localStorage.jwtToken;

      axios({
        method: 'post',
        url: 'http://localhost:8081/rest/user/update',
        headers: {
          "Content-type": "application/json; charset=utf-8",
          "Authorization": "Bearer " + jwtToken
        },
        data: params
      }).then(function (response) {
        console.log(response);

      });
    }
  }
}
