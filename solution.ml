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
    users = [],
    add_non_existent_users = false,
    roles = [],
    add_non_existent_roles = false): Boolean;

function IsRoleWriter(role_id, permission_id): Boolean;
function IsRoleReader(role_id, permission_id): Boolean;
function GetRolePermissions(role_id, permission_id): Integer;
function IsUserWriter(user_id, permission_id): Boolean;
function IsUserReader(user_id, permission_id): Boolean;
function GetUserPermissions(user_id, permission_id): Integer;
function SetRoleWriter(role_id, permission_id): Boolean;
function SetRoleReader(role_id, permission_id): Boolean;
function SetRolePermissions(role_id, permission_id): Integer;
function SetUserWriter(user_id, permission_id): Boolean;
function SetUserReader(user_id, permission_id): Boolean;
function SetUserPermissions(user_id, permission_id): Integer;

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

Table role_permission_relations {
    id,
    role_id,
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
