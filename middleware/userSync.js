
export default function ({ $auth, $axios, $config }) {
    if ($auth.loggedIn && !$auth.user.id) {
        return $axios.post($config.backendUrl + '/api/users', $auth.user)
            .then(function (response) {
                const user = $auth.user;
                user.id = response.data.id;
                $auth.setUser(user);
            })
            .catch(function (error) {
                console.log(error);
            });
    }
};
