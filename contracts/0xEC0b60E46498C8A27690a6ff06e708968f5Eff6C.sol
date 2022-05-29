contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6

const PAUSER_ROLE = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a


array of struct roleAdmin;
mapping of uint8 stor1;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
array of uint256 uri;
uint8 paused;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x74455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[207 len 21]
    return balanceOf[arg2][address(arg1)]
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[Mask(32, 224, arg1)])
}

function uri(uint256 arg1) payable {
    return uri[0 len uri.length]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function paused() payable {
    return bool(paused)
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x72456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor3[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x65455243313135353a2073657474696e6720617070726f76616c2073746174757320666f722073656c,
                    mem[205 len 23]
    stor3[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function pause() payable {
    if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x65455243313135355072657365744d696e7465725061757365723a206d75737420686176652070617573657220726f6c6520746f2070617573,
                    mem[221 len 7]
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not roleAdmin[0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x72455243313135355072657365744d696e7465725061757365723a206d75737420686176652070617573657220726f6c6520746f20756e70617573,
                    mem[223 len 5]
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
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

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
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
                    0x64416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
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

function burn(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 != msg.sender:
        if not stor3[address(arg1)][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x64455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                        mem[205 len 23]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x64455243313135353a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[199 len 29]
    if paused:
        revert with 0, 32, 44, 0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365, mem[368 len 20]
    if arg3 > balanceOf[arg2][address(arg1)]:
        revert with 0, 32, 36, 0x73455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63, mem[324 len 28], mem[380 len 4]
    balanceOf[arg2][address(arg1)] -= arg3
    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
}

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg1.length != arg2.length:
        revert with 0, 
                    32,
                    41,
                    0x66455243313135353a206163636f756e747320616e6420696473206c656e677468206d69736d617463,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 269 len 23]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 
                        32,
                        43,
                        0x74455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                        mem[(64 * arg1.length) + (32 * arg2.length) + 303 len 21]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + (32 * arg1.length) + 160], 2)
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = balanceOf[mem[(32 * idx) + (32 * arg1.length) + 160]][address(mem[(32 * idx) + 128])]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + (32 * arg2.length) + 192] = 32
    mem[(64 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 256 len floor32(arg1.length)] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + (32 * arg2.length) + 192
       len (161 * arg1.length) + 64
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, 
                    32,
                    37,
                    0x65455243313135353a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg5.length) + 233 len 27]
    if arg1 != msg.sender:
        if not stor3[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        41,
                        0x64455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                        mem[ceil32(arg5.length) + 237 len 23]
    mem[ceil32(arg5.length) + 128] = 1
    require 0 < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
    if paused:
        revert with 0, 
                    32,
                    44,
                    0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[ceil32(arg5.length) + 368 len 20]
    if arg4 > balanceOf[arg3][address(arg1)]:
        revert with 0, 
                    32,
                    42,
                    0x74455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                    mem[ceil32(arg5.length) + 330 len 22],
                    mem[ceil32(arg5.length) + 374 len 10]
    balanceOf[arg3][address(arg1)] -= arg4
    if arg4 + balanceOf[arg3][arg2] < balanceOf[arg3][arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[arg3][address(arg2)] = arg4 + balanceOf[arg3][arg2]
    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        Mask(96, 0, arg4)
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 32, 40, 0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
}

function mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(msg.sender)].field_0:
        revert with 0, 
                    32,
                    56,
                    0x73455243313135355072657365744d696e7465725061757365723a206d7573742068617665206d696e74657220726f6c6520746f206d696e,
                    mem[ceil32(arg4.length) + 252 len 8]
    if not arg1:
        revert with 0, 32, 33, 0x68455243313135353a206d696e7420746f20746865207a65726f20616464726573, mem[ceil32(arg4.length) + 229 len 31]
    mem[ceil32(arg4.length) + 128] = 1
    require 0 < Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
    if paused:
        revert with 0, 
                    32,
                    44,
                    0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[ceil32(arg4.length) + 368 len 20]
    if arg3 + balanceOf[arg2][address(arg1)] < balanceOf[arg2][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[arg2][address(arg1)] += arg3
    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
    if ext_code.size(arg1):
        mem[ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            require ext_code.size(arg1)
            call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, arg2, arg3, 160, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
            require ext_code.size(arg1)
            call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, arg2, arg3, 160, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 452 len floor32(arg4.length) + -ceil32(arg4.length) + 32]
        if not ext_call.success:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        Mask(96, 0, arg3)
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 32, 40, 0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg3)
}

function burnBatch(address arg1, uint256[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if arg1 == msg.sender:
        if not arg1:
            revert with 0, 
                        32,
                        35,
                        0x64455243313135353a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 263 len 29]
        if arg2.length != arg3.length:
            revert with 0, 
                        32,
                        40,
                        0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 268 len 24]
        mem[64] = (32 * arg2.length) + (32 * arg3.length) + 192
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
        if paused:
            revert with 0, 
                        32,
                        44,
                        0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 304 len 20]
        idx = 0
        while idx < arg2.length:
            require idx < mem[(32 * arg2.length) + 128]
            _89 = mem[(32 * idx) + (32 * arg2.length) + 160]
            _90 = mem[64]
            mem[64] = mem[64] + 96
            mem[_90] = 36
            mem[_90 + 32 len 36] = 0x73455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63
            require idx < mem[96]
            mem[32] = sha3(mem[(32 * idx) + 128], 2)
            if _89 <= balanceOf[mem[(32 * idx) + 128]][address(arg1)]:
                require idx < mem[96]
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + 128], 2)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= _89
                idx = idx + 1
                continue 
            _109 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 36
            idx = 0
            while idx < 36:
                mem[idx + _109 + 68] = mem[idx + _90 + 32]
                idx = idx + 32
                continue 
            mem[_109 + 100] = mem[_109 + 128 len 4]
            revert with memory
              from mem[64]
               len _109 + -mem[64] + 132
        _81 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _83 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _81 + 96] = mem[(32 * arg2.length) + 128]
        _134 = mem[(32 * arg2.length) + 128]
        mem[(32 * _83) + _81 + 128 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                           mem[mem[64] len (32 * _134) + (32 * _83) + _81 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           0,
    else:
        mem[0] = msg.sender
        mem[32] = sha3(address(arg1), 3)
        if not stor3[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        41,
                        0x64455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 269 len 23]
        if not arg1:
            revert with 0, 
                        32,
                        35,
                        0x64455243313135353a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 263 len 29]
        if arg2.length != arg3.length:
            revert with 0, 
                        32,
                        40,
                        0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 268 len 24]
        mem[64] = (32 * arg2.length) + (32 * arg3.length) + 192
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
        if paused:
            revert with 0, 
                        32,
                        44,
                        0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                        mem[(32 * arg2.length) + (32 * arg3.length) + 304 len 20]
        idx = 0
        while idx < arg2.length:
            require idx < mem[(32 * arg2.length) + 128]
            _92 = mem[(32 * idx) + (32 * arg2.length) + 160]
            _93 = mem[64]
            mem[64] = mem[64] + 96
            mem[_93] = 36
            mem[_93 + 32 len 36] = 0x73455243313135353a206275726e20616d6f756e7420657863656564732062616c616e63
            require idx < mem[96]
            mem[32] = sha3(mem[(32 * idx) + 128], 2)
            if _92 <= balanceOf[mem[(32 * idx) + 128]][address(arg1)]:
                require idx < mem[96]
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + 128], 2)
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= _92
                idx = idx + 1
                continue 
            _114 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 36
            idx = 0
            while idx < 36:
                mem[idx + _114 + 68] = mem[idx + _93 + 32]
                idx = idx + 32
                continue 
            mem[_114 + 100] = mem[_114 + 128 len 4]
            revert with memory
              from mem[64]
               len _114 + -mem[64] + 132
        _85 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _87 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _85 + 96] = mem[(32 * arg2.length) + 128]
        _138 = mem[(32 * arg2.length) + 128]
        mem[(32 * _87) + _85 + 128 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                           mem[mem[64] len (32 * _138) + (32 * _87) + _85 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           0,
}

function mintBatch(address arg1, uint256[] arg2, uint256[] arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 192
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = arg4.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len arg4.length] = arg4[all]
    mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 192] = 0
    mem[0] = msg.sender
    mem[32] = sha3(0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6, 0) + 1
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][1][address(msg.sender)].field_0:
        revert with 0, 
                    32,
                    56,
                    0x73455243313135355072657365744d696e7465725061757365723a206d7573742068617665206d696e74657220726f6c6520746f206d696e,
                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 316 len 8]
    if not arg1:
        revert with 0, 
                    32,
                    33,
                    0x68455243313135353a206d696e7420746f20746865207a65726f20616464726573,
                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 293 len 31]
    if arg2.length != arg3.length:
        revert with 0, 
                    32,
                    40,
                    0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 300 len 24]
    if paused:
        revert with 0, 
                    32,
                    44,
                    0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 304 len 20]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg3.length
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] + mem[(32 * idx) + (32 * arg2.length) + 160] < mem[(32 * idx) + (32 * arg2.length) + 160]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < arg2.length
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + 128], 2)
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + (32 * arg2.length) + 160]
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 192] = 64
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 256] = arg2.length
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 288 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 224] = (32 * arg2.length) + 96
    mem[(64 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 288] = arg3.length
    s = 0
    while arg2.length < 32 * arg3.length:
        mem[(67 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 320] = mem[(34 * arg2.length) + 160]
        s = arg2.length + 32
        continue 
    emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                       Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                       mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len ceil32(arg4.length) + -arg4.length + 32],
                       arg2.length,
                       call.data[arg2 + 36 len floor32(arg2.length)],
                       mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 288 len (32 * arg2.length) + (32 * arg3.length) + -floor32(arg2.length) + 32],
                       msg.sender,
                       0,
                       arg1,
    if not ext_code.size(arg1):
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 192] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 196] = msg.sender
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 228] = 0
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 260] = 160
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 356] = arg2.length
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 388 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 292] = (32 * arg2.length) + 192
    mem[(64 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 388] = arg3.length
    mem[(64 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 420 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 324] = (32 * arg3.length) + (32 * arg2.length) + 224
    mem[(64 * arg3.length) + (64 * arg2.length) + ceil32(arg4.length) + 420] = arg4.length
    mem[(64 * arg3.length) + (64 * arg2.length) + ceil32(arg4.length) + 452 len ceil32(arg4.length)] = arg4[all], mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        require ext_code.size(arg1)
        call arg1 with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg3.length) + (32 * arg2.length) + 224, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 388 len (32 * arg2.length) + (32 * arg3.length) + arg4.length + -floor32(arg2.length) + 64]
        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 192] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            40,
                            0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                            Mask(192, 0, (32 * arg2.length) + 192)
        if return_data.size < 68:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        Mask(96, 0, (32 * arg2.length) + 192)
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        Mask(96, 0, (32 * arg2.length) + 192)
        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 192 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if 0, ext_call.return_data[4 len 28] > test266151307() or 0, ext_call.return_data[4 len 28] + 36 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        Mask(96, 0, (32 * arg2.length) + 192)
        if mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192] > test266151307():
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        Mask(96, 0, (32 * arg2.length) + 192)
        if 0, ext_call.return_data[4 len 28] + mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192] + 32 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        Mask(96, 0, (32 * arg2.length) + 192)
        mem[64] = (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192]) + 224
        if not (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _532 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192]
        _534 = mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192]
        if not mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192]:
            if not mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192] % 32:
                revert with 0, 
                            32,
                            mem[mem[64] + 36 len mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192] + 32]
            mem[floor32(mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192]) + mem[64] + 68] = mem[floor32(mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192]) + mem[64] + -(mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192] % 32) + 100 len mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192] % 32]
            revert with memory
              from mem[64]
               len floor32(_534) + _532 + -mem[64] + 100
        mem[mem[64] + 68] = mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 224]
        mem[mem[64] + 100 len floor32(_534 - 1)] = mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 256 len floor32(_534 - 1)]
        if not _534 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _534 + 32]
        mem[floor32(_534) + mem[64] + 68] = mem[floor32(_534) + mem[64] + -(_534 % 32) + 100 len _534 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_534) + 64]
    mem[floor32(arg4.length) + (64 * arg3.length) + (64 * arg2.length) + ceil32(arg4.length) + 452] = mem[floor32(arg4.length) + (64 * arg3.length) + (64 * arg2.length) + ceil32(arg4.length) + -(arg4.length % 32) + 484 len arg4.length % 32]
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg3.length) + (32 * arg2.length) + 224, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + floor32(arg2.length) + 388 len (32 * arg2.length) + (32 * arg3.length) + floor32(arg4.length) + -floor32(arg2.length) + 96]
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 192] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 
                        32,
                        40,
                        0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                        Mask(192, 0, (32 * arg2.length) + 192)
    if return_data.size < 68:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    Mask(96, 0, (32 * arg2.length) + 192)
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    Mask(96, 0, (32 * arg2.length) + 192)
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 192 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if 0, ext_call.return_data[4 len 28] > test266151307() or 0, ext_call.return_data[4 len 28] + 36 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    Mask(96, 0, (32 * arg2.length) + 192)
    if mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192] > test266151307():
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    Mask(96, 0, (32 * arg2.length) + 192)
    if 0, ext_call.return_data[4 len 28] + mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192] + 32 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    Mask(96, 0, (32 * arg2.length) + 192)
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + ceil32(mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192]) + 224
    if not (32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    _544 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192]
    _546 = mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192]
    if not mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192]:
        if not mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192] % 32:
            revert with 0, 
                        32,
                        mem[mem[64] + 36 len mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192] + 32]
        mem[floor32(mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192]) + mem[64] + 68] = mem[floor32(mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192]) + mem[64] + -(mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192] % 32) + 100 len mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 192] % 32]
        revert with memory
          from mem[64]
           len floor32(_546) + _544 + -mem[64] + 100
    mem[mem[64] + 68] = mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 224]
    mem[mem[64] + 100 len floor32(_546 - 1)] = mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 0, ext_call.return_data[4 len 28] + 256 len floor32(_546 - 1)]
    if not _546 % 32:
        revert with 0, 32, mem[mem[64] + 36 len _546 + 32]
    mem[floor32(_546) + mem[64] + 68] = mem[floor32(_546) + mem[64] + -(_546 % 32) + 100 len _546 % 32]
    revert with 0, 32, mem[mem[64] + 36 len floor32(_546) + 64]
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = arg5.length
    mem[(32 * arg3.length) + (32 * arg4.length) + 192 len arg5.length] = arg5[all]
    mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 192] = 0
    if arg3.length != arg4.length:
        revert with 0, 
                    32,
                    40,
                    0x68455243313135353a2069647320616e6420616d6f756e7473206c656e677468206d69736d617463,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 300 len 24]
    if not arg2:
        revert with 0, 
                    32,
                    37,
                    0x65455243313135353a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 297 len 27]
    if arg1 == msg.sender:
        if paused:
            revert with 0, 
                        32,
                        44,
                        0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                        mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 304 len 20]
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            _238 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _245 = mem[(32 * idx) + (32 * arg3.length) + 160]
            _246 = mem[64]
            mem[64] = mem[64] + 96
            mem[_246] = 42
            mem[_246 + 32 len 42] = 0x74455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
            mem[32] = sha3(_238, 2)
            if _245 <= balanceOf[_238][address(arg1)]:
                balanceOf[_238][address(arg1)] -= _245
                if _245 + balanceOf[_238][arg2] < balanceOf[_238][arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg2
                mem[32] = sha3(_238, 2)
                balanceOf[_238][address(arg2)] = _245 + balanceOf[_238][arg2]
                idx = idx + 1
                continue 
            _258 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 42
            idx = 0
            while idx < 42:
                mem[idx + _258 + 68] = mem[idx + _246 + 32]
                idx = idx + 32
                continue 
            mem[_258 + 100] = mem[_258 + 122 len 10]
            revert with memory
              from mem[64]
               len _258 + -mem[64] + 132
        _230 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[96]
        _232 = mem[96]
        mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        mem[(32 * mem[96]) + _230 + 96] = mem[(32 * arg3.length) + 128]
        _439 = mem[(32 * arg3.length) + 128]
        mem[(32 * _232) + _230 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                           mem[mem[64] len (32 * _439) + (32 * _232) + _230 + -mem[64] + 128],
                           msg.sender,
                           arg1,
                           arg2,
        if not ext_code.size(arg2):
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = mem[96]
        mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 100] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
        _761 = mem[(32 * arg3.length) + 128]
        mem[(32 * mem[96]) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
        mem[mem[64] + 132] = (32 * _761) + (32 * mem[96]) + 224
        mem[(32 * _761) + (32 * mem[96]) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        _905 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
        mem[(32 * _761) + (32 * mem[96]) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
        if not _905 % 32:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=mem[96], data=mem[mem[64] + 196 len _905 + (32 * _761) + (32 * mem[96]) + 64]), (32 * mem[96]) + 192, (32 * _761) + (32 * mem[96]) + 224
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 
                                32,
                                40,
                                0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                                mem[mem[64] + 108 len 24]
            if return_data.size < 68:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            _1070 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
            if not _1070 + ext_call.return_data[0]:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            mem[mem[64] + 120 len 12]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_1070 + ext_call.return_data[0]]
            _1096 = mem[_1070 + ext_call.return_data[0]]
            if not mem[_1070 + ext_call.return_data[0]]:
                if not mem[_1070 + ext_call.return_data[0]] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_1070 + ext_call.return_data[0]] + 32]
                mem[floor32(mem[_1070 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1070 + ext_call.return_data[0]]) + mem[64] + -(mem[_1070 + ext_call.return_data[0]] % 32) + 100 len mem[_1070 + ext_call.return_data[0]] % 32]
                revert with 0, 32, mem[mem[64] + 36], 160, mem[mem[64] + 100 len floor32(_1096)]
            mem[mem[64] + 68] = mem[_1070 + ext_call.return_data[0] + 32]
            mem[mem[64] + 100 len floor32(_1096 - 1)] = mem[_1070 + ext_call.return_data[0] + 64 len floor32(_1096 - 1)]
            if not _1096 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _1096 + 32]
            mem[floor32(_1096) + mem[64] + 68] = mem[floor32(_1096) + mem[64] + -(_1096 % 32) + 100 len _1096 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_1096) + 64]
        mem[floor32(_905) + (32 * _761) + (32 * mem[96]) + mem[64] + 260] = mem[floor32(_905) + (32 * _761) + (32 * mem[96]) + mem[64] + -(_905 % 32) + 292 len _905 % 32]
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=mem[96], data=mem[mem[64] + 196 len floor32(_905) + (32 * _761) + (32 * mem[96]) + 96]), (32 * mem[96]) + 192, (32 * _761) + (32 * mem[96]) + 224
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            40,
                            0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                            mem[mem[64] + 108 len 24]
        if return_data.size < 68:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _1077 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _1077 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_1077 + ext_call.return_data[0]]
        _1115 = mem[_1077 + ext_call.return_data[0]]
        if not mem[_1077 + ext_call.return_data[0]]:
            if not mem[_1077 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_1077 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_1077 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1077 + ext_call.return_data[0]]) + mem[64] + -(mem[_1077 + ext_call.return_data[0]] % 32) + 100 len mem[_1077 + ext_call.return_data[0]] % 32]
            revert with 0, 32, mem[mem[64] + 36], 160, mem[mem[64] + 100 len floor32(_1115)]
        mem[mem[64] + 68] = mem[_1077 + ext_call.return_data[0] + 32]
        mem[mem[64] + 100 len floor32(_1115 - 1)] = mem[_1077 + ext_call.return_data[0] + 64 len floor32(_1115 - 1)]
        if not _1115 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _1115 + 32]
        mem[floor32(_1115) + mem[64] + 68] = mem[floor32(_1115) + mem[64] + -(_1115 % 32) + 100 len _1115 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_1115) + 64]
    mem[0] = msg.sender
    mem[32] = sha3(address(arg1), 3)
    if not stor3[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    50,
                    0x73455243313135353a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 310 len 14]
    if paused:
        revert with 0, 
                    32,
                    44,
                    0x65455243313135355061757361626c653a20746f6b656e207472616e73666572207768696c65207061757365,
                    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 304 len 20]
    idx = 0
    while idx < arg3.length:
        require idx < mem[96]
        _240 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg3.length) + 128]
        _252 = mem[(32 * idx) + (32 * arg3.length) + 160]
        _253 = mem[64]
        mem[64] = mem[64] + 96
        mem[_253] = 42
        mem[_253 + 32 len 42] = 0x74455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
        mem[32] = sha3(_240, 2)
        if _252 <= balanceOf[_240][address(arg1)]:
            balanceOf[_240][address(arg1)] -= _252
            if _252 + balanceOf[_240][arg2] < balanceOf[_240][arg2]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = sha3(_240, 2)
            balanceOf[_240][address(arg2)] = _252 + balanceOf[_240][arg2]
            idx = idx + 1
            continue 
        _263 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 42
        idx = 0
        while idx < 42:
            mem[idx + _263 + 68] = mem[idx + _253 + 32]
            idx = idx + 32
            continue 
        mem[_263 + 100] = mem[_263 + 122 len 10]
        revert with memory
          from mem[64]
           len _263 + -mem[64] + 132
    _234 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[96]
    _236 = mem[96]
    mem[mem[64] + 96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + _234 + 96] = mem[(32 * arg3.length) + 128]
    _443 = mem[(32 * arg3.length) + 128]
    mem[(32 * _236) + _234 + 128 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                       mem[mem[64] len (32 * _443) + (32 * _236) + _234 + -mem[64] + 128],
                       msg.sender,
                       arg1,
                       arg2,
    if not ext_code.size(arg2):
    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = mem[96]
    mem[mem[64] + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 100] = (32 * mem[96]) + 192
    mem[(32 * mem[96]) + mem[64] + 196] = mem[(32 * arg3.length) + 128]
    _764 = mem[(32 * arg3.length) + 128]
    mem[(32 * mem[96]) + mem[64] + 228 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    mem[mem[64] + 132] = (32 * _764) + (32 * mem[96]) + 224
    mem[(32 * _764) + (32 * mem[96]) + mem[64] + 228] = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    _908 = mem[(32 * arg3.length) + (32 * arg4.length) + 160]
    mem[(32 * _764) + (32 * mem[96]) + mem[64] + 260 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])] = mem[(32 * arg3.length) + (32 * arg4.length) + 192 len ceil32(mem[(32 * arg3.length) + (32 * arg4.length) + 160])]
    if not _908 % 32:
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=mem[96], data=mem[mem[64] + 196 len _908 + (32 * _764) + (32 * mem[96]) + 64]), (32 * mem[96]) + 192, (32 * _764) + (32 * mem[96]) + 224
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 
                            32,
                            40,
                            0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                            mem[mem[64] + 108 len 24]
        if return_data.size < 68:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        _1072 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
        if not _1072 + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        52,
                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                        mem[mem[64] + 120 len 12]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_1072 + ext_call.return_data[0]]
        _1103 = mem[_1072 + ext_call.return_data[0]]
        if not mem[_1072 + ext_call.return_data[0]]:
            if not mem[_1072 + ext_call.return_data[0]] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_1072 + ext_call.return_data[0]] + 32]
            mem[floor32(mem[_1072 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1072 + ext_call.return_data[0]]) + mem[64] + -(mem[_1072 + ext_call.return_data[0]] % 32) + 100 len mem[_1072 + ext_call.return_data[0]] % 32]
            revert with 0, 32, mem[mem[64] + 36], 160, mem[mem[64] + 100 len floor32(_1103)]
        mem[mem[64] + 68] = mem[_1072 + ext_call.return_data[0] + 32]
        mem[mem[64] + 100 len floor32(_1103 - 1)] = mem[_1072 + ext_call.return_data[0] + 64 len floor32(_1103 - 1)]
        if not _1103 % 32:
            revert with 0, 32, mem[mem[64] + 36 len _1103 + 32]
        mem[floor32(_1103) + mem[64] + 68] = mem[floor32(_1103) + mem[64] + -(_1103 % 32) + 100 len _1103 % 32]
        revert with 0, 32, mem[mem[64] + 36 len floor32(_1103) + 64]
    mem[floor32(_908) + (32 * _764) + (32 * mem[96]) + mem[64] + 260] = mem[floor32(_908) + (32 * _764) + (32 * mem[96]) + mem[64] + -(_908 % 32) + 292 len _908 % 32]
    require ext_code.size(arg2)
    call arg2.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), Array(len=mem[96], data=mem[mem[64] + 196 len floor32(_908) + (32 * _764) + (32 * mem[96]) + 96]), (32 * mem[96]) + 192, (32 * _764) + (32 * mem[96]) + 224
    mem[mem[64]] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 
                        32,
                        40,
                        0x73455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e,
                        mem[mem[64] + 108 len 24]
    if return_data.size < 68:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    _1082 = mem[64]
    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    mem[64] = mem[64] + ext_call.return_data[0] + ceil32(mem[mem[64] + ext_call.return_data[0]]) + 32
    if not _1082 + ext_call.return_data[0]:
        revert with 0, 
                    32,
                    52,
                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                    mem[mem[64] + 120 len 12]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[_1082 + ext_call.return_data[0]]
    _1125 = mem[_1082 + ext_call.return_data[0]]
    if not mem[_1082 + ext_call.return_data[0]]:
        if not mem[_1082 + ext_call.return_data[0]] % 32:
            revert with 0, 32, mem[mem[64] + 36 len mem[_1082 + ext_call.return_data[0]] + 32]
        mem[floor32(mem[_1082 + ext_call.return_data[0]]) + mem[64] + 68] = mem[floor32(mem[_1082 + ext_call.return_data[0]]) + mem[64] + -(mem[_1082 + ext_call.return_data[0]] % 32) + 100 len mem[_1082 + ext_call.return_data[0]] % 32]
        revert with 0, 32, mem[mem[64] + 36], 160, mem[mem[64] + 100 len floor32(_1125)]
    mem[mem[64] + 68] = mem[_1082 + ext_call.return_data[0] + 32]
    mem[mem[64] + 100 len floor32(_1125 - 1)] = mem[_1082 + ext_call.return_data[0] + 64 len floor32(_1125 - 1)]
    if not _1125 % 32:
        revert with 0, 32, mem[mem[64] + 36 len _1125 + 32]
    mem[floor32(_1125) + mem[64] + 68] = mem[floor32(_1125) + mem[64] + -(_1125 % 32) + 100 len _1125 % 32]
    revert with 0, 32, mem[mem[64] + 36 len floor32(_1125) + 64]
}



}
