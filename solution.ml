/*
# Check readme for task reference
# !!! meta-language syntax amended
## variables are lower-case
## variable semantic separation is separated by underscore
# Note: default_status of Permission class instance can be overriden by global roles
# in case of multiple global roles the one with latest by updated_at field is due
*/

function AddUser(login_name, email, first_name, last_name,
    disabled = true, roles = {}, permissions = {}
): Boolean;
function UpdateUserById(user_id, {login_name, email, first_name, last_name, disabled} ): Boolean;
function EnableUserById(user_id): Boolean;
function DisableUserById(user_id): Boolean;
function AddUserToRoleById(user_id, role_id): Boolean;
function AddUserPermissionById(user_id, permission_id): Boolean;
function AddUserPermissionNameById(user_id, permission_name): Boolean;
function RemoveUserFromRoleById(user_id, role_id): Boolean;
function RemoveUserPermissionById(user_id, permission_id): Boolean;
function RemoveUserPermissionNameById(user_id, permission_name): Boolean;

function AddRole(name,
    description = "",
    make_global = false,
    users = {}             // ignored if is_global is set
): Boolean;
function UpdateRoleById(role_id, {name, description ): Boolean;
function EnableRoleById(role_id): Boolean;
function DisableRoleById(role_id): Boolean;

function AddPermission(name,
    default_status = 0,
    description = "",
    users = [],
    add_non_existent_users = false,
    roles = [],
    add_non_existent_roles = false): Boolean;
function UpdatePermissionById(permission_id, {name, default_status, description} ): Boolean;
function UpdatePermissionDefaultStatusById(permission_id, status): Boolean;
function EnablePermissionDefaultWriteById(permission_id): Boolean;
function DisablePermissionDefaultWriteById(permission_id): Boolean;
function EnablePermissionDefaultReadById(permission_id): Boolean;
function DisablePermissionDefaultReadById(permission_id): Boolean;

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
function GetUserById(user_id): User;
function GetUserRolesById(user_id, limit = 100, page = 0): Role[];
function GetUserPermissionsById(user_id, limit = 100, page = 0): Permission[];
function GetPermissionById(permission_id): Permission;
function GetRoleById(role_id): Role;
function GetRolePermissionsById(role_id, limit = 100, page = 0): Permission[];


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
    status,
    created_at,
    updated_at
}

Table role_permission_relations {
    id,
    role_id,
    permission_id,
    status,
    created_at,
    updated_at
}

Table users {
    id,
    login_name,
    email,
    first_name,
    last_name,
    disabled_at,
    created_at,
    updated_at
}

Table roles {
    id,
    name,
    description,
    disabled_at,
    created_at,
    updated_at
}

Table permissions {
    id,
    name,
    description,
    default_status
}
