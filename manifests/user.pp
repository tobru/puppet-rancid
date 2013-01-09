class rancid::user {

    user { 'rancid':
        ensure     => present,
        home       => "$rancid::basedir",
        managehome => true,
        system     => true,
    }

    # add webserver user to rancid group
    User<| title == "$rancid::webserver_user" |> { groups +> [ 'rancid' ] }


}
