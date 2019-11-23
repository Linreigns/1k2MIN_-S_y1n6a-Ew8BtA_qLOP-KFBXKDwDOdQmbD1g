# Check readme for task reference
# !!! meta-language syntax amended
## variables are lower-case
## variable semantic separation is separated by underscore

Class Permission {
    String name;
    Boolean read;
    Boolean write;
}

Class User {
    String login_name;
    String email;
    String first_name;
    String last_name;
}

Table user_role_relations {
    id,
    user_id,
    role_id
}

Table user_permission_relations {
    id,
    user_id,
    permission_id
}

Table users {

}
