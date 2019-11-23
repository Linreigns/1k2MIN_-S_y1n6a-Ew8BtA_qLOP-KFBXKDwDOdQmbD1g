# Check readme for task reference
# !!! meta-language syntax amended
## variables are lower-case
## variable semantic separation is separated by underscore

Class User {
    String login_name;
    String email;
    String first_name;
    String last_name;
}

Class Role {
    String name;
    String description;    
}

Class Permission {
    String name;
    Boolean read;
    Boolean write;
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
    id,
    login_name,
    email,
    first_name,
    last_name
}

Table roles {
    id,
    name,
    description
}

