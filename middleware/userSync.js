
export default function ({ $auth, $axios }) {
    if ($auth.loggedIn) {
        console.log($auth.user)
        /*$axios.post('https://eilkurier-backend.herokuapp.com/api/users', $auth.user)
            .then(function (response) {
                console.log(response);
            })
            .catch(function (error) {
                console.log(error);
            });*/
    }
};
