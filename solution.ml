# Check readme for task reference
# !!! meta-language syntax amended
## variables are lower-case
## variable semantic separation is separated by underscore

function AddUser(login_name, email, first_name, last_name,
    disabled = true, roles = {}, permissions = {}
): Boolean;
function AddRole(name,
    description = "",
    users = {}): Boolean;
function AddPermission(name,
    default_status = {write: false, read:false},
    description = "",
    users = {},
    roles = {}): Boolean;

Class User {
    String login_name;
    String email;
    String first_name;
    String last_name;
    Timestamp disabled_at;
}

Class Role {
    String name;
    String description;    
}

Class Permission {
    String name;
    String description;    
    Integer status;
    Integer default_status;
}

Table user_role_relations {
    id,
    user_id,
    role_id
}

Table user_permission_relations {
    id,
    user_id,
    permission_id,
    status
}

Table users {
    id,
    login_name,
    email,
    first_name,
    last_name,
    disabled
}

Table roles {
    id,
    name,
    description
}

Table permissions {
    id,
    name,
    description,
    default_status
}

