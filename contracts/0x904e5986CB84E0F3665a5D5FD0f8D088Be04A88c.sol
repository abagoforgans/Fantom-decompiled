contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d


function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(roleAdmin[1][address(arg1)].field_0)
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][1][address(arg1)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function _fallback() payable {
    revert
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'Restricted to admins.'
    if not roleAdmin[uint256(roleAdmin.field_512)][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[1][address(arg1)].field_0:
        uint256(roleAdmin.field_0)++
        stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_0 = arg1
        stor[uint256(roleAdmin.field_0) + sha3(('name', 'roleAdmin', 0))].field_160 = 0
        roleAdmin[1][address(arg1)].field_0 = uint256(roleAdmin.field_0)
        emit RoleGranted(0, arg1, msg.sender);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x65416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function renounceAdmin() payable {
    if msg.sender != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x65416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[1][address(msg.sender)].field_0:
        require uint256(roleAdmin.field_0) - 1 < uint256(roleAdmin.field_0)
        require roleAdmin[1][address(msg.sender)].field_0 - 1 < uint256(roleAdmin.field_0)
        stor[roleAdmin[1][address(msg.sender)].field_0 + sha3(('name', 'roleAdmin', 0))].field_0 = stor[sha3(('name', 'roleAdmin', 0)) + uint256(roleAdmin.field_0)].field_0
        roleAdmin[1][stor[sha3(('name', 'roleAdmin', 0)) + uint256(roleAdmin.field_0)].field_0].field_0 = roleAdmin[1][address(msg.sender)].field_0
        require uint256(roleAdmin.field_0)
        stor[sha3(('name', 'roleAdmin', 0)) + uint256(roleAdmin.field_0)].field_0 = 0
        uint256(roleAdmin.field_0)--
        roleAdmin[1][address(msg.sender)].field_0 = 0
        emit RoleRevoked(0, msg.sender, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xc9416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'Restricted to admins.'
    if not roleAdmin[roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][1][address(arg1)].field_0:
        roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0++
        roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0].field_0 = arg1
        roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0].field_160 = 0
        roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][1][address(arg1)].field_0 = roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0
        emit RoleGranted(0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d, arg1, msg.sender);
    emit AddMinter(arg1);
}

function revokeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[1][address(msg.sender)].field_0:
        revert with 0, 'Restricted to admins.'
    if not roleAdmin[roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0xc9416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][1][address(arg1)].field_0:
        require roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0 - 1 < roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0
        require roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][1][address(arg1)].field_0 - 1 < roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0
        roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][1][address(arg1)].field_0].field_0 = roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0].field_0
        roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][1][roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0].field_0].field_0 = roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][1][address(arg1)].field_0
        require roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0
        roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0].field_0 = 0
        roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0--
        roleAdmin[0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][1][address(arg1)].field_0 = 0
        emit RoleRevoked(0x74f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d, arg1, msg.sender);
    emit RevokeMinter(arg1);
}



}
