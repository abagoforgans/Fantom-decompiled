contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct roleAdmin;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(roleAdmin[0][1][address(arg1)].field_0)
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
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

function symbol() payable {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][1][address(arg1)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function a() payable {
  stop
}

function _fallback() payable {
    revert
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not a minter'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Restricted to admins.'
    if not roleAdmin[roleAdmin[0].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[0][1][address(arg1)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = arg1
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(arg1)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, arg1, msg.sender);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function renounceAdmin() payable {
    if msg.sender != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6f416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[0][1][address(msg.sender)].field_0:
        require roleAdmin[0].field_0 - 1 < roleAdmin[0].field_0
        require roleAdmin[0][1][address(msg.sender)].field_0 - 1 < roleAdmin[0].field_0
        roleAdmin[0][roleAdmin[0][1][address(msg.sender)].field_0].field_0 = roleAdmin[0][roleAdmin[0].field_0].field_0
        roleAdmin[0][1][roleAdmin[0][roleAdmin[0].field_0].field_0].field_0 = roleAdmin[0][1][address(msg.sender)].field_0
        require roleAdmin[0].field_0
        roleAdmin[0][roleAdmin[0].field_0].field_0 = 0
        roleAdmin[0].field_0--
        roleAdmin[0][1][address(msg.sender)].field_0 = 0
        emit RoleRevoked(0, msg.sender, msg.sender);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6f416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
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

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x65416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0xc945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Restricted to admins.'
    if not roleAdmin[roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][1][address(arg1)].field_0:
        roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0++
        roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0].field_0 = arg1
        roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0].field_160 = 0
        roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][1][address(arg1)].field_0 = roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0
        emit RoleGranted(0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d, arg1, msg.sender);
    emit AddMinter(arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7345524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0xc945524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7445524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function revokeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Restricted to admins.'
    if not roleAdmin[roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x65416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][1][address(arg1)].field_0:
        require roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0 - 1 < roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0
        require roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][1][address(arg1)].field_0 - 1 < roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0
        roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][1][address(arg1)].field_0].field_0 = roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0].field_0
        roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][1][roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0].field_0].field_0 = roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][1][address(arg1)].field_0
        require roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0
        roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0].field_0 = 0
        roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d].field_0--
        roleAdmin[0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d][1][address(arg1)].field_0 = 0
        emit RoleRevoked(0x73f0887ba65ee2024ea881d91b74c2450ef19e1557f03bed3ea9f16b037cbe2d, arg1, msg.sender);
    emit RevokeMinter(arg1);
}



}
