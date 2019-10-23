import axios from 'axios'

export default {
  name: 'login',
  components: {},
  props: [],
  data() {
    return {
      username: '',
      password: ''
    }
  },
  computed: {

  },
  mounted() {

  },
  methods: {
    login() {
      const loginParams = {
        userName: this.$refs.username.value,
        password: this.$refs.password.value
      };
      console.log(loginParams);
      const me = this;
      axios({
        method: 'post',
        url: 'http://localhost:8081/user/login',
        headers: {
          'Content-Type': 'application/json'
        },
        data: loginParams

      }).then(function (response) {
        console.log(response.data);
        me.$router.push('/home');
        localStorage.jwtToken = response.data;

      });
    },
    onClick() {

      const params = {
        username: 'pob',
        password: '1234',
        age: '12',
        salary: '200000'
      };

      const jwtToken = localStorage.jwtToken;

      axios({
        method: 'post',
        url: 'http://localhost:8081/token/signup',
        // auth: { username: 'my-trusted-client', password: 'secret' },
        headers: { "Content-type": "application/json; charset=utf-8",
      "Authorization": "Bearer " + jwtToken },
        data: params
      }).then(function (response) {
        console.log(response);

      });
    }
  }
}
